.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static LOCAL_SMARTSHOW_SENSOR_CONFIG:I

.field private static mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static sSensorModuleInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainLooper:Landroid/os/Looper;

.field private mMode:I

.field private final mNativeInstance:J

.field private mReset:Z

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 611
    sput v1, Landroid/hardware/SystemSensorManager;->LOCAL_SMARTSHOW_SENSOR_CONFIG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 62
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 77
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    .line 83
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 85
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 88
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 89
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x1

    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 91
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 97
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    monitor-exit v3

    .line 102
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Landroid/hardware/SystemSensorManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 49
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 49
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method static ft0Enabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 614
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    if-eqz v1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/hardware/SystemSensorManager;->LOCAL_SMARTSHOW_SENSOR_CONFIG:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static ft1Enabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 620
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    if-eqz v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/hardware/SystemSensorManager;->LOCAL_SMARTSHOW_SENSOR_CONFIG:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeGetSensorsEnable(IJ)[I
.end method

.method private static native nativeGetSmartShowSensorConfig()I
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native nativeSetPreProcessingAdjustment(IIJ)I
.end method

.method private static native nativeUpdateRoute(IIII)I
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 221
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 239
    :goto_0
    return v1

    .line 224
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 226
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_3

    .line 228
    if-nez p2, :cond_2

    .line 229
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 233
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 237
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 240
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 231
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 239
    .end local v1    # "result":Z
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 244
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 247
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 248
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    .line 249
    monitor-exit v2

    .line 251
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 253
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSensorsEnable(I)[I
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 676
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {p1, v0, v1}, Landroid/hardware/SystemSensorManager;->nativeGetSensorsEnable(IJ)[I

    move-result-object v0

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 257
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v0

    .line 261
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    .line 262
    const-string v1, "SensorManager"

    const-string v3, "Data Injection mode not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x0

    monitor-exit v2

    .line 277
    .end local v0    # "isDataInjectionModeEnabled":Z
    :goto_0
    return v1

    .line 266
    .restart local v0    # "isDataInjectionModeEnabled":Z
    :cond_0
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v1, :cond_1

    .line 267
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 277
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 272
    :cond_2
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v1, :cond_1

    .line 273
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 274
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v7, 0x0

    .line 283
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 284
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v0, :cond_0

    .line 285
    const-string v0, "SensorManager"

    const-string v1, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v8

    move v0, v7

    .line 295
    :goto_0
    return v0

    .line 288
    :cond_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v6

    .line 291
    .local v6, "ret":I
    if-eqz v6, :cond_1

    .line 292
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 293
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 295
    :cond_1
    if-nez v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v8

    goto :goto_0

    .line 296
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6    # "ret":I
    :cond_2
    move v0, v7

    .line 295
    goto :goto_1
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 116
    const/16 v4, 0x17d

    invoke-static {v4, p2, p3}, Landroid/util/SeempLog;->record_sensor_rate(ILandroid/hardware/Sensor;I)I

    .line 117
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 118
    :cond_0
    const-string v4, "SensorManager"

    const-string/jumbo v5, "sensor or listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return v3

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 123
    const-string v4, "SensorManager"

    const-string v5, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    if-ltz p5, :cond_3

    if-gez p3, :cond_4

    .line 127
    :cond_3
    const-string v4, "SensorManager"

    const-string/jumbo v5, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_4
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 136
    :try_start_0
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 137
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_9

    .line 138
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 139
    .local v1, "looper":Landroid/os/Looper;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_2
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 143
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v5

    if-nez v5, :cond_7

    .line 144
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 145
    monitor-exit v4

    goto :goto_0

    .line 160
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 138
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_5
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_1

    .line 139
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 147
    .restart local v0    # "fullClassName":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget v3, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    .line 150
    iget v3, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    iget-boolean v5, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    invoke-virtual {v2, v3, v5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->setPreProcessingMode(IZ)V

    .line 153
    :cond_8
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 156
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_9
    iget v3, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    iget-boolean v5, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    invoke-virtual {v2, v3, v5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->setPreProcessingMode(IZ)V

    .line 158
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v2, 0x0

    .line 192
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sensor cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 212
    :goto_0
    return v2

    .line 198
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 199
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 200
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v4, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 205
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v4, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 206
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 207
    monitor-exit v3

    goto :goto_0

    .line 214
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 201
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 209
    .restart local v0    # "fullClassName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 212
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPreProcessingAdjustment(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "adjustment"    # I

    .prologue
    .line 641
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft0Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {p1, p2, v0, v1}, Landroid/hardware/SystemSensorManager;->nativeSetPreProcessingAdjustment(IIJ)I

    move-result v0

    goto :goto_0
.end method

.method public setPreProcessingMode(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 649
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft0Enabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iput p1, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    .line 654
    iput-boolean p2, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    .line 656
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 658
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 659
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 661
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 662
    .local v3, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v3, p1, p2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->setPreProcessingMode(IZ)V

    goto :goto_1

    .line 664
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v3    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    invoke-virtual {p0}, Landroid/hardware/SystemSensorManager;->peekLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v2

    .line 666
    .local v2, "legacy":Landroid/hardware/LegacySensorManager;
    if-eqz v2, :cond_0

    .line 667
    invoke-static {p1, p2}, Landroid/hardware/LegacySensorManager;->setPreProcessingMode(IZ)V

    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 166
    const/16 v2, 0x17e

    invoke-static {v2, p2}, Landroid/util/SeempLog;->record_sensor(ILandroid/hardware/Sensor;)I

    .line 168
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 187
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 174
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 176
    if-nez p2, :cond_2

    .line 177
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 181
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 186
    .end local v1    # "result":Z
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 179
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1
.end method

.method public updateRoute(IIII)I
    .locals 1
    .param p1, "command"    # I
    .param p2, "source"    # I
    .param p3, "pid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 632
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft1Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/hardware/SystemSensorManager;->nativeUpdateRoute(IIII)I

    move-result v0

    goto :goto_0
.end method
