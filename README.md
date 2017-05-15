# Picon updater script

Plugins to download and run scripts to download picons and places them in hdd and hdd/SkyQ folders

Download the plugin you want to use:

SNP Picon updater https://github.com/davesayers2014/Picon/blob/master/enigma2-plugin-extensions-dsayers-snp-picons-updater_1.2_all.ipk?raw=true

SRP Picon updater https://github.com/davesayers2014/Picon/blob/master/enigma2-plugin-extensions-dsayers-srp-picons-updater_1.2_all.ipk?raw=true

########################################################################################################################

Ftp the ipk to tmp

To install the ipk 

Telnet command

opkg install -force-overwrite /tmp/*.ipk

Installing via the box

Openatv
Menu... setup... software management... install local extension
memory/tmp
Press ok on the package
press green to install.

OpenVIX
Menu > setup > VIX > Iplkg install or install local extentions then ipk installer
memory/tmp
Press ok on the package
press green to install.

Reboot box.

######################################################################################################################

Before running the plugin we need to update wget 

Download https://github.com/davesayers2014/Picon/blob/master/run-me-first.zip?raw=true

Unzip the run-me-first.zip and send the run-me-first.sh to:

Openatv usr/script
OpenVix usr/scripts

Check the script is executable 755 or 777

To run the script
OpenATV
Menu > infopanel > plugins > Jobmanager 

OpenVIX
Menu > setup > vix > script-runner

Highlight Run-me-first.sh then press ok to run

You can delete the run-me-first.sh if you want 

Alternatively run the script in talnet open the run-me-first.sh copy all the text and past in talnet/putty.

############################################################################################################################

Now we can run the plugin goto plugins and press ok to run the plugin this should now download and run the script to delete existing picons and install new picons and move them to hdd and hdd/SkyQ
