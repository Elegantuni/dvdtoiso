# dvdtoiso

This copies unencrypted dvd and unencrypted cdrom disk to iso:

You will need bash, isoinfo, gawk, dd, and md5sum.

On Ubuntu 18.04 desktop version:
$ sudo apt-get install gawk

Run:
$ chmod +x isomaker.bash

Example usage with folders /home/gf/dvdiso/:
$ isomaker.bash /dev/sr0 /home/gf/dvdiso/disk1.iso
