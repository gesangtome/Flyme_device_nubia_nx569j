.class public Lcn/nubia/server/appmgmt/ApplicationPowerController;
.super Ljava/lang/Object;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;,
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    }
.end annotation


# static fields
.field private static final ALARM_USER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/wakeup_alarm_table"

.field private static final ALARM_USER_SWITCH_FILE:Ljava/lang/String; = "security_alarm_user_switch.xml"

.field private static final ATTR_ALARM:Ljava/lang/String; = "allow_alarm"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final ATTR_WAKE_LOCK:Ljava/lang/String; = "allow_wakelock"

.field private static final CHECK_OPTIMIZE_ALARM:I = 0x2

.field private static final CHECK_OPTIMIZE_WAKELOCK:I = 0x1

.field private static final NUBIA_POWER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/nubia_power_manage_table"

.field private static final NUBIA_POWER_MANAGER_FILE:Ljava/lang/String; = "security_nubia_app_power_manager.xml"

.field private static final TABLE_ALARM_STATUS_COLUMN:Ljava/lang/String; = "alarm_control"

.field private static final TABLE_NUBIA_PKG_COLUMN:Ljava/lang/String; = "application"

.field private static final TABLE_WAKELOCK_STATUS_COLUMN:Ljava/lang/String; = "wakelock_control"

.field private static final TAG:Ljava/lang/String; = "ApplicationPowerController"

.field private static final TAG_APP:Ljava/lang/String; = "app"


# instance fields
.field private final mAppPowerFile:Ljava/io/File;

.field private mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mManagedNubiaApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedNubiaLock:Ljava/lang/Object;

.field private mManagedOtherApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedOtherLock:Ljava/lang/Object;

.field private final mNubiaAppPowerFile:Ljava/io/File;

.field private mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

.field private mQueryAppPowerRunnable:Ljava/lang/Runnable;

.field private mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mDumpDebugLog:Z

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    .line 56
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 57
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 222
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    .line 230
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    .line 62
    const-string v1, "security_alarm_user_switch.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppPowerFile:Ljava/io/File;

    .line 64
    const-string v1, "security_nubia_app_power_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppPowerFile:Ljava/io/File;

    .line 66
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppPowerFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    .line 67
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppPowerFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    .line 68
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->initData()V

    .line 69
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Landroid/os/Handler;)V

    .line 70
    .local v0, "observer":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->observe()V

    .line 71
    return-void

    .line 42
    .end local v0    # "observer":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedOtherApps()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadNubiaPowerData()V

    return-void
.end method

.method private allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z
    .locals 1
    .param p1, "control"    # Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    .param p2, "type"    # I

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, "result":Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mWakelock:Z

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mAlarm:Z

    .line 185
    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 239
    const-string v2, "security_alarm_user_switch.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 241
    .local v1, "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v1, :cond_0

    .line 242
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v3

    .line 243
    :try_start_0
    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 244
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v1    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_0
    :goto_0
    const-string v2, "security_nubia_app_power_manager.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 251
    .local v0, "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v0, :cond_1

    .line 252
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 253
    :try_start_1
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 254
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    .end local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_1
    :goto_1
    return-void

    .line 244
    .restart local v1    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 247
    .end local v1    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedOtherApps()V

    goto :goto_0

    .line 254
    .restart local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 257
    .end local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadNubiaPowerData()V

    goto :goto_1
.end method

.method private loadDefaultNubiaPowerData()V
    .locals 6

    .prologue
    .line 375
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.zdworks.android.zdclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.dotools.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.clocktalent"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.malangstudio.alarmmon"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.smartisan.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.buykee.beautyclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.dianxinos.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.baiyicare.healthalarm"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.deskclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.youan.alarm"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.crossmo.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.when.coco"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.lenovo.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.baidu.smartcalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "cn.etouch.ecalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "oms.mmc.app.almanac_inland"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "me.iweek.rili"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.zdworks.android.zdcalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.lgl.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.youloft.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    monitor-exit v1

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadManagedNubiaApps()Z
    .locals 18

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 322
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "content://cn.nubia.security.power/nubia_power_manage_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 323
    if-nez v10, :cond_2

    .line 324
    const/4 v2, 0x0

    .line 339
    if-eqz v10, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 339
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v11

    .line 340
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationPowerController"

    const-string v3, "failed load nubia default apps"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    goto :goto_0

    .line 339
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 325
    :cond_2
    :try_start_4
    const-string v2, "application"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 326
    .local v9, "appNameIndex":I
    const-string v2, "wakelock_control"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 327
    .local v15, "wakelockIndex":I
    const-string v2, "alarm_control"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 328
    .local v8, "alarmIndex":I
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 329
    .local v13, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 330
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v14, 0x1

    .line 333
    .local v14, "wakelockControl":Z
    :goto_2
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const/4 v7, 0x1

    .line 334
    .local v7, "alarmControl":Z
    :goto_3
    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v2, v14, v7}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v13, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 322
    .end local v7    # "alarmControl":Z
    .end local v8    # "alarmIndex":I
    .end local v9    # "appNameIndex":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .end local v14    # "wakelockControl":Z
    .end local v15    # "wakelockIndex":I
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    :catchall_0
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_4
    if-eqz v10, :cond_3

    if-eqz v3, :cond_9

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_5
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 332
    .restart local v8    # "alarmIndex":I
    .restart local v9    # "appNameIndex":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v15    # "wakelockIndex":I
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 333
    .restart local v14    # "wakelockControl":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 336
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "wakelockControl":Z
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 337
    :try_start_9
    move-object/from16 v0, p0

    iput-object v13, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 338
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 339
    if-eqz v10, :cond_7

    if-eqz v3, :cond_8

    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 343
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 344
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 345
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 346
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 338
    :catchall_1
    move-exception v2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 339
    .end local v8    # "alarmIndex":I
    .end local v9    # "appNameIndex":I
    .end local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .end local v15    # "wakelockIndex":I
    :catchall_2
    move-exception v2

    goto :goto_4

    .restart local v8    # "alarmIndex":I
    .restart local v9    # "appNameIndex":I
    .restart local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v15    # "wakelockIndex":I
    :catch_3
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    :try_start_e
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .end local v8    # "alarmIndex":I
    .end local v9    # "appNameIndex":I
    .end local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .end local v15    # "wakelockIndex":I
    :catch_4
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 345
    .restart local v8    # "alarmIndex":I
    .restart local v9    # "appNameIndex":I
    .restart local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v15    # "wakelockIndex":I
    :catchall_3
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v2
.end method

.method private loadManagedOtherApps()V
    .locals 15

    .prologue
    .line 350
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/wakeup_alarm_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 352
    if-nez v9, :cond_3

    .line 366
    if-eqz v9, :cond_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 366
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v10

    .line 367
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationPowerController"

    const-string v2, "failed load other apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 371
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 366
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 354
    :cond_3
    :try_start_5
    const-string v1, "application"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 355
    .local v8, "appNameIndex":I
    const-string v1, "alarm_control"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 356
    .local v7, "alarmIndex":I
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 357
    .local v12, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v1, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 358
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 359
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v6, 0x1

    .line 361
    .local v6, "alarmControl":Z
    :goto_3
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v6}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v12, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 351
    .end local v6    # "alarmControl":Z
    .end local v7    # "alarmIndex":I
    .end local v8    # "appNameIndex":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catch_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 366
    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_4
    if-eqz v9, :cond_4

    if-eqz v2, :cond_8

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_5
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 360
    .restart local v7    # "alarmIndex":I
    .restart local v8    # "appNameIndex":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 363
    .end local v11    # "name":Ljava/lang/String;
    :cond_6
    :try_start_9
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 364
    :try_start_a
    iput-object v12, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 365
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 366
    if-eqz v9, :cond_1

    if-eqz v2, :cond_7

    :try_start_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :catch_3
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    .line 365
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 366
    .end local v7    # "alarmIndex":I
    .end local v8    # "appNameIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_3
    move-exception v1

    goto :goto_4

    .restart local v7    # "alarmIndex":I
    .restart local v8    # "appNameIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_7
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "alarmIndex":I
    .end local v8    # "appNameIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catch_4
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_5
.end method

.method private loadNubiaPowerData()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedNubiaApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadDefaultNubiaPowerData()V

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public allowAppFullWakeLockScreenOff(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 97
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowAppPartialWakelock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 86
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public allowAppWakeupAlarm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isInternationalVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.google.android.gms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_3
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isManageWakeupAlarm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v0, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v0, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_5
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 150
    const-string v3, "==========managed nubia apps============="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 152
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 154
    .local v2, "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", allow wakeup alarm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", allow partial wakelock="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 161
    const-string v3, "==========managed other apps============="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v4

    .line 163
    :try_start_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 165
    .restart local v2    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", allow wakeup alarm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", allow partial wakelock="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 171
    return-void
.end method

.method public isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_1
    return-void
.end method
