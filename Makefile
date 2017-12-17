# Nubia Z17mini Flyme reference file
# 作者：gesangtome <gesangtome@foxmail.com>
# 请使用这个文件作为项目的makefile参考

##############################################################################
# 这个值决定了选择哪个基础设备进行Patchall和Upgrade
# 你可以依照你的设备来配置这个属性
# 这个值默认为：base
# 支持的值有: base, base_cm, base_mt6592和其他设备
#-----------------------------------------------------------------------------
BASE := base

##############################################################################
# 该值用于使用aapt工具的资源适配器。
# 它取决于你的设备分辨率
# 这个值默认为：hdpi.
#-----------------------------------------------------------------------------
DENSITY := xxhdpi

##############################################################################
# 这个值用于配置 bootanimation。
# 它取决于你的设备分辨率, 比如： 480x854, 540x960, 720x1280, 1080x1920.
# 这个值默认为：nothing
#-----------------------------------------------------------------------------
RESOLUTION := 1080x1920

##############################################################################
# 该值决定是否使用预构建的镜像或在从供应商目录的boot或recovery目录中打包。
# 支持的值有:boot recovery或是nothing
# 这个值默认为：boot.
# 当这个值为boot或是recovery时, 构建系统将打包boot.img或是recovery.img
# 在供应商目录中的boot或Recovery中可能包含您的修改。
# 当这个值为nothing时, 构建系统将在你的项目根目录检查boot.img 或是recovery.img
# 如果boot.img或是recovery.img存在时，构建系统将使用预构建的boot.img或是recovery.img.
# 如果boot.img或是recovery.img不存在时, 构建系统将什么也不做
#-----------------------------------------------------------------------------
vendor_modify_images := boot

##############################################################################
# 该值决定你想要删除在供应商目录下OTA包中的目录
# 这个值默认为：/app或是/priv-app，无需配置
# 你可以配置相对于Vendor/System的目录名
#-----------------------------------------------------------------------------
vendor_remove_dirs := preset_apps

##############################################################################
# 该值决定你想要删除在供应商目录下OTA包中的文件
# 这个值默认为：nothing.
# 你可以配置相对于Vendor/System的文件名
#-----------------------------------------------------------------------------
#vendor_remove_files := app/iReader_V5420_nubia_116272_20170421_03 

##############################################################################
# 该值决定你想要保留在供应商目录下OTA包中的apk
# 这个值默认为：Bluetooth.
# 你可以配置在vendor/system/app或是vendor/system/priv-app目录下的apk名.
#-----------------------------------------------------------------------------
vendor_saved_apps := \
    AntHalService Bluetooth BluetoothExt BluetoothMidiService \
    embms fastdormancy FingerprintServiceExtension HTMLViewer \
    KeyChain MdtpService NfcNci PicoTts nubia_ZFM PrintSpooler QtiTelephonyService \
    shutdownlistener  Stk StaProxyService SuperSnap TimeService UserDictionaryProvider ZSRSTruMedia

vendor_saved_apps += \
    BackupRestoreConfirmation CNEService com.qualcomm.location DefaultContainerService \
    ExternalStorageProvider FusedLocation ims InputDevices ProxyHandler qcrilmsgtunnel  \
    QtiTetherService SharedStorageBackup Shell Tag ZNubiaSensor 

##############################################################################
# 这个值决定你想要修改哪个供应商的apk
# 修改后的apk以当前项目根目录中名为供应商apk名的目录构建。
# 如：vendor_modify_apps := FMRadio
# 你首先需要将FMRadio.apk解码到项目目录(使用apktool d FMRadio.apk)
# 然后你可以通过：make FMRadio来制作它
#-----------------------------------------------------------------------------
vendor_modify_apps := nubia_ZFM ZSRSTruMedia ZNubiaSensor

##############################################################################
# 这个值决定你想要修改哪个供应商的jar
# 修改后的jar将从当前项目根目录中的*.jar目录构建。
# 如: vendor_modify_jars := android.policy
# 你首先需要将android.policy.jar解码到项目目录(使用apktool d android.policy.jar)
# 然后你可以通过：make android.policy来制作它
#-----------------------------------------------------------------------------
vendor_modify_jars := com.qti.dpmframework container-framework framework oem-services qti-telephony-common services telephony-common wifi-service

##############################################################################
# 这个值决定你要保存哪个board系统目录。
# 这个值默认为：nothing.
# 你可以在board release中配置与系统目录相关的board系统目录路径
#-----------------------------------------------------------------------------
board_saved_dirs := media/audio/ui

##############################################################################
# 这个值决定您希望保存哪个board系统文件
# 这个值默认为：nothing
# 你可以在board release中配置与系统目录相关的board系统文件路径
#-----------------------------------------------------------------------------
#board_saved_files :=

##############################################################################
# 这个值决定了要删除哪个board系统apk。
# 这个值默认为：nothing
# 你可以在值中配置board系统apk名
#-----------------------------------------------------------------------------
board_remove_apps := LogReport 

##############################################################################
# 当apk基于board系统apk时，这个值决定您想要修改的apk。
# 这个值默认为：Phone.
# 你可以在值中配置board系统apk名
# 你可以用smali.part文件或是其他方法来修改apk
# 如果apk在BOARD_MODIFY_RESID_APPS里(你可以在build/configs/board_default.mk中看到它)，你可能需要检查
# 如果apk在BOARD_MODIFY_RESID_APPS里, 你可能需要使用此命令：idtoname来更改它的资源id为'#type@name#t'或是'#type@name#a'
# 怎么使用命令：idtoname? 首先使用 'apktool d source/system/framework/framework-res.apk other/TMP/framework-res'
# 然后使用‘idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali’(XXXX是当你解码board系统apk的目录)
#-----------------------------------------------------------------------------
#board_modify_apps := TeleService

##############################################################################
# 当apk基于board系统jar时，这个值决定您想要修改的jar。
# 这个值默认为：nothing
# 你可以用smali.part文件或是其他方法来修改jar
# 如果jar在BOARD_MODIFY_RESID_APPS里(你可以在build/configs/board_default.mk中看到它)，你可能需要检查
# 如果jar在BOARD_MODIFY_RESID_APPS里, 你可能需要使用此命令：idtoname来更改它的资源id为'#type@name#t'或是'#type@name#a'
# 怎么使用命令：idtoname? 首先使用 'apktool d source/system/framework/framework-res.apk other/TMP/framework-res'
# 然后使用‘idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali’(XXXX是当你解码board系统jar的目录)
#-----------------------------------------------------------------------------
#board_modify_jars :=

##############################################################################
# 这个值决定你将要在build.prop中覆盖哪个属性
# 这个值默认为：nothing
# 你可以从build.prop中添加属性名到此值
#-----------------------------------------------------------------------------

# 属性决定是否隐藏虚拟按键。
# 如果为1, 隐藏虚拟按键
# 如果为1, 显示虚拟按键
# 你应根据你的设备来配置此属性
#override_property += \
#    qemu.hw.mainkeys=0


# ro.flyme.romer的属性值将包含在OTA包中
# 这个值默认为：Unofficial
# 你应根据你的设备配置此属性，如：替换'Unofficial'为你的ID
# ro.product.model_romer的属性决定后端服务器的为你的ID的设备统计数据。
# 这个值默认为：Nexus-6P_Unofficial.
# 你应该根据你的设备和你的ID替换"Nexus-6P_Unofficial"以配置属性
override_property += \
    ro.flyme.romer=gesangtome \
    ro.product.model_romer=nubia-Z17mini_gesangtome

##############################################################################
# 这个值决定你将从build.prop中移除哪个属性。
# 这个值默认为：nothing
# 你可以在此值里添加来自build.prop的属性名
#-----------------------------------------------------------------------------
# remove_property += \
#     dev.defaultwallpaper

##############################################################################
# 定义是否在OTA包的/META-INF/com/google/android/updater-script中使用断言。
# 断言用于验证OTA包的有效性。
# 当你想避开验证时, 设置它为 false。
# 默认: true
#-----------------------------------------------------------------------------
USE_ASSERTIONS_IN_UPDATER_SCRIPT := true

##############################################################################
# 定义是否减少无用资源，仅保留首选配置资源，如当前密度或地区。
# 如果设置为真，将花费更多的时间构建大小减少的system.img 。
# 默认：false
#-----------------------------------------------------------------------------
REDUCE_RESOURCES := true

##############################################################################
# 定义是否生成适合与'fastboot update'一起使用的镜像zipfile。
# 默认: false
#-----------------------------------------------------------------------------
#PRODUCE_IMAGES_FOR_FASTBOOT := true

##############################################################################
# 定义是否生成基于块的ota,dat格式的system.img将被生成。
# 如果target_files较旧且不支持块的ota, 则会回退到基于文件的ota。
# 默认: true
#-----------------------------------------------------------------------------
PRODUCE_BLOCK_BASED_OTA := true

##############################################################################
# 定义是否构建ota包的国际版本
# 默认: false
#-----------------------------------------------------------------------------
PRODUCE_INTERNATIONAL_ROM := true

##############################################################################
# 定义是否使用Sepolicy注入
# 默认: true
#-----------------------------------------------------------------------------
PRODUCE_SEPOLICY_INJECT := true

include $(PORT_BUILD)/main.mk
