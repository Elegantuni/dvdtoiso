# dvdtoiso

This copies unencrypted dvd and unencrypted cdrom disk to iso.  Should also work with unencrypted bluray: <br />
<br />
You will need bash, isoinfo, gawk, dd, and md5sum. <br />
<br />
On Ubuntu 18.04 desktop version: <br />
$ sudo apt-get install gawk <br />
<br />
Run: <br />
$ chmod +x isomaker.bash <br />
<br />
Example usage with folders /home/gf/dvdiso/: <br />
$ ./isomaker.bash /dev/sr0 /home/gf/dvdiso/disk1.iso <br />
