import subprocess
import os
import shutil
import sys
from collections import namedtuple

def set_path():
    global SCRIPTS_DIR
    global LIBRARIES_DIR

    if os.path.isdir("uck"):
        assert os.path.isfile("uck/libraries/gui.sh")
        SCRIPTS_DIR= "uck"
        LIBRARIES_DIR= SCRIPTS_DIR+"/libraries"
    elif os.path.isdir("/usr/lib/uck"):
        SCRIPTS_DIR= "/usr/bin"
        LIBRARIES_DIR= "/usr/lib/uck"
    elif os.path.isdir("/usr/local/lib/uck"):
        SCRIPTS_DIR= "/usr/local/bin"
        LIBRARIES_DIR= "/usr/local/lib/uck"
    else:
        raise Exception("UCK doesn't seem to be installed")


def shell(s, inp=None, assert_returncode=False):
    shellreturn= namedtuple("shellreturn", "stdout stderr returncode")
    p= subprocess.Popen(s, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)
    if inp:
        p.stdin.write(inp)
    p.stdin.close()
    o,e,r=  p.stdout.read(), p.stderr.read(), p.wait()
    if assert_returncode and r!=0:
        raise Exception("return code != 0 in command: \n\n"+s+"\n\nstdout:\n"+o+"\n\nstderr:\n"+e+"\n\nreturncode:\n"+str(r))
    return shellreturn(o,e,r)

def available_language_packs():
    return shell('''apt-cache pkgnames language-support | egrep '^language-support-.{2,7}$' | cut -b 18- | sort''').split("\n")[:-1]

def available_boot_languages():
    return open(LIBRARIES_DIR+"/langlist").read().split("\n")[:-1]


def install_language_packs(languages, desktops=["kde", "gnome"]):
    all_packs= shell("""apt-cache search "^language-" | sed 's/[ 	].*//'""").stdout.split("\n")
    to_install= []
    for language in languages:
        language_packs= filter( lambda x: language in x, all_packs)
        to_install.extend( filter( lambda x: not "gnome" in x and not "kde" in x, language_packs ) )
        for desktop in desktops:
            to_install.extend( filter( lambda x: desktop in x, language_packs ))
    install_packages( to_install )
    installed_packs= shell("dpkg-query --show | cut -f1 | grep -E '^(language-pack|language-support)'").stdout.split("\n")
    hasnt_wanted_language= lambda x: not any([l in x for l in languages])
    extraneous_packs= filter(hasnt_wanted_language, installed_packs)
    remove_packages( extraneous_packs )

def install_packages(packages):
    command=  "apt-get install --assume-yes --force-yes {0}".format(" ".join(packages))
    shell(command, assert_returncode=True)

def remove_packages(packages):
    command= "apt-get --purge remove --assume-yes --force-yes {0}".format(" ".join(packages))
    shell(command, assert_returncode=True)

def check_iso(filename):
     nl= shell("isoinfo -p -i \"$ISO_IMAGE\" | grep -i CASPER | wc -l").stdout
     if int(nl)==0:
         raise Exception("Cannot customize this ISO - unknown iso structure")

def xauth_cookie():
    return shell("xauth extract - $DISPLAY", assert_returncode=True).stdout

def write_var(var, filename):
    if isinstance(var, basestring):
        pass
    elif type(var)==bool:
        var= "yes" if var else "no"
    elif type(var)==list or type(var)==tuple:
        assert all(map(lambda x: type(x)==str, var))
        var= " ".join(var)
    elif var is None:
        var= ""
    else:
        raise Exception("Unrecognized variable type")
    open(filename, "w").write(var)

def run_customization(remaster_dir, source_iso, remove_win32_files=False, iso_description="Customized live CD", run_graphical_customization=False, language_packs=[], livecd_locales=[], livecd_locale=None, desktop_types=["gnome","kde"], print_output=True):
    scripts_dir= SCRIPTS_DIR
    libraries_dir= LIBRARIES_DIR
    build_dir= remaster_dir+"/customization-scripts"

    assert remaster_dir[-1]!="/"
    if len(iso_description)>32:
        raise Exception("ISO description too long (max 32 characters)")
    if not os.path.exists(remaster_dir):
        os.mkdir(remaster_dir)
    else:
        if os.path.exists(build_dir):
            print "removing old build dir..."
            shutil.rmtree(build_dir)
    print "copying scripts, writing var..."
    shutil.copytree(libraries_dir+"/customization-profiles/localized_cd/", build_dir )

    write_var(language_packs, build_dir+"/language_packs")
    write_var(livecd_locales, build_dir+"/livecd_locales")
    write_var(livecd_locale,  build_dir+"/livecd_locale")
    write_var(desktop_types,  build_dir+"/desktop_types")

    write_var(run_graphical_customization, build_dir+"/run_manual_customizations")
    if run_graphical_customization:
        write_var(xauth_cookie(), build_dir+"/Xcookie")

    write_var(iso_description,    build_dir+"/iso_description")
    write_var(remove_win32_files, build_dir+"/remove_win32_files")
    write_var(True,               build_dir+"/clean_desktop_manifest")
    write_var("export DISPLAY=:0",build_dir+"/environment")

    print "starting UCK build..."
    command= '''export UCK_USERNAME=$USER ; {scripts_dir}/uck-remaster "{source_iso}" "{build_dir}" "{remaster_dir}"'''.format( **locals() )
    if print_output:
        process= subprocess.Popen(command, shell=True, stdout=sys.stdout, stderr=sys.stderr)
    else:
        process= subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return process
    #if tmp.returncode!=0:
    #    raise Exception("Build failure\n"+tmp.stdout+"\n\n"+tmp.stderr)




set_path()
