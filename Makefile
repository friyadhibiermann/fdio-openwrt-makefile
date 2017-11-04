# Copyright (C) 2017 Openwrt/LEDE indonesia machine team.
#
# This is free software, licensed under the GNU General Public License.
# See /LICENSE for more information.
#
# friyadhi biermann<http://facebook.com/friyadhibiermann>
#

include $(TOPDIR)/rules.mk

PKG_NAME:=fdio
PKG_RELEASE:=1.0.1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)
PKG_INSTALL_DIR:=$(PKG_BUILD_DIR)/ipkg-install

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

define Package/fdio
  SECTION:=MYSCRIPT
  CATEGORY:=FDI
  SUBMENU :=fdio
  TITLE:=FDI_LEDES_SCRIPT
  DEPENDS:=+bash +bc +mjpg-streamer +mosquitto +mosquitto-client +libmosquitto
endef

define Package/fdio/description
	My script for do everything
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		CXXFLAGS="$(CFLAGS)"
endef

define Package/fdio/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/www/cgi-bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/smarthome $(1)/www/cgi-bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/fdi_gpio $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/timer.sh $(1)/usr/bin/
endef

$(eval $(call BuildPackage,fdio))
