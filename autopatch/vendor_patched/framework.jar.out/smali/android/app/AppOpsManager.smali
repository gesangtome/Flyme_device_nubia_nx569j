.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_BLUETOOTH_ADMIN:Ljava/lang/String; = "android:bluetooth_admin"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_INSTALL_SHORTCUT:Ljava/lang/String; = "android:install_shortcut"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BLUETOOTH_ADMIN:I = 0x40

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_CHANGE_WIFI_STATE:I = 0x3f

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DELETE_CALL_LOG:I = 0x46

.field public static final OP_DELETE_CONTACTS:I = 0x45

.field public static final OP_DELETE_MMS:I = 0x44

.field public static final OP_DELETE_SMS:I = 0x43

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_INSTALL_SHORTCUT:I = 0x47

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_MMS:I = 0x41

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x42

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field public static final _NUM_OP:I = 0x48

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x48

    const/4 v4, 0x0

    .line 394
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 491
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android:coarse_location"

    aput-object v2, v1, v6

    const-string v2, "android:fine_location"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v3, "android:read_contacts"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android:write_contacts"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android:read_call_log"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android:write_call_log"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android:read_calendar"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android:write_calendar"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "android:call_phone"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android:read_sms"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v3, "android:receive_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v3, "android:receive_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android:receive_wap_push"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android:send_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v3, "android:write_settings"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android:system_alert_window"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android:camera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android:record_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v3, "android:monitor_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "android:monitor_location_high_power"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android:get_usage_stats"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v3, "android:activate_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v3, "android:read_phone_state"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "android:add_voicemail"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "android:use_sip"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v3, "android:use_fingerprint"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "android:body_sensors"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "android:read_cell_broadcasts"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "android:mock_location"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "android:read_external_storage"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "android:write_external_storage"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v3, "android:get_accounts"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "android:change_wifi_state"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "android:bluetooth_admin"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 585
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    const-string v2, "GPS"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "WIFI_SCAN"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "POST_NOTIFICATION"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NEIGHBORING_CELLS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "RECEIVE_EMERGECY_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "READ_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "WRITE_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "PLAY_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "READ_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "WRITE_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "TAKE_MEDIA_BUTTONS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "TAKE_AUDIO_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "AUDIO_MASTER_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "AUDIO_VOICE_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "AUDIO_RING_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "AUDIO_MEDIA_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "AUDIO_ALARM_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "AUDIO_NOTIFICATION_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "AUDIO_BLUETOOTH_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "MONITOR_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MONITOR_HIGH_POWER_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "GET_USAGE_STATS"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "MUTE_MICROPHONE"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "TOAST_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "PROJECT_MEDIA"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ACTIVATE_VPN"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "WRITE_WALLPAPER"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "ASSIST_STRUCTURE"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "ASSIST_SCREENSHOT"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "OP_READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "ADD_VOICEMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "USE_SIP"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "PROCESS_OUTGOING_CALLS"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "USE_FINGERPRINT"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "BODY_SENSORS"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "READ_CELL_BROADCASTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "MOCK_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "TURN_ON_SCREEN"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "CHANGE_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "BLUETOOTH_ADMIN"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "SEND_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "WRITE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "DELETE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "DELETE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "DELETE_CONTACTS"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "DELETE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "INSTALL_SHORTCUT"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 682
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    const-string v3, "android.permission.VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.permission.WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "android.permission.RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v3, "android.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "android.permission.WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "android.permission.USE_SIP"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "android.permission.USE_FINGERPRINT"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "android.permission.BODY_SENSORS"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "android.permission.READ_CELL_BROADCASTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "android.permission.BLUETOOTH"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    const-string v3, "com.android.launcher.permission.INSTALL_SHORTCUT"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 780
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v6

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v7

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "no_outgoing_calls"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "no_outgoing_calls"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "no_create_windows"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "no_record_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "no_unmute_microphone"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "no_create_windows"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "no_config_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "no_wallpaper"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    aput-object v4, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 877
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 973
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 1073
    new-array v1, v5, [Z

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 1177
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_0

    .line 1178
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_1

    .line 1182
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1185
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2

    .line 1186
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1189
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    .line 1190
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1193
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_4

    .line 1194
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_5

    .line 1198
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1201
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_6

    .line 1202
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1205
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_7

    .line 1206
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1209
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_9

    .line 1210
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 1211
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_9
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_b

    .line 1215
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    .line 1216
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1219
    :cond_b
    return-void

    .line 394
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
    .end array-data

    .line 877
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 973
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 1073
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1483
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1484
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1485
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1959
    const-class v1, Landroid/app/AppOpsManager;

    monitor-enter v1

    .line 1960
    :try_start_0
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1961
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    :goto_0
    return-object v0

    .line 1964
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    :goto_1
    :try_start_2
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1

    goto :goto_0

    .line 1969
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1965
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1287
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1305
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1296
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1236
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    .line 1237
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1258
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1267
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1227
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1570
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1571
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1572
    const/4 v1, 0x0

    .line 1574
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1276
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1277
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1245
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    return v0

    .line 1244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1644
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1645
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1646
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1648
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringOpToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 2056
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2057
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2058
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2060
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 2044
    const-string v0, "allowed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    const/4 v0, 0x0

    .line 2051
    :goto_0
    return v0

    .line 2046
    :cond_0
    const-string v0, "ignored"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2047
    const/4 v0, 0x1

    goto :goto_0

    .line 2048
    :cond_1
    const-string v0, "ask"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2049
    const/4 v0, 0x4

    goto :goto_0

    .line 2051
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1842
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 1843
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1844
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1849
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1860
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1863
    :goto_0
    return v0

    .line 1861
    :catch_0
    move-exception v0

    .line 1863
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1794
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 1795
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1796
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1801
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1669
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1812
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1815
    :goto_0
    return v0

    .line 1813
    :catch_0
    move-exception v0

    .line 1815
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1677
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1826
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1833
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2038
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2039
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2031
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2034
    :goto_0
    return-void

    .line 2032
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1771
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1772
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1514
    :goto_0
    return-object v0

    .line 1512
    :catch_0
    move-exception v0

    .line 1514
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1495
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1498
    :goto_0
    return-object v0

    .line 1496
    :catch_0
    move-exception v0

    .line 1498
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1954
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1884
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 1885
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1886
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1891
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1696
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1946
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1949
    :goto_0
    return v0

    .line 1947
    :catch_0
    move-exception v0

    .line 1949
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1704
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1913
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 1914
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1915
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1920
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1724
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1931
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1935
    :goto_0
    return v0

    .line 1933
    :catch_0
    move-exception v0

    .line 1935
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1732
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 3

    .prologue
    .line 1556
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :goto_0
    return-void

    .line 1557
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1528
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1547
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1548
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 1549
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_0
    return-void

    .line 1521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2018
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1992
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 1993
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1994
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 1999
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1753
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2010
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2013
    :goto_0
    return v0

    .line 2011
    :catch_0
    move-exception v0

    .line 2013
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1761
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1598
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1599
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1600
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1611
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1618
    return-void

    .line 1617
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1615
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1586
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1587
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1625
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1626
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1629
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1634
    return-void

    .line 1633
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1630
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hook_noteOp(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public hook_noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
