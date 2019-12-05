.class public Lcom/cmx/cmplus/com5;
.super Ljava/lang/Object;


# static fields
.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field private static PRN:Ljava/util/List; = null

.field public static final PRn:Ljava/lang/String; = "no_container_sharing_send"

.field public static final PrN:Ljava/lang/String; = "no_persist"

.field public static final Prn:Ljava/lang/String; = "no_su"

.field private static com1:Ljava/util/List; = null

.field public static final pRN:Ljava/lang/String; = "network_exclusive"

.field public static final pRn:Ljava/lang/String; = "no_container_sharing_receive"

.field public static final prN:Ljava/lang/String; = "no_container_sharing"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    sput-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Aux(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_modify_accounts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_wifi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_install_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_uninstall_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_share_location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_install_unknown_sources"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_bluetooth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_credentials"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_remove_user"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_debugging_features"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_vpn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "ensure_verify_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_control_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_outgoing_calls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_create_windows"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_cross_profile_copy_paste"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_outgoing_beam"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_su"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_container_sharing_receive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_container_sharing_send"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    const-string v1, "no_container_sharing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/cmx/cmplus/com5;->com1:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aux()Ljava/util/List;
    .locals 2

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_modify_accounts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_wifi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_install_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_uninstall_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_share_location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_install_unknown_sources"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_bluetooth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_credentials"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_remove_user"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_debugging_features"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_vpn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "ensure_verify_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_control_apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_outgoing_calls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_create_windows"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_cross_profile_copy_paste"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_outgoing_beam"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_su"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_container_sharing_receive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_container_sharing_send"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_container_sharing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "no_persist"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    const-string v1, "network_exclusive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/cmx/cmplus/com5;->PRN:Ljava/util/List;

    return-object v0
.end method
