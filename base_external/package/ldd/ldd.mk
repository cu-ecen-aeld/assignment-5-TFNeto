
##############################################################
#
# LDD - Assignment 7
#
# As per buildroot kernel-module tutorial
##############################################################


LDD_VERSION = 'c51e29114826bde2eab3ffc9505a4c252e7b47cd'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-TFNeto.git'
LDD_SITE_METHOD = git

LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))