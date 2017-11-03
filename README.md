# FDIO-openwrt
<strong>how to install</strong>
<ul>
<li>arm_cortex-a7_vfpv4</li>
<pre>
nano /etc/opkg/customfeeds.conf
src/gz fdi_base http://felexindo.mooo.com:81/packages/arm_cortex-a7_vfpv4/base
-opkg update
-opkg install --force-depends fdio
</pre>
<li>ar71xx</li>
<pre>
nano /etc/opkg/customfeeds.conf
src/gz fdi_base http://felexindo.mooo.com:81/packages/mips_24kc/base
-opkg update
-opkg install --force-depends fdio
</pre>
<li>ramips</li>
<pre>
nano /etc/opkg/customfeeds.conf
src/gz fdi_base http://felexindo.mooo.com:81/packages/ramips/base
-opkg update
-opkg install --force-depends fdio
</pre>
</ul>
<strong>test run</strong>
<ul>
<li>config</li>
<pre>
$fdi_gpio setup
</pre>
<li>check</li>
<pre>
$fdi_gpio json
</pre>
</ul>
<strong>auto run while startup</strong>
<pre>
$nano /etc/rc.local
fdi_gpio startup # add this command before exit0 line
exit 0
</pre>
<strong>download app fdi-o on playstore</strong>
KEY =  " fdi o "
<img src="fdio.PNG"></img>
