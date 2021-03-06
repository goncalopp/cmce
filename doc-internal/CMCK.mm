<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1311179714015" ID="ID_1497177686" MODIFIED="1311344460867" STYLE="bubble" TEXT="CMCK">
<node CREATED="1311343828597" ID="ID_422782181" MODIFIED="1311344460868" POSITION="right" TEXT="planeamento">
<node CREATED="1311345495952" ID="ID_939556287" MODIFIED="1311345519334" TEXT="come&#xe7;o a 20/07/2011"/>
<node CREATED="1311343850620" ID="ID_595729498" MODIFIED="1311344460868" TEXT="Week 1">
<node CREATED="1311343850622" ID="ID_12231856" MODIFIED="1311344460869" TEXT="Preparations for 22rd July&apos;s presentation&#xa;"/>
<node CREATED="1311343904554" ID="ID_448530495" MODIFIED="1311344460871" TEXT="Research the state of art in similar projects"/>
</node>
<node CREATED="1311343850629" ID="ID_1626686214" MODIFIED="1311344460872" TEXT="Week 2">
<node CREATED="1311343850629" ID="ID_813287495" MODIFIED="1311344460872" TEXT="Study UCK design, conventions"/>
<node CREATED="1311343928785" ID="ID_415562271" MODIFIED="1311344460873" TEXT="Contact UCK team, assess their interest in the project"/>
<node CREATED="1311343918626" ID="ID_1121819757" MODIFIED="1311344460873" TEXT="Create a working and streamlined environment for building customized images."/>
</node>
<node CREATED="1311343850639" ID="ID_1215782330" MODIFIED="1311344460873" TEXT="Week 3">
<node CREATED="1311343877211" ID="ID_1957188712" MODIFIED="1311344460874" TEXT="Study existing GUI"/>
<node CREATED="1311343954650" ID="ID_242522073" MODIFIED="1311344460874" TEXT="Possibly change it&apos;s look and features, or create a new one altogether."/>
</node>
<node CREATED="1311343850641" ID="ID_1808017250" MODIFIED="1311344460875" TEXT="Week 4">
<node CREATED="1311343850643" ID="ID_1585167514" MODIFIED="1311344460875" TEXT="Add modules for customization options"/>
<node CREATED="1311343971257" ID="ID_475128661" MODIFIED="1311344460876" TEXT="Make X run in chroot, if viable."/>
</node>
<node CREATED="1311343850645" ID="ID_351568690" MODIFIED="1311344460876" TEXT="Week 5">
<node CREATED="1311343850646" ID="ID_506169744" MODIFIED="1311344460877" TEXT="GUI and modules features and usability tests&#xa;"/>
<node CREATED="1311343985041" ID="ID_338947823" MODIFIED="1311344460877" TEXT="Study and design Web interface / chroot communication."/>
</node>
<node CREATED="1311343850657" ID="ID_1893391972" MODIFIED="1311344460878" TEXT="Week 6 -7">
<node CREATED="1311343850659" ID="ID_1619508186" MODIFIED="1311344460878" TEXT="Design mockup web interface"/>
<node CREATED="1311343998609" ID="ID_322669275" MODIFIED="1311344460879" TEXT="Integrate Web interface and chroot backend."/>
</node>
<node CREATED="1311343850660" ID="ID_406809262" MODIFIED="1311344460879" TEXT="Week 8">
<node CREATED="1311343850662" ID="ID_129637295" MODIFIED="1311344460880" TEXT="Testing, presentation."/>
</node>
</node>
<node CREATED="1311179731447" FOLDED="true" ID="ID_1990489968" MODIFIED="1312559989834" POSITION="right" STYLE="bubble" TEXT="projectos associados">
<node CREATED="1311179752099" ID="ID_311768029" MODIFIED="1311344460880" TEXT="UCK - ubuntu customization toolkit"/>
<node CREATED="1311179761739" ID="ID_896347072" MODIFIED="1311344460880" TEXT="Plymouth"/>
<node CREATED="1311179772735" ID="ID_1007519038" MODIFIED="1311344460880" TEXT="SquashFS"/>
<node CREATED="1311179783317" ID="ID_774502489" MODIFIED="1311344460881" TEXT="UnionFS"/>
</node>
<node CREATED="1311348912478" FOLDED="true" ID="ID_1394104727" MODIFIED="1315581769685" POSITION="right" TEXT="UCK">
<node CREATED="1311348918013" ID="ID_1367742213" MODIFIED="1311348920264" TEXT="problemas">
<node CREATED="1311348928936" FOLDED="true" ID="ID_1280246850" MODIFIED="1311955975994" TEXT="hardcode gfxboot-ubuntu-theme">
<node CREATED="1311348939544" ID="ID_646927580" MODIFIED="1311349015143" TEXT="libraries/customization-profiles/localized_cd/customize_iso : 82"/>
<node CREATED="1311353642951" ID="ID_1003434988" MODIFIED="1311353643880" TEXT="echo `wget -q -O - http://ftp.caixamagica.pt/caixamagica/pool/main/g/gfxboot-theme-ubuntu | grep &quot;.tar.gz&quot; | cut -d &apos;&quot;&apos; -f8`"/>
</node>
</node>
<node CREATED="1312559642010" ID="ID_142894880" MODIFIED="1312559644202" TEXT="uck-gui">
<node CREATED="1312559647489" ID="ID_1407431245" MODIFIED="1312559683187" TEXT="faz perguntas ao utilizador"/>
<node CREATED="1312559683925" ID="ID_428784381" MODIFIED="1312559698198" TEXT="guarda respostas em shell vars e ficheiros"/>
<node CREATED="1312559698650" ID="ID_1397664087" MODIFIED="1312559957524" TEXT="copia ficheiros em libraries/customization.profiles/localized_cd/*"/>
<node CREATED="1312559833697" ID="ID_1294902788" MODIFIED="1312559854797" TEXT="executa">
<node CREATED="1312559855956" ID="ID_1139371858" MODIFIED="1312559860861" TEXT="uck-remaster">
<node CREATED="1312559861718" ID="ID_279924940" MODIFIED="1312559882316" TEXT="extrai iso"/>
<node CREATED="1312559882706" ID="ID_1961683085" MODIFIED="1312559921504" TEXT="extrai squashfs (cd root filesystem)"/>
<node CREATED="1312559887973" ID="ID_56922359" MODIFIED="1312559957524" TEXT="cria home temporaria e executa scripts de customiza&#xe7;&#xe3;o">
<arrowlink DESTINATION="ID_1397664087" ENDARROW="Default" ENDINCLINATION="162;0;" ID="Arrow_ID_1005221904" STARTARROW="None" STARTINCLINATION="162;0;"/>
</node>
<node CREATED="1312559963474" ID="ID_1286975209" MODIFIED="1312559970340" TEXT="faz pack de tudo"/>
</node>
</node>
</node>
<node CREATED="1312561206157" FOLDED="true" ID="ID_906990680" MODIFIED="1312561765773" TEXT="manual scripts">
<node CREATED="1312561213127" ID="ID_1416733794" MODIFIED="1312561213127" TEXT="uck-remaster-unpack-iso"/>
<node CREATED="1312561213128" ID="ID_439469912" MODIFIED="1312561213128" TEXT="uck-remaster-unpack-rootfs"/>
<node CREATED="1312561213129" ID="ID_895885445" MODIFIED="1312561213129" TEXT="uck-remaster-unpack-initrd"/>
<node CREATED="1312561213131" ID="ID_1751666617" MODIFIED="1312561213131" TEXT="uck-remaster-chroot-rootfs"/>
<node CREATED="1312561213132" ID="ID_1904911762" MODIFIED="1312561213132" TEXT="uck-remaster-prepare-alternate"/>
<node CREATED="1312561213134" ID="ID_1292468470" MODIFIED="1312561213134" TEXT="uck-remaster-finalize-alternate"/>
<node CREATED="1312561213141" ID="ID_237393728" MODIFIED="1312561213141" TEXT="uck-remaster-remove-win32-files"/>
<node CREATED="1312561213142" ID="ID_1792926333" MODIFIED="1312561213142" TEXT="uck-remaster-pack-initrd"/>
<node CREATED="1312561213143" ID="ID_122909932" MODIFIED="1312561213143" TEXT="uck-remaster-pack-rootfs"/>
<node CREATED="1312561213144" ID="ID_969302959" MODIFIED="1312561213144" TEXT="uck-remaster-pack-iso"/>
<node CREATED="1312561213145" ID="ID_1510033271" MODIFIED="1312561213145" TEXT="uck-remaster-clean"/>
<node CREATED="1312561213146" ID="ID_1107686331" MODIFIED="1312561213146" TEXT="uck-remaster-clean-all"/>
</node>
<node CREATED="1312561327082" FOLDED="true" ID="ID_1983809539" MODIFIED="1315581762809" TEXT="profiles">
<node CREATED="1312561386002" ID="ID_1095826070" MODIFIED="1312561388670" TEXT="files">
<node CREATED="1312561505246" ID="ID_1745205367" MODIFIED="1312561530691" TEXT="customize">
<node CREATED="1312561531434" ID="ID_1350012944" MODIFIED="1312561540225" TEXT="script for customization of root filesystem"/>
</node>
<node CREATED="1312561505247" ID="ID_504015541" MODIFIED="1312561550886" TEXT="customize_initrd">
<node CREATED="1312561552396" ID="ID_920162578" MODIFIED="1312561557454" TEXT="script for customization of initrd"/>
</node>
<node CREATED="1312561505249" ID="ID_176999841" MODIFIED="1312561564152" TEXT="customize_iso">
<node CREATED="1312561565047" ID="ID_184775889" MODIFIED="1312561565537" TEXT="script for customization of ISO image."/>
</node>
<node CREATED="1312561505250" ID="ID_1804917894" MODIFIED="1312561577447" TEXT="rootfs.sort">
<node CREATED="1312561577897" ID="ID_209327417" MODIFIED="1312561606509" TEXT="sort file used for sorting files in SquashFS.&#xa;See &quot;man mksquashfs&quot; option -sort."/>
</node>
<node CREATED="1312561505252" ID="ID_1741889167" MODIFIED="1312561612308" TEXT="iso_description">
<node CREATED="1312561614069" ID="ID_1276026014" MODIFIED="1312561614775" TEXT="Title of ISO image."/>
</node>
<node CREATED="1312561505253" ID="ID_533865514" MODIFIED="1312561636912" TEXT="run_manual_customizations ">
<node CREATED="1312561636914" ID="ID_843126202" MODIFIED="1312561667334" TEXT="Tells the system that you want to do advanced customizations within the rootfs. &#xa;This will stop the remastering process at a certain point and raise a menu, you&apos;ll be able to choose if you want to open a terminal or run a package manager, all within the rootfs."/>
</node>
<node CREATED="1312561505311" ID="ID_817431111" MODIFIED="1312561677488" TEXT="mkisofs_extra_options">
<node CREATED="1312561677490" ID="ID_910767252" MODIFIED="1312561677492" TEXT="Extra options passed to mkisofs command. Note that these options cannot contain strings with quotes (&quot;) as they are passed to mkisofs commandline."/>
</node>
<node CREATED="1312561505316" ID="ID_909743447" MODIFIED="1312561693411" TEXT="keep_initrd_extraction">
<node CREATED="1312561693413" ID="ID_659495855" MODIFIED="1312561693415" TEXT="If this file is present the extracted initrd won&apos;t be deleted after processing."/>
</node>
<node CREATED="1312561505317" ID="ID_1595005384" MODIFIED="1312561719888" TEXT="keep_rootfs_extraction">
<node CREATED="1312561719889" ID="ID_93032956" MODIFIED="1312561719891" TEXT="If this file is present the extracted rootfs won&apos;t be deleted after processing."/>
</node>
<node CREATED="1312561505318" ID="ID_284941495" MODIFIED="1312561733586" TEXT="keep_iso_extraction">
<node CREATED="1312561733588" ID="ID_1832876850" MODIFIED="1312561733590" TEXT="If this file is present the extracted ISO won&apos;t be deleted after processing."/>
</node>
</node>
<node CREATED="1312561331176" ID="ID_719977203" MODIFIED="1312561372010" TEXT="executed by">
<arrowlink DESTINATION="ID_1010867266" ENDARROW="Default" ENDINCLINATION="57;0;" ID="Arrow_ID_1930413039" STARTARROW="None" STARTINCLINATION="57;0;"/>
</node>
</node>
<node CREATED="1312561341745" ID="ID_1010867266" MODIFIED="1312561372010" TEXT="remaster-live-cd"/>
</node>
<node CREATED="1311350131251" ID="ID_1872672056" MODIFIED="1311350132647" POSITION="right" TEXT="read up">
<node CREATED="1311350134681" ID="ID_313945387" MODIFIED="1311350135970" TEXT="ubiquity and preseeding"/>
<node CREATED="1312559997833" ID="ID_1649895225" MODIFIED="1312560017639" TEXT="Xephyr"/>
</node>
<node CREATED="1313169177974" ID="ID_1338697665" MODIFIED="1313169179288" POSITION="right" TEXT="TODO">
<node CREATED="1315410464804" ID="ID_904043176" MODIFIED="1315410484039" TEXT="done">
<node CREATED="1315402463228" ID="ID_150734767" MODIFIED="1315402465962" TEXT="KDE"/>
<node CREATED="1315583080900" ID="ID_1339950755" MODIFIED="1315583081646" TEXT="bugs">
<node CREATED="1315403855247" ID="ID_800616409" MODIFIED="1315583083449" TEXT="apt-get autoremove?"/>
<node CREATED="1315403587847" ID="ID_1007614256" MODIFIED="1315583087305" TEXT="uck dependency?">
<node CREATED="1315410617086" ID="ID_729538880" MODIFIED="1315580727986" TEXT="uck was detecting it&apos;s directory incorrectly, change uck call"/>
</node>
<node CREATED="1315402467609" ID="ID_179697888" MODIFIED="1315583090169" TEXT="language separated - bug?">
<node CREATED="1315406885041" ID="ID_231313950" MODIFIED="1315406889365" TEXT="all seems good..."/>
</node>
</node>
</node>
<node CREATED="1315583092486" ID="ID_492989746" MODIFIED="1315583093698" TEXT="bugs">
<node CREATED="1315402488025" ID="ID_1967574494" MODIFIED="1315583094826" TEXT="retry customization bugs?"/>
<node CREATED="1315402497717" ID="ID_579789238" MODIFIED="1315583098738" TEXT="proper process killing"/>
<node CREATED="1315578455449" ID="ID_251714847" MODIFIED="1315583101200" TEXT="error on uck failure"/>
</node>
<node CREATED="1315581766743" ID="ID_578452854" MODIFIED="1315581767264" TEXT="KDE testing"/>
<node CREATED="1315402911118" ID="ID_300452622" MODIFIED="1315402917927" TEXT="check uck upstream"/>
<node CREATED="1315403472525" ID="ID_1383665586" MODIFIED="1315581766274" TEXT="better debug output, log to file"/>
<node CREATED="1315404256421" ID="ID_1846084940" MODIFIED="1315404261221" TEXT="mv final iso?"/>
<node CREATED="1315402606974" ID="ID_12809523" MODIFIED="1315402608515" TEXT="docs"/>
<node CREATED="1315407674706" ID="ID_341202492" MODIFIED="1315407704263" TEXT="i18n"/>
<node CREATED="1315402617081" ID="ID_1058835096" MODIFIED="1315402619193" TEXT="deb package"/>
</node>
<node CREATED="1311179847215" ID="ID_1819087510" MODIFIED="1314023360967" POSITION="right" TEXT="progresso">
<node CREATED="1311179854797" FOLDED="true" ID="ID_1771514025" MODIFIED="1314986433651" TEXT="semana 1">
<node CREATED="1311179860841" ID="ID_252548493" MODIFIED="1311345456763" TEXT="dia 1">
<node CREATED="1311180417479" ID="ID_318347115" MODIFIED="1311180427339" TEXT="adicionada mais informa&#xe7;&#xe3;o &#xe0; wiki"/>
<node CREATED="1311179938072" ID="ID_884489177" MODIFIED="1311179951540" TEXT="instala&#xe7;&#xe3;o e configura&#xe7;&#xe3;o do CM"/>
<node CREATED="1311179902132" ID="ID_1364849857" MODIFIED="1311179909516" TEXT="investigados projectos relaccionados">
<node CREATED="1311179910372" ID="ID_948941903" MODIFIED="1311179912035" TEXT="uck"/>
<node CREATED="1311179913483" ID="ID_1360185903" MODIFIED="1311179915438" TEXT="plymouth"/>
<node CREATED="1311179916054" ID="ID_1434243472" MODIFIED="1311179919079" TEXT="squashfs"/>
<node CREATED="1311179919535" ID="ID_688103881" MODIFIED="1311179921422" TEXT="unionfs"/>
</node>
<node CREATED="1311179981791" ID="ID_344065420" MODIFIED="1311180467034" TEXT="pequeno &quot;peek&quot; &#xe0;s sources do UCK"/>
</node>
<node CREATED="1311267293173" ID="ID_720631534" MODIFIED="1311345388805" TEXT="dia 2">
<node CREATED="1311267298793" ID="ID_1802476100" MODIFIED="1311267303068" TEXT="investigados projectos">
<node CREATED="1311267324952" ID="ID_335195789" MODIFIED="1311267327693" TEXT="Reconstructor"/>
</node>
<node CREATED="1311267335308" ID="ID_1549111817" MODIFIED="1311267341232" TEXT="Feita apresenta&#xe7;&#xe3;o"/>
<node CREATED="1311267342352" ID="ID_1446090062" MODIFIED="1311267368312" TEXT="Testes de utiliza&#xe7;&#xe3;o ao UCK">
<node CREATED="1311267381420" ID="ID_1183881576" MODIFIED="1311267390067" TEXT="falha critica num wget..."/>
</node>
</node>
<node CREATED="1311345389836" ID="ID_1321639449" MODIFIED="1311345391613" TEXT="dia 3">
<node CREATED="1311345402096" ID="ID_370739779" MODIFIED="1311345438556" TEXT="re-familiariza&#xe7;&#xe3;o com SVN"/>
<node CREATED="1311345417137" ID="ID_1029676863" MODIFIED="1311353988587" TEXT="sistema de revision control a funcionar"/>
<node CREATED="1311345421917" ID="ID_1734809648" MODIFIED="1311345589084" TEXT="mais testes de utiliza&#xe7;&#xe3;o do UCK"/>
<node CREATED="1311353701328" ID="ID_1147301879" MODIFIED="1311353711545" TEXT="estudar altera&#xe7;&#xf5;es necess&#xe1;rias ao UCK para suportar CM"/>
<node CREATED="1311353659519" ID="ID_693371264" MODIFIED="1311353680979" TEXT="Contactada equipa do UCK, &#xe0; espera de resposta"/>
</node>
</node>
<node CREATED="1311612397470" FOLDED="true" ID="ID_1486431039" MODIFIED="1312560044397" TEXT="semana 2">
<node CREATED="1311612401950" ID="ID_380456536" MODIFIED="1311612404360" TEXT="dia 4">
<node CREATED="1311612426511" ID="ID_1391958192" MODIFIED="1311612434593" TEXT="correspond&#xea;ncia com equipa do UCK"/>
<node CREATED="1311612469078" ID="ID_40054149" MODIFIED="1311612479407" TEXT="reinstala&#xe7;&#xe3;o do caixa m&#xe1;gica (para 32 bits)"/>
<node CREATED="1311612436760" ID="ID_1345205809" MODIFIED="1311612456869" TEXT="testes ao uck-flow"/>
</node>
<node CREATED="1311612401950" ID="ID_541495678" MODIFIED="1311692125525" TEXT="dia 5">
<node CREATED="1311612426511" ID="ID_983174204" MODIFIED="1311612434593" TEXT="correspond&#xea;ncia com equipa do UCK"/>
<node CREATED="1311612436760" ID="ID_1109914851" MODIFIED="1311612456869" TEXT="testes ao uck-flow"/>
<node CREATED="1311692168324" ID="ID_1328345298" MODIFIED="1311692185183" TEXT="Defini&#xe7;&#xe3;o de workflow para testes"/>
<node CREATED="1311692251477" ID="ID_1832907543" MODIFIED="1311695823869" STYLE="bubble" TEXT="estudo do UCK"/>
</node>
<node CREATED="1311784951154" ID="ID_427794582" MODIFIED="1311784952786" TEXT="dia 6">
<node CREATED="1311612426511" ID="ID_1134885591" MODIFIED="1311872227720" TEXT="correspond&#xea;ncia com equipa do UCK para integra&#xe7;&#xe3;o de altera&#xe7;&#xf5;es"/>
<node CREATED="1311784959178" ID="ID_90826869" MODIFIED="1311784966898" TEXT="testes ao uck"/>
<node CREATED="1311784967709" ID="ID_1103936699" MODIFIED="1311872219310" TEXT="altera&#xe7;&#xf5;es ao uck para suportar CM"/>
</node>
<node CREATED="1311784951154" ID="ID_516646083" MODIFIED="1311872242069" TEXT="dia 7">
<node CREATED="1311784959178" ID="ID_1504251570" MODIFIED="1311784966898" TEXT="testes ao uck"/>
<node CREATED="1311784967709" ID="ID_859747237" MODIFIED="1311872219310" TEXT="altera&#xe7;&#xf5;es ao uck para suportar CM"/>
</node>
<node CREATED="1311955983484" ID="ID_1969716072" MODIFIED="1311955984968" TEXT="dia 8">
<node CREATED="1311784959178" ID="ID_1992509580" MODIFIED="1311784966898" TEXT="testes ao uck"/>
<node CREATED="1311955996568" ID="ID_836047137" MODIFIED="1311956000473" TEXT="Estudo da GUI"/>
<node CREATED="1311956001004" ID="ID_1570102328" MODIFIED="1311956078449" TEXT="inicio do desenvolvimento da GUI"/>
</node>
</node>
<node CREATED="1312217899574" FOLDED="true" ID="ID_1940624791" MODIFIED="1313169167922" TEXT="semana 3">
<node CREATED="1312217906658" ID="ID_416807508" MODIFIED="1312217908993" TEXT="dia 9">
<node CREATED="1312217910429" ID="ID_86908126" MODIFIED="1312217916977" TEXT="desenvolvimento da GUI"/>
</node>
<node CREATED="1312217906658" ID="ID_107159662" MODIFIED="1312560059538" TEXT="dia 10">
<node CREATED="1312217910429" ID="ID_59933288" MODIFIED="1312217916977" TEXT="desenvolvimento da GUI"/>
</node>
<node CREATED="1312217906658" ID="ID_1057889670" MODIFIED="1312560062220" TEXT="dia 11">
<node CREATED="1312217910429" ID="ID_1612642841" MODIFIED="1312217916977" TEXT="desenvolvimento da GUI"/>
<node CREATED="1312560084846" ID="ID_1094910160" MODIFIED="1312560138886" TEXT="cria&#xe7;&#xe3;o inicial de interface python para o uck"/>
</node>
<node CREATED="1312217906658" ID="ID_1310174173" MODIFIED="1312560064193" TEXT="dia 12">
<node CREATED="1312217910429" ID="ID_705002196" MODIFIED="1312217916977" TEXT="desenvolvimento da GUI"/>
</node>
<node CREATED="1312217906658" ID="ID_965425181" MODIFIED="1312560066330" TEXT="dia 13">
<node CREATED="1312217910429" ID="ID_1251471347" MODIFIED="1312217916977" TEXT="desenvolvimento da GUI"/>
<node CREATED="1312560084846" ID="ID_1454158773" MODIFIED="1312560159480" TEXT="desenvolvimento da interface python-uck"/>
<node CREATED="1312560161253" ID="ID_854335518" MODIFIED="1312560169067" TEXT="estudo do uck-gui / uck"/>
</node>
</node>
<node CREATED="1312910381686" FOLDED="true" ID="ID_1523407565" MODIFIED="1313518372273" TEXT="semana 4">
<node CREATED="1312910385446" ID="ID_351320403" MODIFIED="1312910391886" TEXT="dia 14">
<node CREATED="1312560084846" ID="ID_642292024" MODIFIED="1312560159480" TEXT="desenvolvimento da interface python-uck"/>
</node>
<node CREATED="1312910404383" ID="ID_715957899" MODIFIED="1312910406657" TEXT="dia 15">
<node CREATED="1312560084846" ID="ID_1844209596" MODIFIED="1312560159480" TEXT="desenvolvimento da interface python-uck"/>
<node CREATED="1312910413513" ID="ID_985634936" MODIFIED="1312910419082" TEXT="integra&#xe7;&#xe3;o GUI - UCK"/>
</node>
<node CREATED="1312910404383" ID="ID_1477826216" MODIFIED="1313169113291" TEXT="dia 16">
<node CREATED="1312910413513" ID="ID_1114487707" MODIFIED="1312910419082" TEXT="integra&#xe7;&#xe3;o GUI - UCK"/>
</node>
<node CREATED="1313000204799" ID="ID_1143181299" MODIFIED="1313169114866" TEXT="dia 17">
<node CREATED="1313000211675" ID="ID_1780090302" MODIFIED="1313000222816" TEXT="GUI - UCK: correc&#xe7;&#xe3;o de bugs"/>
<node CREATED="1313000223324" ID="ID_1881657923" MODIFIED="1313000225259" TEXT="testes"/>
<node CREATED="1313000230198" ID="ID_1783036546" MODIFIED="1313000279233" TEXT="manuten&#xe7;&#xe3;o, rescrita, dos repositorios git, svn"/>
<node CREATED="1313169655874" ID="ID_1518949757" MODIFIED="1313169671722" TEXT="integra&#xe7;&#xe3;o do X / vnc"/>
</node>
<node CREATED="1313000204799" ID="ID_1163790522" MODIFIED="1313169122587" TEXT="dia 18">
<node CREATED="1313169655874" ID="ID_670646916" MODIFIED="1313169676799" TEXT="integra&#xe7;&#xe3;o do X / vnc"/>
<node CREATED="1313000211675" ID="ID_1697853953" MODIFIED="1313169679137" TEXT="correc&#xe7;&#xe3;o de bugs"/>
<node CREATED="1313000223324" ID="ID_1682763939" MODIFIED="1313000225259" TEXT="testes"/>
<node CREATED="1313169138273" ID="ID_137625550" MODIFIED="1313169149920" TEXT="planeamento"/>
</node>
</node>
<node CREATED="1313518365671" FOLDED="true" ID="ID_203170329" MODIFIED="1315582416564" TEXT="semana 5">
<node CREATED="1313518368458" ID="ID_1695367139" MODIFIED="1313518374673" TEXT="dia 19">
<node CREATED="1313518375462" ID="ID_602303145" MODIFIED="1313518378908" TEXT="[feriado]"/>
</node>
<node CREATED="1313518383518" ID="ID_1452092437" MODIFIED="1313518385117" TEXT="dia 20">
<node CREATED="1313518386383" ID="ID_1815672308" MODIFIED="1313518388639" TEXT="testes"/>
<node CREATED="1313518388988" ID="ID_1796534262" MODIFIED="1313518395281" TEXT="mudan&#xe7;as &#xe0; GUI">
<node CREATED="1313518395989" ID="ID_711534624" MODIFIED="1313518402411" TEXT="uso de checkboxes"/>
<node CREATED="1313518402792" ID="ID_56328661" MODIFIED="1313518405774" TEXT="refactor"/>
</node>
<node CREATED="1313518406511" ID="ID_461960063" MODIFIED="1313518409951" TEXT="mudan&#xe7;as ao UKC">
<node CREATED="1313518410812" ID="ID_940437850" MODIFIED="1314023210539" TEXT="mudan&#xe7;a de utilizador ao correr a sess&#xe3;o gr&#xe1;fica (em vez de dar root ao end-user)"/>
</node>
</node>
<node CREATED="1314022401421" ID="ID_1674423811" MODIFIED="1314022402813" TEXT="dia 21">
<node CREATED="1314022405781" ID="ID_544471745" MODIFIED="1314022412233" TEXT="testes"/>
<node CREATED="1314022470233" ID="ID_1511813817" MODIFIED="1314022507985" TEXT="design de sistema de monitoriza&#xe7;&#xe3;o de progresso do UCK"/>
</node>
<node CREATED="1314022512746" ID="ID_243263710" MODIFIED="1314022514893" TEXT="dia 22">
<node CREATED="1314022544012" ID="ID_1899671975" MODIFIED="1314022576693" TEXT="desenvolvimento de framework para monitoriza&#xe7;&#xe3;o de progresso de ferramentas CLI"/>
</node>
<node CREATED="1314022581741" ID="ID_1310456279" MODIFIED="1314022584866" TEXT="dia 23">
<node CREATED="1314022585876" ID="ID_392215787" MODIFIED="1314023202031" TEXT="continua&#xe7;&#xe3;o do desenvolvimento do framework, testescome&#xe7;o de integra&#xe7;&#xe3;o do framework com GUI/UCK"/>
<node CREATED="1314022633273" ID="ID_628604825" MODIFIED="1314022633275" TEXT="come&#xe7;o de integra&#xe7;&#xe3;o do framework com GUI/UCK"/>
</node>
</node>
<node CREATED="1314023351003" FOLDED="true" ID="ID_1895981900" MODIFIED="1314986431652" TEXT="semana 6">
<node CREATED="1314023371949" ID="ID_1718914167" MODIFIED="1314023373787" TEXT="dia 24">
<node CREATED="1314279437873" ID="ID_671265931" MODIFIED="1314279506092" TEXT="testes, bugs"/>
<node CREATED="1314279421466" ID="ID_1269425531" MODIFIED="1314279437595" TEXT="conclus&#xe3;o de desenvolvimento de framework"/>
</node>
<node CREATED="1314279470511" ID="ID_1035697853" MODIFIED="1314279472200" TEXT="dia 25">
<node CREATED="1314279486214" ID="ID_1389438126" MODIFIED="1314279490448" TEXT="testes, bugs"/>
<node CREATED="1314279445650" ID="ID_213788318" MODIFIED="1314279462029" TEXT="conclus&#xe3;o de integra&#xe7;&#xe3;o do framework com GUI/UCK"/>
</node>
<node CREATED="1314279522591" ID="ID_218961078" MODIFIED="1314279524535" TEXT="dia 26">
<node CREATED="1314279527557" ID="ID_1698987806" MODIFIED="1314279820595" TEXT="testes, bugs"/>
<node CREATED="1314289846374" ID="ID_1640767119" MODIFIED="1314289988589" TEXT="pormenores, refactor"/>
</node>
<node CREATED="1314289850112" ID="ID_916405868" MODIFIED="1314289911140" TEXT="dia 27">
<node CREATED="1314289861155" ID="ID_1051011502" MODIFIED="1314289865134" TEXT="pormenores">
<node CREATED="1314289878398" ID="ID_1685976545" MODIFIED="1314289890740" TEXT="desactivar interface durante customiza&#xe7;&#xe3;o"/>
<node CREATED="1314289892125" ID="ID_1157770475" MODIFIED="1314289896920" TEXT="threading, etc"/>
</node>
<node CREATED="1314289918657" ID="ID_185606645" MODIFIED="1314289921279" TEXT="bugs"/>
</node>
<node CREATED="1314379753938" ID="ID_1647020127" MODIFIED="1314379756327" TEXT="dia 28">
<node CREATED="1314289923331" ID="ID_1937569784" MODIFIED="1314379770837" TEXT="afina&#xe7;&#xe3;o de profile de progresso"/>
<node CREATED="1314379757260" ID="ID_1616651945" MODIFIED="1314379760789" TEXT="testes"/>
<node CREATED="1314379773223" ID="ID_690483258" MODIFIED="1314379774500" TEXT="bugs"/>
<node CREATED="1314379778245" ID="ID_736599244" MODIFIED="1314379808260" TEXT="familiariza&#xe7;&#xe3;o com preseeding"/>
</node>
</node>
<node CREATED="1314636775972" FOLDED="true" ID="ID_294215487" MODIFIED="1315582070600" TEXT="semana 7">
<node CREATED="1314636786944" ID="ID_534741604" MODIFIED="1314636790008" TEXT="dia 29">
<node CREATED="1314636808944" ID="ID_351036430" MODIFIED="1314636814601" TEXT="afina&#xe7;&#xe3;o de profile de progresso"/>
<node CREATED="1314636838023" ID="ID_1249347480" MODIFIED="1314636853007" TEXT="altera&#xe7;&#xe3;o ao framework de monitoriza&#xe7;&#xe3;o para suportar monitoriza&#xe7;&#xe3;o de strings arbitrarias"/>
<node CREATED="1314636819528" ID="ID_411466568" MODIFIED="1314636834817" TEXT="correr e terminar a janela de VNC automaticamente"/>
</node>
<node CREATED="1314986422677" ID="ID_1155987700" MODIFIED="1314986425279" TEXT="dia 30">
<node CREATED="1314986455214" ID="ID_1394167376" MODIFIED="1314986456797" TEXT="testes"/>
<node CREATED="1314986457186" ID="ID_1829279920" MODIFIED="1314986464657" TEXT="familizariza&#xe7;&#xe3;o com o preseeding"/>
<node CREATED="1314986485829" ID="ID_1582857128" MODIFIED="1314986527851" TEXT="tentativas para fazer o preceeding copiar customiza&#xe7;&#xf5;es"/>
</node>
<node CREATED="1314986422677" ID="ID_613689525" MODIFIED="1314986556115" TEXT="dia 31">
<node CREATED="1314986457186" ID="ID_798716991" MODIFIED="1314986464657" TEXT="familizariza&#xe7;&#xe3;o com o preseeding"/>
<node CREATED="1314986485829" ID="ID_1585554354" MODIFIED="1314986527851" TEXT="tentativas para fazer o preceeding copiar customiza&#xe7;&#xf5;es"/>
</node>
<node CREATED="1314986422677" ID="ID_1056140832" MODIFIED="1314986563528" TEXT="dia 32">
<node CREATED="1314986457186" ID="ID_164755768" MODIFIED="1314986464657" TEXT="familizariza&#xe7;&#xe3;o com o preseeding"/>
<node CREATED="1314986485829" ID="ID_28225798" MODIFIED="1314986527851" TEXT="tentativas para fazer o preceeding copiar customiza&#xe7;&#xf5;es"/>
</node>
<node CREATED="1314986422677" ID="ID_1173007114" MODIFIED="1314986575308" TEXT="dia 33">
<node CREATED="1314986457186" ID="ID_457480235" MODIFIED="1314986464657" TEXT="familizariza&#xe7;&#xe3;o com o preseeding"/>
<node CREATED="1314986485829" ID="ID_945506683" MODIFIED="1314986618152" TEXT="preceeding copia customiza&#xe7;&#xf5;es"/>
<node CREATED="1314986618891" ID="ID_365777226" MODIFIED="1314986632455" TEXT="altera&#xe7;&#xe3;o de parametros de boot para usar o preceeding"/>
</node>
</node>
<node CREATED="1315246719479" ID="ID_1577648656" MODIFIED="1315246721560" TEXT="semana 8">
<node CREATED="1315246725604" ID="ID_1638455477" MODIFIED="1315246727655" TEXT="dia 34">
<node CREATED="1315246741138" ID="ID_1445778671" MODIFIED="1315246752598" TEXT="altera&#xe7;&#xe3;o &#xe0; c&#xf3;pia de customiza&#xe7;&#xf5;es"/>
<node CREATED="1315246728782" ID="ID_1835395465" MODIFIED="1315246736630" TEXT="testes"/>
<node CREATED="1315582491888" ID="ID_1870617121" MODIFIED="1315582504814" TEXT="novo bug na c&#xf3;pia de customiza&#xe7;&#xf5;es"/>
</node>
<node CREATED="1315582162670" ID="ID_986746259" MODIFIED="1315582165166" TEXT="dia 35">
<node CREATED="1315582166263" ID="ID_1662493389" MODIFIED="1315582167719" TEXT="testes"/>
<node CREATED="1315582167974" ID="ID_1772409828" MODIFIED="1315582173624" TEXT="correc&#xe7;&#xe3;o de bugs">
<node CREATED="1315582184934" ID="ID_925505117" MODIFIED="1315582201806" TEXT="bug no comando cp de customiza&#xe7;&#xf5;es"/>
</node>
<node CREATED="1315582441185" ID="ID_987528359" MODIFIED="1315582447998" TEXT="descoberta e listagem de bugs"/>
</node>
<node CREATED="1315582221710" ID="ID_964810708" MODIFIED="1315582224343" TEXT="dia 36">
<node CREATED="1315582225668" ID="ID_1400298707" MODIFIED="1315582227149" TEXT="testes"/>
<node CREATED="1315582227823" ID="ID_1525673875" MODIFIED="1315582256652" TEXT="customiza&#xe7;&#xe3;o gr&#xe1;fica em KDE a funcionar"/>
</node>
<node CREATED="1315582294267" ID="ID_1938961723" MODIFIED="1315582297658" TEXT="dia 37">
<node CREATED="1315582299780" ID="ID_1770236383" MODIFIED="1315582301747" TEXT="testes"/>
<node CREATED="1315582302059" ID="ID_143270939" MODIFIED="1315582318578" TEXT="mudan&#xe7;as ao preseeding para KDE"/>
<node CREATED="1315582326067" ID="ID_1970411343" MODIFIED="1315582341425" TEXT="mudan&#xe7;as no output da aplica&#xe7;&#xe3;o / uck"/>
</node>
<node CREATED="1315582352562" ID="ID_1528626375" MODIFIED="1315582354992" TEXT="dia 38">
<node CREATED="1315582356137" ID="ID_1099548042" MODIFIED="1315582357277" TEXT="testes"/>
<node CREATED="1315582357604" ID="ID_1469848824" MODIFIED="1315582364192" TEXT="correc&#xe7;&#xe3;o de bugs">
<node CREATED="1315582365129" ID="ID_398258339" MODIFIED="1315582378134" TEXT="bug de PATH quando uck n&#xe3;o est&#xe1; instalado"/>
<node CREATED="1315586599677" ID="ID_70864397" MODIFIED="1315586622479" TEXT="bug no vnc ao correr customiza&#xe7;&#xe3;o gr&#xe1;fica duas vezes"/>
</node>
<node CREATED="1315582388184" ID="ID_1898433017" MODIFIED="1315582400987" TEXT="remo&#xe7;&#xe3;o de packages desnecess&#xe1;rias do livecd ap&#xf3;s customiza&#xe7;&#xe3;o"/>
<node CREATED="1315582423249" ID="ID_493821131" MODIFIED="1315582427455" TEXT="investiga&#xe7;&#xe3;o de bugs"/>
</node>
</node>
</node>
</node>
</map>
