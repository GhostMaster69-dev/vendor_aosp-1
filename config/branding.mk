# Set all versions
PEX_BASE_VERSION := Dev
PEX_VERSION := 0
PEX_MAINTAINER ?= Unknown

# Set all versions
PEX_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 11

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := PixelExtended_$(CUSTOM_BUILD)-$(PEX_VERSION)-$(CUSTOM_PLATFORM_VERSION)-CAF-$(CUSTOM_BUILD_DATE)-$(PEX_BUILD_TYPE)
CUSTOM_VERSION_PROP := r
CAF_REVISION_TAG := LA.UM.9.12.r1-09300-SMxx50.0

PRODUCT_GENERIC_PROPERTIES += \
    org.pex.version=$(PEX_BASE_VERSION) \
    org.pex.version.prop=$(CUSTOM_VERSION_PROP) \
    org.pex.version.display=$(PEX_VERSION) \
    org.pex.build_version=$(PEX_BASE_VERSION) \
    org.pex.build_date=$(CUSTOM_BUILD_DATE) \
    org.pex.build_type=$(PEX_BUILD_TYPE) \
    org.pex.build_maintainer=$(PEX_MAINTAINER) \
    org.pex.build_donate_url=$(PEX_DONATE_URL) \
    ro.caf.revision.tag=$(CAF_REVISION_TAG)
