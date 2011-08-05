import subprocess
import os
from collections import namedtuple

def set_path():
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

def xauth_cookie():

    return shell("xauth extract - $DISPLAY")


def run_customization(build_dir, language_packs, livecd_locale, livecd_locales, remove_win32_files="no", iso_description="Customized live CD"):
    pass
    #TODO


set_path()
