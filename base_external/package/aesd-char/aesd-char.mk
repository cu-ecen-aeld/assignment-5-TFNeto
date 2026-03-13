
##############################################################
#
# AESD_CHAR - Assignment 7
#
# As per buildroot kernel-module tutorial
##############################################################


AESD_CHAR_VERSION = 'd5fae2dbfb74559e006f6c47624200c5735106ed'
AESD_CHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-TFNeto.git'
AESD_CHAR_SITE_METHOD = git
#AESD_CHAR_OVERRIDE_SRCDIR="/home/tiagoneto/learning/assignments-3-and-later-TFNeto"

AESD_CHAR_LICENSE = GPL-2.0
AESD_CHAR_LICENSE_FILES = COPYING

AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))

define AESD_CHAR_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/etc/init.d
	$(INSTALL) -d 0755 $(TARGET_DIR)/etc/init.d/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop $(TARGET_DIR)/etc/init.d/S95aesdchar
	$(INSTALL) -d 0755 $(TARGET_DIR)/lib/modules/$(KERNEL_VERSION)
endef