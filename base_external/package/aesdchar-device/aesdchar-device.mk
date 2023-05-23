
##############################################################
#
# AESDCHAR_DEVICE
#
##############################################################

AESDCHAR_DEVICE_VERSION = 'ba50c9de02ab00c6fb0f99cc525cdd24c71a9562'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_DEVICE_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-dark-beep-boop.git'
AESDCHAR_DEVICE_SITE_METHOD = git
AESDCHAR_DEVICE_GIT_SUBMODULES = YES

AESDCHAR_DEVICE_MODULE_SUBDIRS = aesd-char-driver
AESDCHAR_DEVICE_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

$(eval $(kernel-module))
$(eval $(generic-package))
