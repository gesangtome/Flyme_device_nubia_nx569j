.class public Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;
    }
.end annotation


# static fields
.field private static final ATTR_2G_SCREEN:Ljava/lang/String; = "g_in_screen_off"

.field private static final ATTR_APP_PKG:Ljava/lang/String; = "app"

.field private static final ATTR_DEFAULT_DEALY:Ljava/lang/String; = "delay_mills"

.field private static final ATTR_DELAY_CONTROL_MILLS:Ljava/lang/String; = "delay_control_mills"

.field private static final ATTR_MOBIEL_SCREEN:Ljava/lang/String; = "mobile_screen_off"

.field private static final ATTR_MOBILE_BG:Ljava/lang/String; = "mobile_background"

.field private static final ATTR_RESTORE_TIME_INTERVAL:Ljava/lang/String; = "restore_time_interval"

.field private static final ATTR_RETURN_NO_NETWORK:Ljava/lang/String; = "return_no_network"

.field private static final ATTR_SCREEN_OFF_DEALY:Ljava/lang/String; = "screen_off_delay_mills"

.field private static final ATTR_WIFI_BG:Ljava/lang/String; = "wifi_background"

.field private static final ATTR_WIFI_SCREEN:Ljava/lang/String; = "wifi_screen_off"

.field private static final NETWORK_MANAGE_FILE:Ljava/lang/String; = "security_network_manager.xml"

.field private static final NET_TYPE_COLUMN:Ljava/lang/String; = "net_type"

.field private static final NUBIA_NETWORK_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/network_manage_table"

.field private static final NUBIA_NETWORK_DELEY_URI:Ljava/lang/String; = "content://cn.nubia.security.power/network_delay_table"

.field private static final NUBIA_NET_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.firewall/net_control"

.field private static final NUBIA_TRAFFIC_MOBILE_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.firewall/mobile"

.field private static final NUBIA_TRAFFIC_WIFI_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.firewall/wlan"

.field private static final TABLE_NETWORK_2G_SC_COLUMN:Ljava/lang/String; = "restrict_2g_screen"

.field private static final TABLE_NETWORK_DEFAULT_DELAY_COLUMN:Ljava/lang/String; = "default_delay"

.field private static final TABLE_NETWORK_DELAY_COLUMN:Ljava/lang/String; = "delay"

.field private static final TABLE_NETWORK_MOBILE_BG_COLUMN:Ljava/lang/String; = "restrict_mobile_background"

.field private static final TABLE_NETWORK_MOBILE_SC_COLUMN:Ljava/lang/String; = "restrict_mobile_screen"

.field private static final TABLE_NETWORK_PACKAGE_COLUMN:Ljava/lang/String; = "network_control_pkg"

.field private static final TABLE_NETWORK_RESTORE_TIME_INTERVAL_COLUMN:Ljava/lang/String; = "restore_interval"

.field private static final TABLE_NETWORK_SC_DELAY_COLUMN:Ljava/lang/String; = "screen_off_delay"

.field private static final TABLE_NETWORK_WIFI_BG_COLUMN:Ljava/lang/String; = "restrict_wifi_background"

.field private static final TABLE_NETWORK_WIFI_SC_COLUMN:Ljava/lang/String; = "restrict_wifi_screen"

.field private static final TABLE_TRAFFIC_UID_COLUMN:Ljava/lang/String; = "uid"

.field private static final TAG:Ljava/lang/String; = "ApplicationNetworkController"

.field private static final TAG_APP_SETTINGS:Ljava/lang/String; = "app_settings"

.field private static final TAG_DELAY_CONTROL_MILLS:Ljava/lang/String; = "delay_mills"

.field private static final TRAFFIC_NET_TYPE_MOBILE_VALUE:I = 0x2

.field private static final TRAFFIC_NET_TYPE_WIFI_VALUE:I = 0x1


# instance fields
.field private mAppBackgroundConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mAppGlobalConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;

.field private mCharging:Z

.field private mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultDelayedControlMillis:J

.field private mDisconnectTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mIs2GNetwork:Z

.field private mNMS:Landroid/os/INetworkManagementService;

.field private mNetworkFile:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageProcessUids:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;

.field private mPendingControlRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryNetworkRunnable:Ljava/lang/Runnable;

.field private mQueryTrafficRunnable:Ljava/lang/Runnable;

.field private mResumedPackageUids:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffDelayedControlMillis:J

.field private mScreenOn:Z

.field private mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appFreezeController"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v1, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    .line 98
    iput-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    .line 100
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    .line 114
    const-wide/32 v4, 0xea60

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    .line 118
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    iput-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 130
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z

    .line 132
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    invoke-direct {v1, p0, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    .line 134
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z

    .line 139
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;

    .line 1225
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$3;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    .line 1233
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$4;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryNetworkRunnable:Ljava/lang/Runnable;

    .line 148
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 152
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;

    .line 153
    const-string v1, "security_network_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNetworkFile:Ljava/io/File;

    .line 155
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNetworkFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    .line 157
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageStateReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;

    .line 158
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;

    .line 159
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/ApplicationNetworkController$BatteryChangedReceiver;

    .line 161
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->initData()V

    .line 162
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Landroid/os/Handler;)V

    .line 163
    .local v0, "trafficObserver":Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    .line 164
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;

    invoke-direct {v2, p0, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void

    .end local v0    # "trafficObserver":Lcn/nubia/server/appmgmt/ApplicationNetworkController$TrafficDbObserver;
    :cond_1
    move v1, v2

    .line 51
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setPendingControlRunnable(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z

    return v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->clearNetControlData()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadTrafficSettingsFromDb()V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadSettingsFromNubiaDb()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->deleteNetControlData(II)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method private cancelPendingControlRunnable(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 368
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;

    .line 369
    .local v0, "r":Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_0
    return-void
.end method

.method private clearNetControlData()V
    .locals 6

    .prologue
    .line 514
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 516
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "content://cn.nubia.security.firewall/net_control"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, "count":I
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 518
    const-string v3, "ApplicationNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearNetControlData: delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " row(s) of data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationNetworkController"

    const-string v4, "clear net control data not successfully"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteNetControlData(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "netType"    # I

    .prologue
    .line 501
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 502
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "net_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    const-string v4, "content://cn.nubia.security.firewall/net_control"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 505
    .local v0, "count":I
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v4, :cond_0

    .line 506
    const-string v4, "ApplicationNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " row of data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ApplicationNetworkController"

    const-string v5, "delete net control data not successfully"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ensureNetworkManagementService()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    .line 365
    :cond_0
    return-void
.end method

.method private hasControlled(II)Z
    .locals 11
    .param p1, "uid"    # I
    .param p2, "netType"    # I

    .prologue
    const/4 v10, 0x0

    .line 526
    const/4 v8, 0x0

    .line 527
    .local v8, "hasControlled":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 528
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "net_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    const-string v1, "content://cn.nubia.security.firewall/net_control"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 530
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-lez v2, :cond_0

    .line 531
    const/4 v8, 0x1

    .line 533
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 536
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 533
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 534
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationNetworkController"

    const-string v2, "unable query data from net control database"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 533
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 529
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 533
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v1

    :catch_3
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v10

    goto :goto_1
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadTrafficSettingsFromDb()V

    .line 171
    const-string v1, "security_network_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .line 173
    .local v0, "data":Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    if-eqz v0, :cond_0

    .line 174
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    .line 175
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    .line 176
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    .line 181
    .end local v0    # "data":Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadSettingsFromNubiaDb()V

    goto :goto_0
.end method

.method private insertNetControlData(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "netType"    # I

    .prologue
    .line 486
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 487
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v3, "net_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    :try_start_0
    const-string v3, "content://cn.nubia.security.firewall/net_control"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 492
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 493
    const-string v3, "ApplicationNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert a row of data: uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND net_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationNetworkController"

    const-string v4, "insert net control data not successfully"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadDefaultSettings()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1089
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.youku.phone"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.Qunar"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.achievo.vipshop"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.tmall.wireless"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.qiyi.video"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.letv.android.client"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "com.sohu.sohuvideo"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v2, "bubei.tingshu"

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-direct {v4, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v7, "com.moji.mjweather"

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.dianping.v1"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.thestore.main"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.jingdong.app.mall"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v8, "com.tencent.game.rhythmmaster"

    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v7, "cn.nubia.weather"

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    const-string v7, "cn.nubia.email"

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZZZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    return-void
.end method

.method private loadNetworkDelays()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 226
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/network_delay_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 228
    if-nez v6, :cond_2

    .line 237
    if-eqz v6, :cond_0

    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 238
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationNetworkController"

    const-string v2, "fail read from database"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 231
    :cond_2
    :try_start_4
    const-string v2, "default_delay"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 232
    .local v7, "deDelayIndex":I
    const-string v2, "screen_off_delay"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 234
    .local v9, "screenDelayIndex":I
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 235
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    .line 236
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    if-eqz v6, :cond_0

    if-eqz v11, :cond_3

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 227
    .end local v7    # "deDelayIndex":I
    .end local v9    # "screenDelayIndex":I
    :catch_3
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 237
    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    :goto_2
    :try_start_9
    throw v1

    :catch_4
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v11

    goto :goto_1
.end method

.method private loadNetworkSettings()Z
    .locals 29

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 244
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "content://cn.nubia.security.power/network_manage_table"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .local v14, "c":Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 245
    if-nez v14, :cond_2

    .line 246
    const/4 v3, 0x0

    .line 273
    if-eqz v14, :cond_0

    if-eqz v27, :cond_1

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v3

    .line 273
    .restart local v14    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v26

    .local v26, "x2":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v14    # "c":Landroid/database/Cursor;
    .end local v26    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v17

    .line 274
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationNetworkController"

    const-string v10, "fail read from database"

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v3, 0x0

    goto :goto_0

    .line 273
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 248
    :cond_2
    :try_start_4
    const-string v3, "network_control_pkg"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 249
    .local v22, "pkgIndex":I
    const-string v3, "restrict_mobile_background"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 250
    .local v18, "mobileIndex":I
    const-string v3, "restrict_wifi_background"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 251
    .local v24, "wifiIndex":I
    const-string v3, "restrict_mobile_screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 252
    .local v19, "mobileScIndex":I
    const-string v3, "restrict_wifi_screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 253
    .local v25, "wifiScIndex":I
    const-string v3, "restrict_2g_screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 254
    .local v20, "n2gIndex":I
    const-string v3, "delay"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 255
    .local v16, "delayIndex":I
    const-string v3, "restore_interval"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 257
    .local v23, "timeIntervalIndex":I
    const/4 v3, -0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 258
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v15, "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 260
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 261
    .local v21, "pkg":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    .line 262
    .local v4, "mobile":Z
    :goto_2
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x0

    .line 263
    .local v5, "wifi":Z
    :goto_3
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v8, 0x0

    .line 264
    .local v8, "mobileSc":Z
    :goto_4
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v9, 0x0

    .line 265
    .local v9, "wifiSc":Z
    :goto_5
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_8

    const/4 v11, 0x0

    .line 266
    .local v11, "n2g":Z
    :goto_6
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 267
    .local v6, "delay":J
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 269
    .local v12, "interval":J
    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v13}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZJZZZZJ)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 244
    .end local v4    # "mobile":Z
    .end local v5    # "wifi":Z
    .end local v6    # "delay":J
    .end local v8    # "mobileSc":Z
    .end local v9    # "wifiSc":Z
    .end local v11    # "n2g":Z
    .end local v12    # "interval":J
    .end local v15    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v16    # "delayIndex":I
    .end local v18    # "mobileIndex":I
    .end local v19    # "mobileScIndex":I
    .end local v20    # "n2gIndex":I
    .end local v21    # "pkg":Ljava/lang/String;
    .end local v22    # "pkgIndex":I
    .end local v23    # "timeIntervalIndex":I
    .end local v24    # "wifiIndex":I
    .end local v25    # "wifiScIndex":I
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    :catchall_0
    move-exception v10

    move-object/from16 v28, v10

    move-object v10, v3

    move-object/from16 v3, v28

    :goto_7
    if-eqz v14, :cond_3

    if-eqz v10, :cond_c

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_8
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 261
    .restart local v15    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v16    # "delayIndex":I
    .restart local v18    # "mobileIndex":I
    .restart local v19    # "mobileScIndex":I
    .restart local v20    # "n2gIndex":I
    .restart local v21    # "pkg":Ljava/lang/String;
    .restart local v22    # "pkgIndex":I
    .restart local v23    # "timeIntervalIndex":I
    .restart local v24    # "wifiIndex":I
    .restart local v25    # "wifiScIndex":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 262
    .restart local v4    # "mobile":Z
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 263
    .restart local v5    # "wifi":Z
    :cond_6
    const/4 v8, 0x1

    goto :goto_4

    .line 264
    .restart local v8    # "mobileSc":Z
    :cond_7
    const/4 v9, 0x1

    goto :goto_5

    .line 265
    .restart local v9    # "wifiSc":Z
    :cond_8
    const/4 v11, 0x1

    goto :goto_6

    .line 272
    .end local v4    # "mobile":Z
    .end local v5    # "wifi":Z
    .end local v8    # "mobileSc":Z
    .end local v9    # "wifiSc":Z
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 273
    if-eqz v14, :cond_a

    if-eqz v27, :cond_b

    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 277
    :cond_a
    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 273
    :catch_3
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .end local v15    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v16    # "delayIndex":I
    .end local v18    # "mobileIndex":I
    .end local v19    # "mobileScIndex":I
    .end local v20    # "n2gIndex":I
    .end local v22    # "pkgIndex":I
    .end local v23    # "timeIntervalIndex":I
    .end local v24    # "wifiIndex":I
    .end local v25    # "wifiScIndex":I
    :catch_4
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_8

    :catchall_1
    move-exception v3

    move-object/from16 v10, v27

    goto :goto_7
.end method

.method private loadSettingsFromNubiaDb()V
    .locals 8

    .prologue
    .line 184
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadNetworkDelays()V

    .line 185
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadNetworkSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;

    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;JJLjava/util/HashMap;)V

    invoke-virtual {v7, v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadDefaultSettings()V

    goto :goto_0
.end method

.method private loadTrafficSettingsFromDb()V
    .locals 17

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 196
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "content://cn.nubia.security.firewall/mobile"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .local v7, "c1":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 197
    :try_start_1
    const-string v2, "content://cn.nubia.security.firewall/wlan"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 196
    .local v8, "c2":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 198
    if-nez v7, :cond_5

    if-nez v8, :cond_5

    .line 219
    if-eqz v8, :cond_0

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    if-eqz v15, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 223
    .end local v7    # "c1":Landroid/database/Cursor;
    .end local v8    # "c2":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 219
    .restart local v7    # "c1":Landroid/database/Cursor;
    .restart local v8    # "c2":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .local v14, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 196
    .end local v8    # "c2":Landroid/database/Cursor;
    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_2
    if-eqz v7, :cond_2

    if-eqz v3, :cond_e

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .end local v7    # "c1":Landroid/database/Cursor;
    :catch_2
    move-exception v10

    .line 220
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const-string v2, "ApplicationNetworkController"

    const-string v3, "unable load data from traffic database"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "c1":Landroid/database/Cursor;
    .restart local v8    # "c2":Landroid/database/Cursor;
    :cond_3
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .end local v8    # "c2":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object v3, v15

    goto :goto_2

    .restart local v8    # "c2":Landroid/database/Cursor;
    :catch_3
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 201
    :cond_5
    :try_start_a
    const-string v2, "uid"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 202
    .local v12, "uidIndex":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v9, "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    const/4 v2, -0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 204
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 206
    .local v11, "mUid":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 196
    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v11    # "mUid":I
    .end local v12    # "uidIndex":I
    :catch_4
    move-exception v2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 219
    :catchall_2
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_5
    if-eqz v8, :cond_6

    if-eqz v3, :cond_c

    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_6
    :goto_6
    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 208
    .restart local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v12    # "uidIndex":I
    :cond_7
    :try_start_e
    const-string v2, "uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 209
    const/4 v2, -0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 210
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 211
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 212
    .local v13, "wUid":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 213
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    goto :goto_7

    .line 219
    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v12    # "uidIndex":I
    .end local v13    # "wUid":I
    :catchall_3
    move-exception v2

    goto :goto_5

    .line 215
    .restart local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v12    # "uidIndex":I
    .restart local v13    # "wUid":I
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZ)V

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 218
    .end local v13    # "wUid":I
    :cond_9
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 219
    if-eqz v8, :cond_a

    if-eqz v3, :cond_b

    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_a
    :goto_8
    if-eqz v7, :cond_1

    if-eqz v15, :cond_d

    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_1

    :catch_5
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_11
    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_1

    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_6
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    :try_start_12
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v12    # "uidIndex":I
    :catch_7
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_6

    .restart local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .restart local v12    # "uidIndex":I
    :cond_d
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v8    # "c2":Landroid/database/Cursor;
    .end local v9    # "caches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    .end local v12    # "uidIndex":I
    :catch_8
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_3
.end method

.method private realSetUidRule(ILjava/lang/String;ZZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableMobile"    # Z
    .param p4, "enableWifi"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 394
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v2, :cond_0

    .line 395
    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real set mobile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 400
    .local v1, "globalConfig":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz p3, :cond_8

    .line 401
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    if-eqz v2, :cond_2

    .line 402
    :cond_1
    invoke-direct {p0, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setMobileDataUidRule(IZ)V

    .line 404
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;

    invoke-direct {v3, p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    :cond_3
    :goto_0
    if-eqz p4, :cond_a

    .line 420
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    if-eqz v2, :cond_5

    .line 421
    :cond_4
    invoke-direct {p0, p1, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setWifiDataUidRule(IZ)V

    .line 423
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;

    invoke-direct {v3, p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    :cond_6
    :goto_1
    if-nez p3, :cond_7

    if-nez p4, :cond_7

    .line 439
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 440
    .local v0, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v0, :cond_7

    iget-wide v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 441
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v0    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    :cond_7
    return-void

    .line 411
    :cond_8
    invoke-direct {p0, p1, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->hasControlled(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 412
    invoke-direct {p0, p1, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->insertNetControlData(II)V

    .line 413
    if-eqz v1, :cond_9

    iget-boolean v2, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    if-eqz v2, :cond_3

    .line 414
    :cond_9
    invoke-direct {p0, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setMobileDataUidRule(IZ)V

    goto :goto_0

    .line 430
    :cond_a
    invoke-direct {p0, p1, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->hasControlled(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 431
    invoke-direct {p0, p1, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->insertNetControlData(II)V

    .line 432
    if-eqz v1, :cond_b

    iget-boolean v2, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    if-eqz v2, :cond_6

    .line 433
    :cond_b
    invoke-direct {p0, p1, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setWifiDataUidRule(IZ)V

    goto :goto_1
.end method

.method private setMobileDataUidRule(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "enableMobile"    # Z

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setMobileDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 544
    const-string v1, "ApplicationNetworkController"

    const-string v2, "Could not set mobile data uid rule"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setPendingControlRunnable(ILjava/lang/String;Z)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executeImmediately"    # Z

    .prologue
    .line 376
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;)V

    .line 379
    .local v0, "canibr":Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;
    if-eqz p3, :cond_1

    .line 380
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ControlAppNetworkInBackgroundRunnable;->run()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 383
    .local v1, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v1, :cond_0

    .line 386
    iget-wide v4, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    .line 388
    .local v2, "delayedControlMillis":J
    :goto_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPendingControlRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 386
    .end local v2    # "delayedControlMillis":J
    :cond_2
    iget-wide v2, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    goto :goto_1
.end method

.method private setWifiDataUidRule(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "enableWifi"    # Z

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setWifiDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 554
    const-string v1, "ApplicationNetworkController"

    const-string v2, "Could not set wifi data uid rule"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1251
    const-string v2, "==========traffic uids============="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppGlobalConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1253
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mobile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    iget-boolean v2, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    iget-boolean v2, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1258
    const-string v2, "==========delay======================"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default delay time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen off delay time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1263
    const-string v2, "==========managed network apps============="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get app network entry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1266
    return-void
.end method

.method public noteActivityStackRemoved(I)V
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    .line 302
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-eqz p3, :cond_0

    .line 307
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    .line 308
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pausing activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V

    .line 312
    .local v0, "npar":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 341
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v0, "nrpr":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "ApplicationNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumed app die, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;

    invoke-direct {v1, p0, p2, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 286
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    .line 287
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    if-eqz p3, :cond_0

    .line 292
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    .line 293
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V

    .line 297
    .local v0, "nrar":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    .line 329
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 335
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v0, "nspr":Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->ensureNetworkManagementService()V

    .line 317
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-eqz p3, :cond_0

    .line 322
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "ApplicationNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopping activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    .line 282
    return-void
.end method

.method public setUidRule(ILjava/lang/String;ZZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableMobile"    # Z
    .param p4, "enableWifi"    # Z

    .prologue
    const/16 v5, 0x2710

    const/4 v4, 0x0

    .line 447
    if-ge p1, v5, :cond_1

    .line 448
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Do not change uid rule for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_2

    .line 456
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 459
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_5

    .line 460
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 462
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 463
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop to change Uid rule. Multiple packages share the same uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_3
    aget-object v1, v0, v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 470
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop to change Uid rule. Current package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 476
    :cond_4
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no such package for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 482
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->realSetUidRule(ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryTrafficRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1245
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryNetworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mQueryNetworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1248
    :cond_1
    return-void
.end method
