#!/bin/bash

#add biglinux standed desktop to FalaQueEuTeEscuto desktop
cat biglinux/kde/Packages-Desktop  >>  biglinux/FalaQueEuTeEscuto/Packages-Desktop

#remove desktop
mv biglinux/FalaQueEuTeEscuto/Packages-Desktop biglinux/FalaQueEuTeEscuto/Packages-Desktop-prov
grep -v -f biglinux-make-iso-profiles/FalaQueEuTeEscuto/Desktop-remove  biglinux/FalaQueEuTeEscuto/Packages-Desktop-prov  >  biglinux/FalaQueEuTeEscuto/Packages-Desktop
rm biglinux/FalaQueEuTeEscuto/Packages-Desktop-prov

mkdir -p biglinux/FalaQueEuTeEscuto/root-overlay/etc/skel/.config/
cp "biglinux-make-iso-profiles/FalaQueEuTeEscuto/files/kaccessrc" "biglinux/FalaQueEuTeEscuto/root-overlay/etc/skel/.config/kaccessrc"
cp "biglinux-make-iso-profiles/FalaQueEuTeEscuto/files/user-settings.conf" "biglinux/FalaQueEuTeEscuto/root-overlay/etc/skel/.local/share/orca/user-settings.conf"
