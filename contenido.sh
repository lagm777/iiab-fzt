#!/bin/bash
#Cambio de permiso para ejecutar los scripts
chmod 755 /opt/iiab/iiab-admin-console/roles/cmdsrv/files/scripts/*

#Descarga de contenido offline
cd /opt/iiab/iiab-admin-console/roles/cmdsrv/files/scripts/

#Libreria proyecto Gutenberg
wget -c --progress=dot:giga http://download.kiwix.org/portable/gutenberg/kiwix-0.9+gutenberg_es_all_2014-10.zip -O /library/downloads/zims/kiwix-0.9+gutenberg_es_all_2014-10.zip
unzip -uo /library/downloads/zims/kiwix-0.9+gutenberg_es_all_2014-10.zip -d /library/working/zims/gutenberg_es_all_2014-10
./zim_install_step3.sh gutenberg_es_all_2014-10

#Ecured
#wget -c --progress=dot:giga http://download.kiwix.org/zim/other/ecured_es_all_2018-04.zim -O /library/working/zims/ecured_es_all_2018-04.zim
#./zim_install_move.sh ecured_es_all_2018-04.zim

#Phet
#wget -c --progress=dot:giga http://download.kiwix.org/zim/phet/phet_es-pe_2018-06.zim -O /library/working/zims/phet_es-pe_2018-06.zim
#./zim_install_move.sh phet_es-pe_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/phet/phet_es_2018-06.zim -O /library/working/zims/phet_es_2018-06.zim
./zim_install_move.sh phet_es_2018-06.zim

#Stack Exchange
wget -c --progress=dot:giga http://download.kiwix.org/zim/stack_exchange/es.stackoverflow.com_es_all_2018-03.zim -O /library/working/zims/es.stackoverflow.com_es_all_2018-03.zim
./zim_install_move.sh es.stackoverflow.com_es_all_2018-03.zim

#Vikidia
wget -c --progress=dot:giga http://download.kiwix.org/zim/vikidia/vikidia_es_all_2018-06.zim -O /library/working/zims/vikidia_es_all_2018-06.zim
./zim_install_move.sh vikidia_es_all_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/vikidia/vikidia_es_all_nopic_2018-06.zim -O /library/working/zims/vikidia_es_all_nopic_2018-06.zim
./zim_install_move.sh vikidia_es_all_nopic_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/vikidia/vikidia_es_all_novid_2018-06.zim -O /library/working/zims/vikidia_es_all_novid_2018-06.zim
./zim_install_move.sh vikidia_es_all_novid_2018-06.zim

#Wikilibros
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikibooks/wikibooks_es_all_novid_2018-06.zim -O /library/working/zims/wikibooks_es_all_novid_2018-06.zim
./zim_install_move.sh wikibooks_es_all_novid_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikibooks/wikibooks_es_all_nopic_2018-06.zim -O /library/working/zims/wikibooks_es_all_nopic_2018-06.zim
./zim_install_move.sh wikibooks_es_all_nopic_2018-06.zim

#wikinews
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikinews/wikinews_es_all_novid_2018-06.zim -O /library/working/zims/wikinews_es_all_novid_2018-06.zim
./zim_install_move.sh wikinews_es_all_novid_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikinews/wikinews_es_all_nopic_2018-06.zim -O /library/working/zims/wikinews_es_all_nopic_2018-06.zim
./zim_install_move.sh wikinews_es_all_nopic_2018-06.zim

#Wikiquotes
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikiquote/wikiquote_es_all_nopic_2018-06.zim -O /library/working/zims/wikiquote_es_all_nopic_2018-06.zim
./zim_install_move.sh wikiquote_es_all_nopic_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikiquote/wikiquote_es_all_novid_2018-06.zim -O /library/working/zims/wikiquote_es_all_novid_2018-06.zim
./zim_install_move.sh wikiquote_es_all_novid_2018-06.zim

#Wikisources
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikisource/wikisource_es_all_novid_2018-06.zim -O /library/working/zims/wikisource_es_all_novid_2018-06.zim
./zim_install_move.sh wikisource_es_all_novid_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikisource/wikisource_es_all_nopic_2018-06.zim -O /library/working/zims/wikisource_es_all_nopic_2018-06.zim
./zim_install_move.sh wikisource_es_all_nopic_2018-06.zim

#Wikiversity
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikiversity/wikiversity_es_all_novid_2018-06.zim -O /library/working/zims/wikiversity_es_all_novid_2018-06.zim
./zim_install_move.sh wikiversity_es_all_novid_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikiversity/wikiversity_es_all_nopic_2018-06.zim -O /library/working/zims/wikiversity_es_all_nopic_2018-06.zim
./zim_install_move.sh wikiversity_es_all_nopic_2018-06.zim

#Wikivoyaje
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikivoyage/wikivoyage_es_all_novid_2018-06.zim -O /library/working/zims/wikivoyage_es_all_novid_2018-06.zim
./zim_install_move.sh wikivoyage_es_all_novid_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikivoyage/wikivoyage_es_all_nopic_2018-06.zim -O /library/working/zims/wikivoyage_es_all_nopic_2018-06.zim
./zim_install_move.sh wikivoyage_es_all_nopic_2018-06.zim

#Wiktionary
wget -c --progress=dot:giga http://download.kiwix.org/portable/wiktionary/kiwix-0.9+wiktionary_es_all_novid_2017-08.zip -O /library/downloads/zims/kiwix-0.9+wiktionary_es_all_novid_2017-08.zip
unzip -uo /library/downloads/zims/kiwix-0.9+wiktionary_es_all_novid_2017-08.zip -d /library/working/zims/wiktionary_es_all_novid_2017-08
./zim_install_step3.sh wiktionary_es_all_novid_2017-08

wget -c --progress=dot:giga http://download.kiwix.org/portable/wiktionary/kiwix-0.9+wiktionary_es_all_nopic_2017-08.zip -O /library/downloads/zims/kiwix-0.9+wiktionary_es_all_nopic_2017-08.zip
unzip -uo /library/downloads/zims/kiwix-0.9+wiktionary_es_all_nopic_2017-08.zip -d /library/working/zims/wiktionary_es_all_nopic_2017-08
./zim_install_step3.sh wiktionary_es_all_nopic_2017-08

#Wikimedicina
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikipedia/wikipedia_es_medicine_novid_2018-06.zim -O /library/working/zims/wikipedia_es_medicine_novid_2018-06.zim
./zim_install_move.sh wikipedia_es_medicine_novid_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikipedia/wikipedia_es_medicine_nopic_2018-06.zim -O /library/working/zims/wikipedia_es_medicine_nopic_2018-06.zim
./zim_install_move.sh wikipedia_es_medicine_nopic_2018-06.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikipedia/wikipedia_es_medicine_2018-06.zim -O /library/working/zims/wikipedia_es_medicine_2018-06.zim
./zim_install_move.sh wikipedia_es_medicine_2018-06.zim

#Wikipedia
wget -c --progress=dot:giga http://download.kiwix.org/zim/wikipedia/wikipedia_es_all_novid_2018-04.zim -O /library/working/zims/wikipedia_es_all_novid_2018-04.zim
./zim_install_move.sh wikipedia_es_all_novid_2018-04.zim

wget -c --progress=dot:giga http://download.kiwix.org/zim/wikipedia/wikipedia_es_all_nopic_2018-04.zim -O /library/working/zims/wikipedia_es_all_nopic_2018-04.zim
./zim_install_move.sh wikipedia_es_all_nopic_2018-04.zim

#####Modulos Rachel#####

#Bibliofilo
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-bibliofilo /library/www/html/modules/

#Biblioteca
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-biblioteca /library/www/html/modules/

#Blocky Games
rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-blockly-games /library/www/html/modules/

#Grandes libros del mundo
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-ebooks /library/www/html/modules/

#Educalab
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-educalab /library/www/html/modules/

#Guia de la salud Hesperian
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-hesperian_health /library/www/html/modules/
#rsync -P /home/fzt-iiab/hesperian/index.html /library/www/html/modules/es-hesperian_health/

#Enciclopedia de la salud
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-medline_plus /library/www/html/modules/

#Soluciones practicas
#rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/es-soluciones /library/www/html/modules/

#OpenStreetMap
rsync -Pavz --size-only rsync://dev.worldpossible.org/rachelmods/en-worldmap-10 /library/www/html/modules/

#File Share
rsync -Pavz rsync://dev.worldpossible.org/rachelmods/es-file_share /library/www/html/modules/

#PhET
#rsync -Pavz rsync://dev.worldpossible.org/rachelmods/es-phet-zim /library/www/html/modules/

#GCF2015
#rsync -Pavz rsync://dev.worldpossible.org/rachelmods/es-GCF2015 /library/www/html/modules/
