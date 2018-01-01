define find-copy-files
$(sort $(shell find $(2) -name "$(1)" -type f | grep -v "~" | $(SED_EXTENDED) "s:($(2)/?(.*)):\\1\\:$(3)/\\2:" | sed "s://:/:g"))
endef

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/bin,system/bin)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/etc,system/etc)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/lib,system/lib)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/lib64,system/lib64)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/usr,system/usr)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/xbin,system/xbin)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_row/proprietary/vendor,system/vendor)
