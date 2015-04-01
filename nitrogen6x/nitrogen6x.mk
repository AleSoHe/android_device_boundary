$(call inherit-product, device/fsl/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)

# Overrides
PRODUCT_NAME := nitrogen6x
PRODUCT_DEVICE := nitrogen6x
PRODUCT_BRAND := boundary
PRODUCT_MANUFACTURER := boundary

PRODUCT_COPY_FILES += \
	device/boundary/nitrogen6x/required_hardware.xml:system/etc/permissions/required_hardware.xml \
	device/boundary/nitrogen6x/init.rc:root/init.freescale.rc \
	device/boundary/nitrogen6x/init.rc:root/init.boundary.rc \
	device/boundary/nitrogen6x/ueventd.boundary.rc:root/ueventd.freescale.rc \
	device/boundary/nitrogen6x/setwlanmac:system/bin/setwlanmac \
	device/boundary/nitrogen6x/fstab.boundary:root/fstab.boundary \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/eGalax_Touch_Screen.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/ILI210x_Touchscreen.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/ft5x06.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/tsc2004.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/fusion_F0710A.idc \
	kernel_imx/arch/arm/boot/uImage:boot/uImage \
	device/boundary/nitrogen6x/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
	device/boundary/wl12xx/wl127x-fw-5-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-5-sr.bin \
	device/boundary/wl12xx/TIInit_7.6.15.bts:system/etc/firmware/TIInit_7.6.15.bts \
	device/boundary/wl12xx/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \
	device/boundary/nitrogen6x/audio_policy.conf:system/etc/audio_policy.conf \
	device/boundary/nitrogen6x/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/boundary/expose-leds:system/bin/expose-leds \
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6d.bin:system/lib/firmware/vpu/vpu_fw_imx6d.bin 	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6q.bin:system/lib/firmware/vpu/vpu_fw_imx6q.bin      \

PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=wlan0 \
       ro.sf.lcd_density=120

# GPU files

DEVICE_PACKAGE_OVERLAYS := device/boundary/nitrogen6x/overlay

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG += xlarge large tvdpi hdpi

PRODUCT_PACKAGES += uim-sysfs \
        bt_sco_app \
        BluetoothSCOApp \
        memtool \
        TIInit_10.6.15.bts \
        TIInit_7.2.31.bts \
        TIInit_7.6.15.bts

PRODUCT_PACKAGES += \
	wl127x-fw-5-sr.bin \
	wl1271-nvs.bin

include device/boundary/openssh.mk

SUPERUSER_PACKAGE := com.boundary.superuser

SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES += ethernet \
        Superuser
