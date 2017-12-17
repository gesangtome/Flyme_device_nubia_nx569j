.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x2000000L

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LAST_SPACE_FILE:Ljava/lang/String; = "/data/system/last_space"

.field private static final LAST_SPACE_SIZE:J = 0x500000L

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field public static final SMARTSHOW_MANAGER_SERVICE:Ljava/lang/String; = "com.powermo.smartshow.frameworks.SmartShowManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field SmartShowManagerInit:Ljava/lang/reflect/Method;

.field SmartShowManagerService:Ljava/lang/Class;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field mSmartShowManager:Ljava/lang/Object;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    .line 139
    iput-object v0, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 140
    iput-object v0, p0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    .line 269
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer;->updateCurrentTheme(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 131
    invoke-static {}, Lcom/android/server/SystemServer;->createLastSpaceFile()V

    return-void
.end method

.method private static createLastSpaceFile()V
    .locals 6

    .prologue
    .line 233
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/last_space"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    new-instance v1, Lcom/android/server/SystemServer$1;

    const-string v2, "lastspace-create"

    invoke-direct {v1, v2}, Lcom/android/server/SystemServer$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemServer$1;->start()V

    .line 264
    :cond_1
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 415
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 416
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/android/server/SystemServer;->removeLastSpaceFile()V

    .line 215
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 216
    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 398
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 401
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 404
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 405
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 412
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 407
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private static removeLastSpaceFile()V
    .locals 8

    .prologue
    .line 220
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    .line 222
    .local v2, "free":J
    const-wide/32 v4, 0x2000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 223
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer data free="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/system/last_space"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer delete lastspace size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 230
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 393
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 278
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 290
    :cond_0
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 310
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 315
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 316
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$2;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 325
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 329
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 333
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 337
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 340
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 343
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 346
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 348
    invoke-static {}, Landroid/os/Looper;->enableLooperSample()V

    .line 352
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 359
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 362
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 363
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 368
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtFirst()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 374
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtLast()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 389
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :catch_0
    move-exception v6

    .line 377
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 435
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 437
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v5, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v5, :cond_0

    .line 438
    const-string v5, "SystemServer"

    const-string v8, "Load SmartShowManager"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v8, "com.powermo.smartshow.frameworks.SmartShowManagerService"

    invoke-virtual {v5, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    .line 441
    iget-object v5, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 442
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 443
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 444
    const-string v8, "SmartShowManager"

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    const/4 v9, 0x1

    invoke-static {v8, v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 456
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 458
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 459
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 465
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 469
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 472
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 476
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 479
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 482
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "cryptState":Ljava/lang/String;
    const-string v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 484
    const-string v5, "SystemServer"

    const-string v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 491
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 492
    const-string v5, "SystemServer"

    const-string v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 494
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 498
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_2
    const-string v5, "SystemServer"

    const-string v8, "Package Manager"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 501
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 502
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 504
    const-string v5, "SystemServer"

    const-string v6, "User Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v5, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 508
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 511
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 515
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 516
    return-void

    .line 445
    .end local v0    # "cryptState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "System"

    const-string v8, "Failed to load SmartShowManager: "

    invoke-static {v5, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    goto/16 :goto_0

    .line 486
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    const-string v5, "SystemServer"

    const-string v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_1

    :cond_4
    move v5, v7

    .line 499
    goto :goto_2
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 526
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 527
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 533
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 534
    return-void
.end method

.method private startNubiaServicesAtFirst()V
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    sget-object v1, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServices(Lcom/android/server/SystemServiceManager;Lcn/nubia/server/Sequence;)V

    .line 1470
    return-void
.end method

.method private startNubiaServicesAtLast()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServices(Lcom/android/server/SystemServiceManager;Lcn/nubia/server/Sequence;)V

    .line 1474
    return-void
.end method

.method private startOtherServices()V
    .locals 110

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 542
    .local v5, "context":Landroid/content/Context;
    const/16 v32, 0x0

    .line 543
    .local v32, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v49, 0x0

    .line 544
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    const/16 v103, 0x0

    .line 545
    .local v103, "vibrator":Lcom/android/server/VibratorService;
    const/16 v34, 0x0

    .line 546
    .local v34, "alarm":Landroid/app/IAlarmManager;
    const/16 v79, 0x0

    .line 547
    .local v79, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 548
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 549
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v80, 0x0

    .line 550
    .local v80, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .line 551
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v81, 0x0

    .line 552
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v90, 0x0

    .line 553
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v109, 0x0

    .line 554
    .local v109, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v102, 0x0

    .line 555
    .local v102, "usb":Lcom/android/server/usb/UsbService;
    const/16 v88, 0x0

    .line 556
    .local v88, "serial":Lcom/android/server/SerialService;
    const/16 v84, 0x0

    .line 557
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .line 558
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v68, 0x0

    .line 559
    .local v68, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v96, 0x0

    .line 560
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v45, 0x0

    .line 561
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v37, 0x0

    .line 562
    .local v37, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v78, 0x0

    .line 563
    .local v78, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v64, 0x0

    .line 564
    .local v64, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v39, 0x0

    .line 566
    .local v39, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v62, 0x0

    .line 569
    .local v62, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    const/16 v100, 0x0

    .line 572
    .local v100, "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    const-string v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 573
    .local v59, "disableStorage":Z
    const-string v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 574
    .local v54, "disableBluetooth":Z
    const-string v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 575
    .local v55, "disableLocation":Z
    const-string v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 576
    .local v60, "disableSystemUI":Z
    const-string v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 577
    .local v58, "disableNonCoreServices":Z
    const-string v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 578
    .local v56, "disableNetwork":Z
    const-string v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 579
    .local v57, "disableNetworkTime":Z
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    .line 580
    .local v70, "isEmulator":Z
    const-string v6, "config.disable_atlas"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 583
    .local v53, "disableAtlas":Z
    const/16 v47, 0x0

    .line 585
    .local v47, "containerService":Landroid/os/IBinder;
    :try_start_0
    sget-boolean v6, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_ALL:Z

    if-nez v6, :cond_0

    .line 586
    const-string v6, "SystemServer"

    const-string v7, "Loading SmartContainer Core service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.cmx.cmplus.SmartContainerManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    .line 590
    .local v48, "containerServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    .line 591
    .local v52, "ctor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 592
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v47, v0

    .line 593
    const-string v6, "start"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v92

    .line 594
    .local v92, "startMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v92

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v6, "smart_container"

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 596
    const-string v6, "setInstallerConnection"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lcom/android/internal/os/InstallerConnection;

    aput-object v11, v7, v10

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v91

    .line 597
    .local v91, "setMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v10}, Lcom/android/server/pm/Installer;->getInstallerConnection()Lcom/android/internal/os/InstallerConnection;

    move-result-object v10

    aput-object v10, v6, v7

    move-object/from16 v0, v91

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 605
    .end local v48    # "containerServiceClass":Ljava/lang/Class;
    .end local v52    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v91    # "setMethod":Ljava/lang/reflect/Method;
    .end local v92    # "startMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 608
    const-string v6, "SystemServer"

    const-string v7, "Scheduling Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 613
    const-string v6, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v97, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 615
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_3
    const-string v6, "telephony.registry"

    move-object/from16 v0, v97

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 617
    const-string v6, "SystemServer"

    const-string v7, "Entropy Mixer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v65, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_41

    .line 620
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_4
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 622
    const-string v6, "SystemServer"

    const-string v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 628
    :try_start_5
    const-string v6, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v33, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 630
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_6
    const-string v6, "account"

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_42

    move-object/from16 v32, v33

    .line 635
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_1
    :try_start_7
    const-string v6, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    const/4 v6, 0x1

    :goto_2
    invoke-static {v5, v6}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v49

    .line 639
    const-string v6, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 642
    const-string v6, "SystemServer"

    const-string v7, "Vibrator Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v104, Lcom/android/server/VibratorService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 644
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    :try_start_8
    const-string v6, "vibrator"

    move-object/from16 v0, v104

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 646
    const-string v6, "SystemServer"

    const-string v7, "Consumer IR Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v46, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_43

    .line 648
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_9
    const-string v6, "consumer_ir"

    move-object/from16 v0, v46

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 651
    const-string v6, "alarm"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v34

    .line 654
    const-string v6, "SystemServer"

    const-string v7, "Init Watchdog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v108

    .line 656
    .local v108, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v108

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const-string v6, "SystemServer"

    const-string v7, "Input Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v69, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_44

    .line 661
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_a
    const-string v6, "SystemServer"

    const-string v7, "Window Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2b

    const/4 v6, 0x1

    move v7, v6

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v6, :cond_2c

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v69

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v109

    .line 665
    const-string v6, "window"

    move-object/from16 v0, v109

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 666
    const-string v6, "input"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 669
    sget-boolean v6, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    if-nez v6, :cond_1

    .line 671
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    const-string v7, "init"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Lcom/android/server/am/ActivityManagerService;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Lcom/android/server/wm/WindowManagerService;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Lcom/android/server/display/DisplayManagerService;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    .line 673
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v109, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    .line 679
    :cond_1
    :goto_5
    :try_start_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v109

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 681
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v69

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v69 .. v69}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "SystemServer"

    const-string v7, "Edge Pointer Event Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v63, Lcn/nubia/server/edge/EdgePointerEventService;

    move-object/from16 v0, v63

    move-object/from16 v1, v109

    move-object/from16 v2, v69

    invoke-direct {v0, v5, v1, v2}, Lcn/nubia/server/edge/EdgePointerEventService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    .line 688
    .end local v62    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .local v63, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :try_start_d
    const-string v6, "nubia.edge.touch"

    move-object/from16 v0, v63

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_45

    move-object/from16 v62, v63

    .line 694
    .end local v63    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v62    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :cond_2
    :try_start_e
    new-instance v101, Lcn/nubia/server/theme/TypefaceReloadService;

    invoke-direct/range {v101 .. v101}, Lcn/nubia/server/theme/TypefaceReloadService;-><init>()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5

    .line 695
    .end local v100    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .local v101, "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :try_start_f
    const-string v6, "cn.nubia.typefaceReloadService"

    move-object/from16 v0, v101

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 705
    if-eqz v70, :cond_2d

    .line 706
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooh Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    :goto_6
    move-object/from16 v100, v101

    .end local v101    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v100    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .line 723
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v108    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    :goto_7
    const/16 v93, 0x0

    .line 724
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v86, 0x0

    .line 725
    .local v86, "notification":Landroid/app/INotificationManager;
    const/16 v66, 0x0

    .line 726
    .local v66, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v106, 0x0

    .line 727
    .local v106, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v71, 0x0

    .line 728
    .local v71, "location":Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .line 729
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v98, 0x0

    .line 730
    .local v98, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v73, 0x0

    .line 731
    .local v73, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v35, 0x0

    .line 732
    .local v35, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v75, 0x0

    .line 735
    .local v75, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 737
    :try_start_10
    const-string v6, "SystemServer"

    const-string v7, "Input Method Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v67, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v67

    move-object/from16 v1, v109

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 739
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_11
    const-string v6, "input_method"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_40

    move-object/from16 v66, v67

    .line 745
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_8
    :try_start_12
    const-string v6, "SystemServer"

    const-string v7, "Accessibility Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 754
    :cond_3
    :goto_9
    :try_start_13
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 759
    :goto_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 760
    if-nez v59, :cond_4

    const-string v6, "0"

    const-string v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 767
    :try_start_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 768
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    move-result-object v79

    .line 778
    :cond_4
    :goto_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 781
    :try_start_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 798
    :goto_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_33

    .line 799
    if-nez v58, :cond_6

    .line 801
    :try_start_16
    const-string v6, "SystemServer"

    const-string v7, "LockSettingsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v74, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 803
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_17
    const-string v6, "lock_settings"

    move-object/from16 v0, v74

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3f

    move-object/from16 v73, v74

    .line 808
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 809
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 812
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 816
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 819
    :cond_6
    if-nez v60, :cond_7

    .line 821
    :try_start_18
    const-string v6, "SystemServer"

    const-string v7, "Status Bar"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v94, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v94

    move-object/from16 v1, v109

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 823
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v94, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_19
    const-string v6, "statusbar"

    move-object/from16 v0, v94

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3e

    move-object/from16 v93, v94

    .line 829
    .end local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_7
    :goto_e
    if-nez v58, :cond_8

    .line 831
    :try_start_1a
    const-string v6, "SystemServer"

    const-string v7, "Clipboard Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v6, "clipboard"

    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 839
    :cond_8
    :goto_f
    if-nez v56, :cond_9

    .line 841
    :try_start_1b
    const-string v6, "SystemServer"

    const-string v7, "NetworkManagement Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 843
    const-string v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .line 849
    :cond_9
    :goto_10
    if-nez v58, :cond_a

    .line 851
    :try_start_1c
    const-string v6, "SystemServer"

    const-string v7, "Text Service Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v99, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_10

    .line 853
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v99, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1d
    const-string v6, "textservices"

    move-object/from16 v0, v99

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3d

    move-object/from16 v98, v99

    .line 859
    .end local v99    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_a
    :goto_11
    if-nez v56, :cond_32

    .line 861
    :try_start_1e
    const-string v6, "SystemServer"

    const-string v7, "Network Score Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v82, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_11

    .line 863
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1f
    const-string v6, "network_score"

    move-object/from16 v0, v82

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3c

    move-object/from16 v81, v82

    .line 869
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_20
    const-string v6, "SystemServer"

    const-string v7, "NetworkStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v83, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v83

    move-object/from16 v1, v34

    invoke-direct {v0, v5, v9, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    .line 871
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_21
    const-string v6, "netstats"

    move-object/from16 v0, v83

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_3b

    move-object/from16 v8, v83

    .line 877
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_22
    const-string v6, "SystemServer"

    const-string v7, "NetworkPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_13

    .line 882
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_23
    const-string v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3a

    .line 887
    :goto_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 888
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 889
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 892
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 894
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 896
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    :cond_c
    :try_start_24
    const-string v6, "SystemServer"

    const-string v7, "Connectivity Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 903
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v6, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 904
    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 905
    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_39

    move-object/from16 v43, v44

    .line 911
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_26
    const-string v6, "SystemServer"

    const-string v7, "Network Service Discovery Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v90

    .line 913
    const-string v6, "servicediscovery"

    move-object/from16 v0, v90

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 920
    :goto_16
    if-nez v58, :cond_d

    .line 922
    :try_start_27
    const-string v6, "SystemServer"

    const-string v7, "UpdateLock Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 935
    :cond_d
    :goto_17
    if-eqz v79, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_e

    .line 937
    :try_start_28
    invoke-interface/range {v79 .. v79}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_30

    .line 943
    :cond_e
    :goto_18
    if-eqz v32, :cond_f

    .line 944
    :try_start_29
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .line 950
    :cond_f
    :goto_19
    if-eqz v49, :cond_10

    .line 951
    :try_start_2a
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    .line 956
    :cond_10
    :goto_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 957
    const-string v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v86

    .line 959
    move-object/from16 v0, v86

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 963
    if-nez v55, :cond_11

    .line 965
    :try_start_2b
    const-string v6, "SystemServer"

    const-string v7, "Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v72, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 967
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .local v72, "location":Lcom/android/server/LocationManagerService;
    :try_start_2c
    const-string v6, "location"

    move-object/from16 v0, v72

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_38

    move-object/from16 v71, v72

    .line 973
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    :goto_1b
    :try_start_2d
    const-string v6, "SystemServer"

    const-string v7, "Country Detector"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 975
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2e
    const-string v6, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_37

    move-object/from16 v50, v51

    .line 981
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_1c
    if-nez v58, :cond_12

    .line 983
    :try_start_2f
    const-string v6, "SystemServer"

    const-string v7, "Search Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v6, "search"

    new-instance v7, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1b

    .line 992
    :cond_12
    :goto_1d
    :try_start_30
    const-string v6, "SystemServer"

    const-string v7, "DropBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v6, "dropbox"

    new-instance v7, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1c

    .line 999
    :goto_1e
    if-nez v58, :cond_13

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1002
    :try_start_31
    const-string v6, "SystemServer"

    const-string v7, "Wallpaper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v107, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v107

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1d

    .line 1004
    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_32
    const-string v6, "wallpaper"

    move-object/from16 v0, v107

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_36

    move-object/from16 v106, v107

    .line 1011
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_13
    :goto_1f
    :try_start_33
    const-string v6, "SystemServer"

    const-string v7, "Audio Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v38, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 1013
    .end local v37    # "audioService":Lcom/android/server/audio/AudioService;
    .local v38, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_34
    const-string v6, "audio"

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_35

    move-object/from16 v37, v38

    .line 1018
    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v37    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_20
    if-nez v58, :cond_14

    .line 1019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1023
    :cond_14
    :try_start_35
    const-string v6, "SystemServer"

    const-string v7, "Wired Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v68

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 1031
    :goto_21
    if-nez v58, :cond_18

    .line 1032
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1037
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1041
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1045
    :cond_17
    :try_start_36
    const-string v6, "SystemServer"

    const-string v7, "Serial Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v89, Lcom/android/server/SerialService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 1048
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .local v89, "serial":Lcom/android/server/SerialService;
    :try_start_37
    const-string v6, "serial"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_34

    move-object/from16 v88, v89

    .line 1054
    .end local v89    # "serial":Lcom/android/server/SerialService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    :cond_18
    :goto_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1056
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1058
    if-nez v58, :cond_1c

    .line 1059
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1060
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1063
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1064
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1067
    :cond_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1068
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1071
    :cond_1b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1072
    const-string v6, "SystemServer"

    const-string v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1078
    :cond_1c
    :try_start_38
    const-string v6, "SystemServer"

    const-string v7, "DiskStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .line 1089
    :goto_23
    :try_start_39
    const-string v6, "SystemServer"

    const-string v7, "SamplingProfiler Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 1096
    :goto_24
    if-nez v56, :cond_1d

    if-nez v57, :cond_1d

    .line 1098
    :try_start_3a
    const-string v6, "SystemServer"

    const-string v7, "NetworkTimeUpdateService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v84, v85

    .line 1106
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1d
    :goto_25
    :try_start_3b
    const-string v6, "SystemServer"

    const-string v7, "CommonTimeManagementService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .line 1108
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3c
    const-string v6, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_33

    move-object/from16 v40, v41

    .line 1113
    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_26
    if-nez v56, :cond_1e

    .line 1115
    :try_start_3d
    const-string v6, "SystemServer"

    const-string v7, "CertBlacklister"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v6, Lcom/android/server/CertBlacklister;

    invoke-direct {v6, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_25

    .line 1122
    :cond_1e
    :goto_27
    if-nez v58, :cond_1f

    .line 1124
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_1f
    if-nez v58, :cond_20

    if-nez v53, :cond_20

    :try_start_3e
    const-string v6, "SystemServer"

    const-string v7, "Assets Atlas Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v36, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_26

    .line 1131
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3f
    const-string v6, "assetatlas"

    move-object/from16 v0, v36

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_32

    move-object/from16 v35, v36

    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_20
    :goto_28
    if-nez v58, :cond_21

    const-string v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1142
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1143
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1146
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1148
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1150
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1154
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1155
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1158
    :cond_24
    if-nez v58, :cond_25

    .line 1160
    :try_start_40
    const-string v6, "SystemServer"

    const-string v7, "Media Router Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v76, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 1162
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_41
    const-string v6, "media_router"

    move-object/from16 v0, v76

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_31

    move-object/from16 v75, v76

    .line 1167
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1172
    :try_start_42
    const-string v6, "SystemServer"

    const-string v7, "BackgroundDexOptService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 1180
    :cond_25
    :goto_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1183
    :goto_2b
    if-nez v58, :cond_26

    .line 1184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1189
    :cond_26
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v87

    .line 1190
    .local v87, "safeMode":Z
    if-eqz v87, :cond_31

    .line 1191
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1193
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1200
    :goto_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v78

    .end local v78    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v78, Lcom/android/server/MmsServiceBroker;

    .restart local v78    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_43
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    :goto_2d
    if-eqz v73, :cond_27

    :try_start_44
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    :cond_27
    :goto_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1224
    :try_start_45
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 1229
    :goto_2f
    if-eqz v87, :cond_28

    .line 1230
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1236
    :cond_28
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .line 1237
    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v77, Landroid/util/DisplayMetrics;

    invoke-direct/range {v77 .. v77}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1238
    .local v77, "metrics":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/view/WindowManager;

    .line 1239
    .local v105, "w":Landroid/view/WindowManager;
    invoke-interface/range {v105 .. v105}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v77

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1240
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v42

    move-object/from16 v1, v77

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1244
    :try_start_46
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    .line 1250
    :goto_30
    :try_start_47
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    .line 1257
    :goto_31
    :try_start_48
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v87

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 1263
    :goto_32
    move-object v14, v9

    .line 1264
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 1265
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 1266
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v43

    .line 1267
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v81

    .line 1268
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v106

    .line 1269
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v66

    .line 1270
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v71

    .line 1271
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v50

    .line 1272
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v84

    .line 1273
    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v40

    .line 1274
    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v98

    .line 1275
    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v93

    .line 1276
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v35

    .line 1277
    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v68

    .line 1278
    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v96

    .line 1279
    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v75

    .line 1280
    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v37

    .line 1281
    .local v18, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v31, v78

    .line 1288
    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$3;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v31}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1434
    sget-boolean v6, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_ALL:Z

    if-nez v6, :cond_29

    .line 1435
    const-string v6, "SystemServer"

    const-string v7, "System Ready for SmartContainer Core service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :try_start_49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.cmx.cmplus.SmartContainerManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    .line 1439
    .restart local v48    # "containerServiceClass":Ljava/lang/Class;
    const-string v6, "systemReady"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v95

    .line 1440
    .local v95, "systemReadyMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v95

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_2f

    .line 1448
    .end local v48    # "containerServiceClass":Ljava/lang/Class;
    .end local v95    # "systemReadyMethod":Ljava/lang/reflect/Method;
    :cond_29
    :goto_33
    return-void

    .line 598
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v77    # "metrics":Landroid/util/DisplayMetrics;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v87    # "safeMode":Z
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v105    # "w":Landroid/view/WindowManager;
    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_0
    move-exception v61

    .line 599
    .local v61, "e":Ljava/lang/Exception;
    :try_start_4a
    const-string v6, "System"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load container service. Disable all!\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v61

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual/range {v61 .. v61}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->turnOff()V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_1

    goto/16 :goto_0

    .line 718
    .end local v61    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v61

    .line 719
    .local v61, "e":Ljava/lang/RuntimeException;
    :goto_34
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 631
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2
    move-exception v61

    .line 632
    .local v61, "e":Ljava/lang/Throwable;
    :goto_35
    :try_start_4b
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object/from16 v0, v61

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_3

    goto/16 :goto_1

    .line 718
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v61

    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_34

    .line 636
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 662
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2b
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_3

    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 674
    :catch_4
    move-exception v61

    .line 675
    .restart local v61    # "e":Ljava/lang/Throwable;
    :try_start_4c
    const-string v6, "failed to init smartshow"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_5

    goto/16 :goto_5

    .line 718
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v61

    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_34

    .line 707
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2d
    :try_start_4d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e

    .line 708
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 718
    :catch_6
    move-exception v61

    move-object/from16 v100, v101

    .end local v101    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v100    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_34

    .line 709
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 711
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 712
    :cond_2f
    if-eqz v54, :cond_30

    .line 713
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 715
    :cond_30
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_6

    goto/16 :goto_6

    .line 740
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v108    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v100    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_7
    move-exception v61

    .line 741
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v6, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 748
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v61

    .line 749
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 755
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v61

    .line 756
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 770
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v61

    .line 771
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 782
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v61

    .line 783
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 804
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v61

    .line 805
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 824
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v61

    .line 825
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 834
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v61

    .line 835
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 844
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v61

    .line 845
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 854
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v61

    .line 855
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v6, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 864
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    .line 865
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 872
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v61

    .line 873
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 883
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v61

    move-object/from16 v4, v80

    .line 884
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 906
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v61

    .line 907
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 915
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v61

    .line 916
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 925
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v61

    .line 926
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 945
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v61

    .line 946
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 952
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v61

    .line 953
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 968
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v61

    .line 969
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 976
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v61

    .line 977
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 986
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v61

    .line 987
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 995
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v61

    .line 996
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1005
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v61

    .line 1006
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v6, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1014
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v61

    .line 1015
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v6, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1027
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v61

    .line 1028
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1049
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v61

    .line 1050
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SerialService"

    move-object/from16 v0, v61

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 1080
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v61

    .line 1081
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1092
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v61

    .line 1093
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1100
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v61

    .line 1101
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1109
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v61

    .line 1110
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1117
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v61

    .line 1118
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1132
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v61

    .line 1133
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v6, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1163
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v61

    .line 1164
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1174
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v61

    .line 1175
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1196
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v87    # "safeMode":Z
    :cond_31
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2c

    .line 1206
    :catch_29
    move-exception v61

    .line 1207
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1213
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v61

    .line 1214
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1225
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v61

    .line 1226
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1245
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v77    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v105    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v61

    .line 1246
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1251
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v61

    .line 1252
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1258
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v61

    .line 1259
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1441
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .restart local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    :catch_2f
    move-exception v61

    .line 1442
    .local v61, "e":Ljava/lang/Exception;
    const-string v6, "System"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to do system ready. Disable all!\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v61

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual/range {v61 .. v61}, Ljava/lang/Exception;->printStackTrace()V

    .line 1444
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->turnOff()V

    goto/16 :goto_33

    .line 938
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v61    # "e":Ljava/lang/Exception;
    .end local v77    # "metrics":Landroid/util/DisplayMetrics;
    .end local v87    # "safeMode":Z
    .end local v105    # "w":Landroid/view/WindowManager;
    :catch_30
    move-exception v6

    goto/16 :goto_18

    .line 1163
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_31
    move-exception v61

    move-object/from16 v75, v76

    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_45

    .line 1132
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_32
    move-exception v61

    move-object/from16 v35, v36

    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_44

    .line 1109
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_33
    move-exception v61

    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_43

    .line 1049
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .restart local v89    # "serial":Lcom/android/server/SerialService;
    :catch_34
    move-exception v61

    move-object/from16 v88, v89

    .end local v89    # "serial":Lcom/android/server/SerialService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_42

    .line 1014
    .end local v37    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v38    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_35
    move-exception v61

    move-object/from16 v37, v38

    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v37    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_41

    .line 1005
    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_36
    move-exception v61

    move-object/from16 v106, v107

    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_40

    .line 976
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_37
    move-exception v61

    move-object/from16 v50, v51

    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3f

    .line 968
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    :catch_38
    move-exception v61

    move-object/from16 v71, v72

    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3e

    .line 906
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_39
    move-exception v61

    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .line 883
    :catch_3a
    move-exception v61

    goto/16 :goto_3c

    .line 872
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3b
    move-exception v61

    move-object/from16 v8, v83

    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 864
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3c
    move-exception v61

    move-object/from16 v81, v82

    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3a

    .line 854
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v99    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3d
    move-exception v61

    move-object/from16 v98, v99

    .end local v99    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_39

    .line 824
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3e
    move-exception v61

    move-object/from16 v93, v94

    .end local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_38

    .line 804
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3f
    move-exception v61

    move-object/from16 v73, v74

    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_37

    .line 740
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_40
    move-exception v61

    move-object/from16 v66, v67

    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_36

    .line 718
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_41
    move-exception v61

    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_34

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v61

    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v33

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :catch_43
    move-exception v61

    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v61

    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "watchdog":Lcom/android/server/Watchdog;
    :catch_45
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v62    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    move-object/from16 v64, v65

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v96, v97

    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .line 631
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v61

    move-object/from16 v32, v33

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_32
    move-object/from16 v4, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_33
    move-object/from16 v4, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2b
.end method

.method static final startPresetPackageInstall(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1460
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.presetpackageinstaller"

    const-string v3, "cn.nubia.presetpackageinstaller.PresetPackageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1462
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1463
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1452
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1455
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1456
    return-void
.end method

.method private updateCurrentTheme(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.intent.action.UPDATE_CURRENT_THEME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.theme.apply"

    const-string v3, "cn.nubia.theme.apply.ThemeApplyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1483
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1484
    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
