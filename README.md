#FDIO-openwrt
<ul>
<li>arm_cortex-a7_vfpv4</li>
<pre>
nano /etc/opkg/customfeeds.conf
src/gz fdi_base http://felexindo.mooo.com:81/packages/arm_cortex-a7_vfpv4/base
-opkg update
-opkg install --force-depends fdio
</pre>
<li>ar71xx</li>
nano /etc/opkg/customfeeds.conf
src/gz fdi_base http://felexindo.mooo.com:81/packages/ar71xx/base
-opkg update
-opkg install --force-depends fdio
</pre>
<li>ramips</li>
nano /etc/opkg/customfeeds.conf
src/gz fdi_base http://felexindo.mooo.com:81/packages/ramips/base
-opkg update
-opkg install --force-depends fdio
</pre>
</ul>
