.class public Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
.super Ljava/lang/Object;
.source "ApplicationAlarmWakeupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;
    }
.end annotation


# static fields
.field private static final ATTR_APP_PKG:Ljava/lang/String; = "package"

.field private static final DELIVER_ALLOWED_FILE:Ljava/lang/String; = "security_alarm_deliver_control.xml"

.field private static final NUBIA_ALARM_DELIVER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/alarm_deliver_table"

.field private static final TABLE_PACKAGE_COLUMN:Ljava/lang/String; = "allowed_pkg"

.field private static final TAG:Ljava/lang/String; = "ApplicationAlarmWakelockController"

.field private static final TAG_ALLOWED:Ljava/lang/String; = "allowed"


# instance fields
.field private final mAllowedFile:Ljava/io/File;

.field private mAllowedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedPackagesLock:Ljava/lang/Object;

.field private mCharging:Z

.field private mChargingStateReceiver:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mQueryAllowedDataRunnable:Ljava/lang/Runnable;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    .line 42
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    .line 228
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mQueryAllowedDataRunnable:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    .line 53
    const-string v0, "security_alarm_deliver_control.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedFile:Ljava/io/File;

    .line 55
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    .line 56
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mChargingStateReceiver:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;

    .line 57
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->initData()V

    .line 58
    return-void

    :cond_1
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadAllowedData()V

    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 65
    const-string v1, "security_alarm_deliver_control.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 68
    .local v0, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 69
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    .line 71
    monitor-exit v2

    .line 76
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadAllowedData()V

    goto :goto_0
.end method

.method private loadAllowedData()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadNubiaAllowedData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadDefaultAllowedData()V

    .line 82
    :cond_0
    return-void
.end method

.method private loadDefaultAllowedData()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    const-string v2, "cn.nubia.databackup"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    const-string v2, "cn.nubia.systemupdate"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    const-string v2, "cn.nubia.deskclock.preset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadNubiaAllowedData()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 85
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/alarm_deliver_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 87
    if-nez v7, :cond_2

    .line 99
    if-eqz v7, :cond_0

    if-eqz v13, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move v1, v12

    .line 106
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v1

    .line 99
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 100
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationAlarmWakelockController"

    const-string v2, "failed load nubia default apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v12

    .line 101
    goto :goto_1

    .line 99
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 89
    :cond_2
    :try_start_4
    const-string v2, "allowed_pkg"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 90
    .local v6, "appNameIndex":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v10, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, -0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 92
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 86
    .end local v6    # "appNameIndex":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v7, :cond_3

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 96
    .restart local v6    # "appNameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 97
    :try_start_9
    iput-object v10, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    .line 98
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 99
    if-eqz v7, :cond_5

    if-eqz v13, :cond_6

    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 103
    :cond_5
    :goto_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 105
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 106
    const/4 v1, 0x1

    goto :goto_1

    .line 98
    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 99
    .end local v6    # "appNameIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v2, v13

    goto :goto_3

    .restart local v6    # "appNameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v6    # "appNameIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4

    .line 105
    .restart local v6    # "appNameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v1
.end method


# virtual methods
.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/16 v6, 0x2710

    const/4 v2, 0x1

    .line 159
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isInternationalVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 163
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    if-eqz v3, :cond_2

    .line 164
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 165
    const-string v3, "ApplicationAlarmWakelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charging. Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 174
    .local v1, "uid":I
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 176
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "ApplicationAlarmWakelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name == null. uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    if-ge v1, v6, :cond_4

    .line 184
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "ApplicationAlarmWakelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_4
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 192
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 193
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v4, :cond_5

    .line 194
    const-string v4, "ApplicationAlarmWakelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in whitelist. Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v2, :cond_7

    .line 201
    const-string v2, "ApplicationAlarmWakelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forbid delivering pending non wakeup alarm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 243
    const-string v2, "==========allowed alram deliver pending action when screen off============="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 245
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " items to deliver"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "p":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowed packages : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 251
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    .line 62
    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mQueryAllowedDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mQueryAllowedDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_0
    return-void
.end method
