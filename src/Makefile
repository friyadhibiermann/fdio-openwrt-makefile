compile:
	 CC="$(CC)" CFLAGS="$(TARGET_CFLAGS)" shc -r -f smarthome
	 CC="$(CC)" CFLAGS="$(TARGET_CFLAGS)" shc -r -f timer.sh
	 CC="$(CC)" CFLAGS="$(TARGET_CFLAGS)" shc -r -f fdi_gpio
	 mv smarthome.x smarthome && mv timer.sh.x timer.sh && mv fdi_gpio.x fdi_gpio && rm *.x.c
clean:
	rm -rf *.x *.c *.o *.c smarthome timer.sh fdi_gpio
