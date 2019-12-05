.class public Lcn/nubia/server/appmgmt/freezer/TrafficUtils;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficUtils"

.field private static mDebug:Z

.field private static mIface_3g:Ljava/lang/String;

.field private static mIface_wifi:Ljava/lang/String;

.field private static mNMS:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    .line 17
    const-string v0, ""

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    .line 20
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mDebug:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileBytes()J
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUidMobileBytes(I)J
    .locals 9
    .param p0, "uid"    # I

    .prologue
    .line 84
    sget-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->initPlatIface()V

    .line 87
    :cond_0
    const-wide/16 v4, 0x0

    .line 89
    .local v4, "value":J
    :try_start_0
    const-string v3, "nubia.net.NubiaTrafficStats"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 90
    .local v2, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getIfaceUidTxBytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 93
    const-string v3, "getIfaceUidRxBytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long/2addr v4, v6

    .line 99
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-wide v4

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUidWifiBytes(I)J
    .locals 9
    .param p0, "uid"    # I

    .prologue
    .line 23
    sget-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->initPlatIface()V

    .line 26
    :cond_0
    const-wide/16 v4, 0x0

    .line 28
    .local v4, "value":J
    :try_start_0
    const-string v3, "nubia.net.NubiaTrafficStats"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 29
    .local v2, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getIfaceUidTxBytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 32
    const-string v3, "getIfaceUidRxBytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 34
    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long/2addr v4, v6

    .line 38
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-wide v4

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static initNetworkManagementService()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    .line 81
    return-void
.end method

.method private static initPlatIface()V
    .locals 8

    .prologue
    .line 59
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    .local v3, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.hardware"

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "plat":Ljava/lang/String;
    const-string v4, "qcom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const-string v4, "rmnet_data0"

    sput-object v4, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 65
    const-string v4, "wlan0"

    sput-object v4, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    .line 76
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "plat":Ljava/lang/String;
    :goto_0
    return-void

    .line 66
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "plat":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const-string v4, "ccmni0"

    sput-object v4, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 68
    const-string v4, "wlan0"

    sput-object v4, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "plat":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "plat":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "rmnet_data0"

    sput-object v4, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 71
    const-string v4, "wlan0"

    sput-object v4, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isUidBytesNotExist()Z
    .locals 8

    .prologue
    .line 42
    const/4 v2, 0x1

    .line 44
    .local v2, "result":Z
    :try_start_0
    const-string v4, "nubia.net.NubiaTrafficStats"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 46
    .local v3, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getIfaceUidTxBytes"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 54
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setMobileWifiDataUidRule(IZ)Z
    .locals 4
    .param p0, "uid"    # I
    .param p1, "enableData"    # Z

    .prologue
    .line 107
    const/4 v1, 0x1

    .line 108
    .local v1, "success":Z
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    .line 109
    invoke-static {}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->initNetworkManagementService()V

    .line 113
    :cond_0
    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p0, p1}, Landroid/os/INetworkManagementService;->setMobileDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    :try_start_1
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p0, p1}, Landroid/os/INetworkManagementService;->setWifiDataUidRule(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :cond_2
    :goto_1
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 116
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mDebug:Z

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "TrafficUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 125
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mDebug:Z

    if-eqz v2, :cond_2

    .line 126
    const-string v2, "TrafficUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
