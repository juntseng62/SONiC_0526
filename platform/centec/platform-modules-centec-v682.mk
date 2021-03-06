# Centec V682-48Y8C-D Platform modules


CENTEC_V682_48Y8C_D_PLATFORM_MODULE_VERSION =1.0
CENTEC_V682_48Y8C_PLATFORM_MODULE_VERSION =1.0
CENTEC_V682_48X8C_PLATFORM_MODULE_VERSION =1.0

export CENTEC_V682_48Y8C_D_PLATFORM_MODULE_VERSION
export CENTEC_V682_48Y8C_PLATFORM_MODULE_VERSION
export CENTEC_V682_48X8C_PLATFORM_MODULE_VERSION

CENTEC_V682_48Y8C_D_PLATFORM_MODULE = platform-modules-v682-48y8c-d_$(CENTEC_V682_48Y8C_D_PLATFORM_MODULE_VERSION)_amd64.deb

$(CENTEC_V682_48Y8C_D_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-v682
$(CENTEC_V682_48Y8C_D_PLATFORM_MODULE)_PLATFORM = x86_64-centec_v682_48y8c_d-r0
$(CENTEC_V682_48Y8C_D_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
SONIC_STRETCH_DEBS += $(CENTEC_V682_48Y8C_D_PLATFORM_MODULE)
SONIC_DPKG_DEBS += $(CENTEC_V682_48Y8C_D_PLATFORM_MODULE)

CENTEC_V682_48Y8C_PLATFORM_MODULE = platform-modules-v682-48y8c_$(CENTEC_V682_48Y8C_PLATFORM_MODULE_VERSION)_amd64.deb
$(CENTEC_V682_48Y8C_PLATFORM_MODULE)_PLATFORM = x86_64-centec_v682_48y8c-r0
$(eval $(call add_extra_package,$(CENTEC_V682_48Y8C_D_PLATFORM_MODULE),$(CENTEC_V682_48Y8C_PLATFORM_MODULE)))

CENTEC_V682_48X8C_PLATFORM_MODULE = platform-modules-v682-48x8c_$(CENTEC_V682_48X8C_PLATFORM_MODULE_VERSION)_amd64.deb
$(CENTEC_V682_48X8C_PLATFORM_MODULE)_PLATFORM = x86_64-centec_v682_48x8c-r0
$(eval $(call add_extra_package,$(CENTEC_V682_48Y8C_D_PLATFORM_MODULE),$(CENTEC_V682_48X8C_PLATFORM_MODULE)))
