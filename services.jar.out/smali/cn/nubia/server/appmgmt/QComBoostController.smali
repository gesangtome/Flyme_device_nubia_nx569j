.class public Lcn/nubia/server/appmgmt/QComBoostController;
.super Lcn/nubia/server/appmgmt/CPUControl;
.source "QComBoostController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;,
        Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;
    }
.end annotation


# static fields
.field private static final ABOVE_HISPEED_DELAY:[I

.field private static final ATTR_ANDROID_VERSION:Ljava/lang/String; = "androidVersion"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final ATTR_ITEM_ABOVE_HISPEED_DELAY:Ljava/lang/String; = "aboveHispeedDelay"

.field private static final ATTR_ITEM_CPUBW_MIN_FREQ:Ljava/lang/String; = "cpubw_min_freq"

.field private static final ATTR_ITEM_DISABLE_POWER_COLLAPSE:Ljava/lang/String; = "disablePowerCollapse"

.field private static final ATTR_ITEM_DOWN_THRESHOLD:Ljava/lang/String; = "downThreshold"

.field private static final ATTR_ITEM_DOWN_TIMES:Ljava/lang/String; = "downTimes"

.field private static final ATTR_ITEM_GO_HISPEED_LOAD:Ljava/lang/String; = "goHispeedLoad"

.field private static final ATTR_ITEM_GPU_MAX_POWER_LEVEL:Ljava/lang/String; = "gpuMaxPowerLevel"

.field private static final ATTR_ITEM_GPU_MIN_POWER_LEVEL:Ljava/lang/String; = "gpuMinPowerLevel"

.field private static final ATTR_ITEM_HISPEED_FREQ:Ljava/lang/String; = "hispeedFreq"

.field private static final ATTR_ITEM_MAX_FREQ:Ljava/lang/String; = "maxFreq"

.field private static final ATTR_ITEM_MAX_NUM_CORES:Ljava/lang/String; = "maxNumCores"

.field private static final ATTR_ITEM_MIN_FREQ:Ljava/lang/String; = "minFreq"

.field private static final ATTR_ITEM_MIN_NUM_CORES:Ljava/lang/String; = "minNumCores"

.field private static final ATTR_ITEM_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ITEM_SCHED_BOOST:Ljava/lang/String; = "schedBoost"

.field private static final ATTR_ITEM_SCHED_DOWN_MIGRATE:Ljava/lang/String; = "schedDownMigrate"

.field private static final ATTR_ITEM_SCHED_MOSTLY_IDEL_LOAD:Ljava/lang/String; = "schedMostlyIdleLoad"

.field private static final ATTR_ITEM_SCHED_MOSTLY_IDEL_NRRun:Ljava/lang/String; = "schedMostlyIdleNRRun"

.field private static final ATTR_ITEM_SCHED_SMALL_TASK:Ljava/lang/String; = "schedSmallTask"

.field private static final ATTR_ITEM_SCHED_UP_MIGRATE:Ljava/lang/String; = "schedUpMigrate"

.field private static final ATTR_ITEM_TARGET_LOAD:Ljava/lang/String; = "targetLoad"

.field private static final ATTR_ITEM_THERMAL_LEVEL:Ljava/lang/String; = "thermalLevel"

.field private static final ATTR_ITEM_UP_THRESHOLD:Ljava/lang/String; = "upThreshold"

.field private static final ATTR_ITEM_UP_TIMES:Ljava/lang/String; = "upTimes"

.field private static final ATTR_ITEM_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_NUM_CLUSTER:Ljava/lang/String; = "numCluster"

.field private static final ATTR_NUM_CORE:Ljava/lang/String; = "numCore"

.field private static final ATTR_PERF_DURATION:Ljava/lang/String; = "perfDuration"

.field private static final ATTR_PERF_LEVEL:Ljava/lang/String; = "performance_level"

.field private static final ATTR_PERF_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PERF_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_PLATFORM_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_THERMAL_LEVEL:Ljava/lang/String; = "thermal_level"

.field private static final CPUBW_HWMON_MIN_FREQ:I = 0x41800000

.field private static final CPU_MAX_FREQ:[I

.field private static final CPU_MIN_FREQ:[I

.field private static final GO_HISPEED_LOAD:[I

.field private static final GPU_MAX_POWER_LEVEL:I = 0x42808000

.field private static final GPU_MIN_POWER_LEVEL:I = 0x42804000

.field private static final HISPEED_FREQ:[I

.field private static final HOTPLUG_DOWN_THRESHOLD:I = 0x43000200

.field private static final HOTPLUG_DOWN_TIMES:I = 0x43000300

.field private static final HOTPLUG_UP_THRESHOLD:I = 0x43000000

.field private static final HOTPLUG_UP_TIMES:I = 0x43000100

.field private static final MAX_ONLINE_CPU_CLUSTER:[I

.field private static final MIN_ONLINE_CPU_CLUSTER:[I

.field private static final NUBIA_PERFORMANCE_THERMAL_DECRYPTED_FILE:Ljava/lang/String; = "nubia_performance_thermal_decrypted.xml"

.field private static final NUBIA_PERFORMANCE_THERMAL_FILE:Ljava/lang/String; = "nubia_performance_thermal.xml"

.field private static final POWER_COLLAPSE:I = 0x40400000

.field private static final SCHED_BOOST:I = 0x40c00000

.field private static final SCHED_DOWNMIGRATE:I = 0x40c20000

.field private static final SCHED_MOSTLY_IDLE_LOAD:I = 0x40c10000

.field private static final SCHED_MOSTLY_IDLE_NR_RUN:I = 0x40c14000

.field private static final SCHED_SMALL_TASK:I = 0x40c0c000

.field private static final SCHED_UPMIGRATE:I = 0x40c1c000

.field private static final TAG:Ljava/lang/String; = "PerformanceController"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_DURATION:Ljava/lang/String; = "Duration"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MIN_CLUSTER_FIRST:Ljava/lang/String; = "MinClusterFirst"

.field private static final TAG_NOTRANSITIONANIM:Ljava/lang/String; = "NoTransitionAnimation"

.field private static final TAG_PERFORMANCE:Ljava/lang/String; = "performance"

.field private static final TAG_PLATFORM:Ljava/lang/String; = "platform"

.field private static final TARGET_LOADS:[I

.field private static final perfObj:Ljava/lang/Object;


# instance fields
.field private mActivityToLockParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLaunchDurations:[J

.field private final mDecryptedFile:Ljava/io/File;

.field private mDumpDebugLog:Z

.field private mIsRunningOnMTK:Z

.field private final mNubiaPerfThermalFile:Ljava/io/File;

.field private mPackageToLockParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

.field private mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

.field private mPreviousParameters:[I

.field private mTypeToLockParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;",
            ">;"
        }
    .end annotation
.end field

.field private obj:Ljava/lang/Object;

.field private tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->MIN_ONLINE_CPU_CLUSTER:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    .line 106
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->CPU_MIN_FREQ:[I

    .line 108
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->CPU_MAX_FREQ:[I

    .line 133
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->TARGET_LOADS:[I

    .line 138
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->GO_HISPEED_LOAD:[I

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->HISPEED_FREQ:[I

    .line 156
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcn/nubia/server/appmgmt/QComBoostController;->ABOVE_HISPEED_DELAY:[I

    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x41000100    # 8.000244f
        0x41000000    # 8.0f
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x41004100
        0x41004000    # 8.015625f
    .end array-data

    .line 106
    :array_2
    .array-data 4
        0x40800100    # 4.000122f
        0x40800110    # 4.0001297f
        0x40800120    # 4.0001373f
        0x40800130    # 4.000145f
        0x40800000    # 4.0f
        0x40800010    # 4.0000076f
        0x40800020    # 4.0000153f
        0x40800030    # 4.000023f
    .end array-data

    .line 108
    :array_3
    .array-data 4
        0x40804100
        0x40804110
        0x40804120
        0x40804130
        0x40804000    # 4.0078125f
        0x40804010
        0x40804020
        0x40804030
    .end array-data

    .line 133
    :array_4
    .array-data 4
        0x41420100
        0x41420000    # 12.125f
    .end array-data

    .line 138
    :array_5
    .array-data 4
        0x41410100
        0x41410000    # 12.0625f
    .end array-data

    .line 145
    :array_6
    .array-data 4
        0x41414100
        0x41414000    # 12.078125f
    .end array-data

    .line 156
    :array_7
    .array-data 4
        0x41400100    # 12.000244f
        0x41400000    # 12.0f
    .end array-data
.end method

.method public constructor <init>(Lcn/nubia/server/appmgmt/IPerformanceHelper;Z)V
    .locals 2
    .param p1, "perfHelper"    # Lcn/nubia/server/appmgmt/IPerformanceHelper;
    .param p2, "isRunningOnMTK"    # Z

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CPUControl;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mTypeToLockParameters:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPackageToLockParameters:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mActivityToLockParameters:Ljava/util/HashMap;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mAppLaunchDurations:[J

    .line 169
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mIsRunningOnMTK:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPreviousParameters:[I

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->obj:Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    .line 178
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mIsRunningOnMTK:Z

    .line 179
    const-string v0, "nubia_performance_thermal.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mNubiaPerfThermalFile:Ljava/io/File;

    .line 181
    const-string v0, "nubia_performance_thermal_decrypted.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDecryptedFile:Ljava/io/File;

    .line 184
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/QComBoostController;->initData()V

    .line 185
    return-void

    .line 101
    nop

    :array_0
    .array-data 8
        0x3e8
        0x12c
        0x12c
        0x12c
    .end array-data
.end method

.method private decideLockParameters(Ljava/util/ArrayList;)[I
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "locks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-nez v32, :cond_2

    .line 233
    const-string v32, "sys.thermal.perf"

    const-string v33, "0"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/server/appmgmt/QComBoostController;->mPreviousParameters:[I

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 236
    const-string v32, "PerformanceController"

    const-string v33, "no lock. use default setting"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    const/16 v22, 0x0

    .line 613
    :cond_1
    return-object v22

    .line 240
    :cond_2
    const-string v32, "sys.thermal.perf"

    const-string v33, "1"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->MIN_ONLINE_CPU_CLUSTER:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 243
    .local v16, "minNumCores":[I
    const/16 v32, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 245
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v14, v0, [I

    .line 246
    .local v14, "maxNumCores":[I
    const/16 v32, -0x1

    move/from16 v0, v32

    invoke-static {v14, v0}, Ljava/util/Arrays;->fill([II)V

    .line 248
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->CPU_MIN_FREQ:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v15, v0, [I

    .line 249
    .local v15, "minFrequencies":[I
    const/16 v32, -0x1

    move/from16 v0, v32

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([II)V

    .line 251
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->CPU_MAX_FREQ:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v13, v0, [I

    .line 252
    .local v13, "maxFrequencies":[I
    const/16 v32, -0x1

    move/from16 v0, v32

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([II)V

    .line 254
    const/4 v3, -0x1

    .line 255
    .local v3, "cpuBandwidthMinFrequency":I
    const/4 v9, -0x1

    .line 256
    .local v9, "gpuMinPowerLevel":I
    const v8, 0x7fffffff

    .line 257
    .local v8, "gpuMaxPowerLevel":I
    const/16 v23, 0x0

    .line 258
    .local v23, "schedBoost":Z
    const v27, 0x7fffffff

    .line 259
    .local v27, "schedSmallTask":I
    const v25, 0x7fffffff

    .line 260
    .local v25, "schedMostlyIdleLoad":I
    const v26, 0x7fffffff

    .line 261
    .local v26, "schedMostlyIdleNRRun":I
    const v28, 0x7fffffff

    .line 262
    .local v28, "schedUpMigrate":I
    const v24, 0x7fffffff

    .line 263
    .local v24, "schedDownMigrate":I
    const/4 v4, 0x0

    .line 265
    .local v4, "disablePowerCollapse":Z
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->TARGET_LOADS:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .line 266
    .local v29, "targetLoads":[I
    const/16 v32, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 268
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->GO_HISPEED_LOAD:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v7, v0, [I

    .line 269
    .local v7, "goHispeedLoad":[I
    const/16 v32, -0x1

    move/from16 v0, v32

    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([II)V

    .line 271
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->HISPEED_FREQ:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v10, v0, [I

    .line 272
    .local v10, "hispeedFreq":[I
    const/16 v32, -0x1

    move/from16 v0, v32

    invoke-static {v10, v0}, Ljava/util/Arrays;->fill([II)V

    .line 274
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->ABOVE_HISPEED_DELAY:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v2, v0, [I

    .line 275
    .local v2, "aboveHispeedDelay":[I
    const/16 v32, -0x1

    move/from16 v0, v32

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 277
    const v30, 0x7fffffff

    .line 278
    .local v30, "upThreshold":I
    const v31, 0x7fffffff

    .line 279
    .local v31, "upTimes":I
    const v5, 0x7fffffff

    .line 280
    .local v5, "downThreshold":I
    const v6, 0x7fffffff

    .line 282
    .local v6, "downTimes":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 284
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 285
    const-string v32, "PerformanceController"

    const-string v33, ">> decideLockParameters"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    sget-object v33, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v33

    .line 288
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_27

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .line 289
    .local v21, "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 290
    const-string v32, "PerformanceController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "candicate lock:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", type="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_5
    const/16 v17, 0x0

    .line 295
    .local v17, "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    move/from16 v32, v0

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/ArrayMap;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    check-cast v17, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;

    .line 302
    .restart local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    :cond_6
    :goto_1
    if-nez v17, :cond_8

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 304
    const-string v32, "PerformanceController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Cannot find lock parameters for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    .end local v21    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :catchall_0
    move-exception v32

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v32

    .line 298
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    .restart local v21    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/ArrayMap;

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v32

    if-lez v32, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/ArrayMap;

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    check-cast v17, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;

    .restart local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    goto/16 :goto_1

    .line 309
    :cond_8
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->restricted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mAcquireTime:J

    move-wide/from16 v34, v0

    sub-long v34, v18, v34

    const-wide/16 v36, 0x1388

    cmp-long v32, v34, v36

    if-gez v32, :cond_9

    .line 310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 311
    const-string v32, "PerformanceController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "restricted lock "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " doesn\'t join parameter tuning now"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    :cond_9
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_b

    .line 317
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v16, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_a

    .line 318
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v16, v11

    .line 316
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 321
    :cond_b
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_d

    .line 322
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v14, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_c

    .line 323
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v14, v11

    .line 321
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 326
    :cond_d
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_f

    .line 327
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v15, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_e

    .line 328
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v15, v11

    .line 326
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 331
    :cond_f
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_11

    .line 332
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v13, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_10

    .line 333
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v13, v11

    .line 331
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 336
    :cond_11
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v0, v3, :cond_12

    .line 337
    move-object/from16 v0, v17

    iget v3, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    .line 339
    :cond_12
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedBoost:Z

    move/from16 v32, v0

    or-int v23, v23, v32

    .line 341
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_13

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 342
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    move/from16 v27, v0

    .line 344
    :cond_13
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 345
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    move/from16 v25, v0

    .line 347
    :cond_14
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    .line 348
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    move/from16 v26, v0

    .line 350
    :cond_15
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_16

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    .line 351
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    move/from16 v28, v0

    .line 353
    :cond_16
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_17

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    .line 354
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    move/from16 v24, v0

    .line 356
    :cond_17
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_18

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v0, v9, :cond_18

    .line 357
    move-object/from16 v0, v17

    iget v9, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 359
    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v0, v8, :cond_19

    .line 360
    move-object/from16 v0, v17

    iget v8, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 362
    :cond_19
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedBoost:Z

    move/from16 v32, v0

    or-int v4, v4, v32

    .line 364
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_1c

    .line 366
    aget v32, v29, v11

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    .line 367
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v29, v11

    .line 364
    :cond_1a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 369
    :cond_1b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v29, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-ge v0, v1, :cond_1a

    .line 370
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v29, v11

    goto :goto_7

    .line 373
    :cond_1c
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_1f

    .line 374
    aget v32, v7, v11

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e

    .line 375
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v7, v11

    .line 373
    :cond_1d
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 377
    :cond_1e
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v7, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-ge v0, v1, :cond_1d

    .line 378
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v7, v11

    goto :goto_9

    .line 381
    :cond_1f
    const/4 v11, 0x0

    :goto_a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_21

    .line 382
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v10, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_20

    .line 383
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v10, v11

    .line 381
    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 386
    :cond_21
    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_23

    .line 387
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aget v34, v2, v11

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_22

    .line 388
    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    move-object/from16 v32, v0

    aget v32, v32, v11

    aput v32, v2, v11

    .line 386
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 392
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mIsRunningOnMTK:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 393
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_24

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v30

    if-ge v0, v1, :cond_24

    .line 394
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    move/from16 v30, v0

    .line 396
    :cond_24
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_25

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v31

    if-ge v0, v1, :cond_25

    .line 397
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    move/from16 v31, v0

    .line 399
    :cond_25
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_26

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v0, v5, :cond_26

    .line 400
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    .line 402
    :cond_26
    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downTimes:I

    move/from16 v32, v0

    const/16 v34, -0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v17

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v0, v6, :cond_4

    .line 403
    move-object/from16 v0, v17

    iget v6, v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downTimes:I

    goto/16 :goto_0

    .line 406
    .end local v11    # "i":I
    .end local v17    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    .end local v21    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_27
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v20, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v23, :cond_28

    .line 411
    const/high16 v32, 0x40c00000    # 6.0f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    .line 414
    const-string v32, "PerformanceController"

    const-string v33, "Enable sched boost"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_28
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_2a

    .line 419
    aget v32, v16, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_29

    .line 420
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->MIN_ONLINE_CPU_CLUSTER:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    aget v32, v16, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_29

    .line 423
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cluster "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ", minNumCores = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_29
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 429
    :cond_2a
    const/4 v11, 0x0

    :goto_d
    array-length v0, v14

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_2c

    .line 430
    aget v32, v16, v11

    aget v33, v14, v11

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    aput v32, v14, v11

    .line 432
    aget v32, v14, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_2b

    .line 433
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->MAX_ONLINE_CPU_CLUSTER:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    aget v32, v14, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2b

    .line 436
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cluster "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ", maxNumCores = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_2b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_d

    .line 442
    :cond_2c
    const/4 v11, 0x0

    :goto_e
    array-length v0, v15

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_2e

    .line 443
    aget v32, v15, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_2d

    .line 444
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->CPU_MIN_FREQ:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    aget v32, v15, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2d

    .line 447
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "core "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ", minFrequency = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    .line 453
    :cond_2e
    const/4 v11, 0x0

    :goto_f
    array-length v0, v13

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_30

    .line 454
    aget v32, v13, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_2f

    .line 455
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->CPU_MAX_FREQ:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    aget v32, v13, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2f

    .line 458
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "core "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ", maxFrequency = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 464
    :cond_30
    const/16 v32, -0x1

    move/from16 v0, v32

    if-le v3, v0, :cond_31

    .line 465
    const/high16 v32, 0x41800000    # 16.0f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_31

    .line 468
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cpubw, minfreq = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_31
    const/16 v32, -0x1

    move/from16 v0, v32

    if-le v9, v0, :cond_32

    .line 473
    const v32, 0x42804000    # 64.125f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_32

    .line 476
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "gpuMinPowerLevel = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_32
    const v32, 0x7fffffff

    move/from16 v0, v32

    if-eq v8, v0, :cond_33

    .line 481
    const v32, 0x42808000    # 64.25f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_33

    .line 484
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "gpuMaxPowerLevel = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_33
    const v32, 0x7fffffff

    move/from16 v0, v27

    move/from16 v1, v32

    if-eq v0, v1, :cond_34

    .line 490
    const v32, 0x40c0c000    # 6.0234375f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_34

    .line 493
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sched_small_task = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_34
    const v32, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_35

    .line 499
    const/high16 v32, 0x40c10000    # 6.03125f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_35

    .line 502
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sched_mostly_idle_load = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_35
    const v32, 0x7fffffff

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_36

    .line 508
    const v32, 0x40c14000    # 6.0390625f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_36

    .line 511
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sched_mostly_idle_nr_run = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_36
    const v32, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v32

    if-eq v0, v1, :cond_37

    .line 517
    const v32, 0x40c1c000    # 6.0546875f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_37

    .line 520
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sched_upmigrate = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_37
    const v32, 0x7fffffff

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_38

    .line 526
    const/high16 v32, 0x40c20000    # 6.0625f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_38

    .line 529
    const-string v33, "PerformanceController"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sched_downmigrate = 0x"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_38
    if-eqz v4, :cond_39

    .line 535
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_39

    .line 538
    const-string v32, "PerformanceController"

    const-string v33, "Disable power collapse"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_39
    const/4 v11, 0x0

    :goto_10
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_3b

    .line 543
    aget v32, v29, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3a

    .line 544
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->TARGET_LOADS:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    aget v32, v29, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3a

    .line 547
    const-string v32, "PerformanceController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cluster "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", targetLoads = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    aget v34, v29, v11

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_3a
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 552
    :cond_3b
    const/4 v11, 0x0

    :goto_11
    array-length v0, v7

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_3d

    .line 553
    aget v32, v7, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3c

    .line 554
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->GO_HISPEED_LOAD:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    aget v32, v7, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3c

    .line 557
    const-string v32, "PerformanceController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cluster "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", goHispeedLoad = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    aget v34, v7, v11

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_3c
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 562
    :cond_3d
    const/4 v11, 0x0

    :goto_12
    array-length v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_3f

    .line 563
    aget v32, v10, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3e

    .line 564
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->HISPEED_FREQ:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    aget v32, v10, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3e

    .line 567
    const-string v32, "PerformanceController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cluster "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", hispeedFreq = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    aget v34, v10, v11

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_3e
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 572
    :cond_3f
    const/4 v11, 0x0

    :goto_13
    array-length v0, v2

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_41

    .line 573
    aget v32, v2, v11

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_40

    .line 574
    sget-object v32, Lcn/nubia/server/appmgmt/QComBoostController;->ABOVE_HISPEED_DELAY:[I

    aget v32, v32, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    aget v32, v2, v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_40

    .line 577
    const-string v32, "PerformanceController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "cluster "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", aboveHispeedDelay = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    aget v34, v2, v11

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_40
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 583
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mIsRunningOnMTK:Z

    move/from16 v32, v0

    if-eqz v32, :cond_45

    .line 584
    const v32, 0x7fffffff

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_42

    .line 585
    const/high16 v32, 0x43000000    # 128.0f

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_42
    const v32, 0x7fffffff

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_43

    .line 590
    const v32, 0x43000100

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_43
    const v32, 0x7fffffff

    move/from16 v0, v32

    if-eq v5, v0, :cond_44

    .line 595
    const v32, 0x43000200

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_44
    const v32, 0x7fffffff

    move/from16 v0, v32

    if-eq v6, v0, :cond_45

    .line 600
    const v32, 0x43000300

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_46

    .line 606
    const-string v32, "PerformanceController"

    const-string v33, "<< decideLockParameters"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_46
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 610
    .local v22, "result":[I
    const/4 v11, 0x0

    :goto_14
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_1

    .line 611
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    aput v32, v22, v11

    .line 610
    add-int/lit8 v11, v11, 0x1

    goto :goto_14
.end method

.method private initData()V
    .locals 24

    .prologue
    .line 1020
    const-string v2, "PerformanceController"

    const-string v22, "initData"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v2, "PerformanceController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isFileExist is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "nubia_performance_thermal.xml"

    invoke-static/range {v23 .. v23}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string v2, "nubia_performance_thermal.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1026
    :try_start_0
    const-string v2, "/data/system/nubia_performance_thermal.xml"

    const-string v22, "/data/system/nubia_performance_thermal_decrypted.xml"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/Encryption;->decryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1027
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDecryptedFile:Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1029
    .local v18, "str":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 1030
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v13, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1033
    :cond_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_0

    .line 1037
    :cond_1
    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_3

    .line 1038
    const-string v2, "PerformanceController"

    const-string v22, "No start tag found in platform performance file."

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "str":Ljava/io/FileInputStream;
    .end local v20    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 1043
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "str":Ljava/io/FileInputStream;
    .restart local v20    # "type":I
    :cond_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 1045
    .local v12, "outerDepth":I
    :cond_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v12, :cond_a

    .line 1048
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    .line 1053
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1054
    .local v19, "tagName":Ljava/lang/String;
    const-string v2, "platform"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1055
    const/4 v2, 0x0

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1056
    .local v3, "platformName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v22, "androidVersion"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, "androidVersion":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v22, "perfDuration"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 1058
    .local v5, "perfDuration":[I
    const/4 v2, 0x0

    const-string v22, "numCluster"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1059
    .local v6, "numCluster":I
    const/4 v2, 0x0

    const-string v22, "numCore"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1063
    .local v7, "numCore":I
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    new-instance v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;-><init>(Ljava/lang/String;Ljava/lang/String;[III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    .line 1066
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1068
    .local v17, "platformDepth":I
    :cond_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_4

    .line 1070
    :cond_7
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    .line 1074
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1075
    const-string v2, "Duration"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1076
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1078
    .local v8, "durationDepth":I
    :cond_8
    :goto_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_c

    .line 1080
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_8

    .line 1084
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1085
    const-string v2, "item"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1086
    const/4 v2, 0x0

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1087
    .local v11, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1088
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    move-object/from16 v0, v21

    invoke-virtual {v2, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1235
    .end local v3    # "platformName":Ljava/lang/String;
    .end local v4    # "androidVersion":Ljava/lang/String;
    .end local v5    # "perfDuration":[I
    .end local v6    # "numCluster":I
    .end local v7    # "numCore":I
    .end local v8    # "durationDepth":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "platformDepth":I
    .end local v18    # "str":Ljava/io/FileInputStream;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "type":I
    .end local v21    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1236
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "PerformanceController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    .line 1246
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDecryptedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-eqz v2, :cond_2

    .line 1248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v2, :cond_b

    .line 1249
    const-string v2, "PerformanceController"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/server/appmgmt/QComBoostController;->validatePerfData(Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1251
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    goto/16 :goto_0

    .line 1093
    .restart local v3    # "platformName":Ljava/lang/String;
    .restart local v4    # "androidVersion":Ljava/lang/String;
    .restart local v5    # "perfDuration":[I
    .restart local v6    # "numCluster":I
    .restart local v7    # "numCore":I
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "platformDepth":I
    .restart local v18    # "str":Ljava/io/FileInputStream;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "type":I
    :cond_c
    :try_start_1
    const-string v2, "NoTransitionAnimation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1094
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1096
    .restart local v8    # "durationDepth":I
    :cond_d
    :goto_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_f

    .line 1098
    :cond_e
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_d

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_d

    .line 1102
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1103
    const-string v2, "item"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1104
    const/4 v2, 0x0

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1105
    .restart local v11    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->noTransitionAnimation:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 1238
    .end local v3    # "platformName":Ljava/lang/String;
    .end local v4    # "androidVersion":Ljava/lang/String;
    .end local v5    # "perfDuration":[I
    .end local v6    # "numCluster":I
    .end local v7    # "numCore":I
    .end local v8    # "durationDepth":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "platformDepth":I
    .end local v18    # "str":Ljava/io/FileInputStream;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_1
    move-exception v9

    .line 1239
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "PerformanceController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    goto/16 :goto_2

    .line 1110
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "platformName":Ljava/lang/String;
    .restart local v4    # "androidVersion":Ljava/lang/String;
    .restart local v5    # "perfDuration":[I
    .restart local v6    # "numCluster":I
    .restart local v7    # "numCore":I
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "platformDepth":I
    .restart local v18    # "str":Ljava/io/FileInputStream;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "type":I
    :cond_f
    :try_start_2
    const-string v2, "MinClusterFirst"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1111
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1113
    .restart local v8    # "durationDepth":I
    :cond_10
    :goto_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_12

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_12

    .line 1115
    :cond_11
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_10

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_10

    .line 1119
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1120
    const-string v2, "item"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1121
    const/4 v2, 0x0

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1122
    .restart local v11    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->minClusterFirst:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1241
    .end local v3    # "platformName":Ljava/lang/String;
    .end local v4    # "androidVersion":Ljava/lang/String;
    .end local v5    # "perfDuration":[I
    .end local v6    # "numCluster":I
    .end local v7    # "numCore":I
    .end local v8    # "durationDepth":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "platformDepth":I
    .end local v18    # "str":Ljava/io/FileInputStream;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_2
    move-exception v9

    .line 1242
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    goto/16 :goto_2

    .line 1126
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "platformName":Ljava/lang/String;
    .restart local v4    # "androidVersion":Ljava/lang/String;
    .restart local v5    # "perfDuration":[I
    .restart local v6    # "numCluster":I
    .restart local v7    # "numCore":I
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "platformDepth":I
    .restart local v18    # "str":Ljava/io/FileInputStream;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "type":I
    :cond_12
    :try_start_3
    const-string v2, "performance"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1127
    const/4 v2, 0x0

    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1128
    .local v16, "perfType":I
    const/4 v2, 0x0

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1129
    .local v15, "perfName":Ljava/lang/String;
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 1130
    .local v14, "perfDepth":I
    new-instance v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->numCluster:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->numCore:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-direct {v10, v2, v0}, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;-><init>(II)V

    .line 1131
    .local v10, "lckParm":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v15, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :cond_13
    :goto_5
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_14

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v14, :cond_6

    .line 1135
    :cond_14
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_13

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_13

    .line 1139
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1140
    const-string v2, "item"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1141
    const/4 v2, 0x0

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1142
    .restart local v11    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1143
    .restart local v21    # "value":Ljava/lang/String;
    const-string v2, "minNumCores"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1144
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    goto :goto_5

    .line 1146
    :cond_15
    const-string v2, "maxNumCores"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    goto :goto_5

    .line 1149
    :cond_16
    const-string v2, "minFreq"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1150
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    goto :goto_5

    .line 1152
    :cond_17
    const-string v2, "maxFreq"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    goto/16 :goto_5

    .line 1155
    :cond_18
    const-string v2, "cpubw_min_freq"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1156
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    goto/16 :goto_5

    .line 1158
    :cond_19
    const-string v2, "schedBoost"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1159
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedBoost:Z

    goto/16 :goto_5

    .line 1161
    :cond_1a
    const-string v2, "schedSmallTask"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1162
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    goto/16 :goto_5

    .line 1164
    :cond_1b
    const-string v2, "schedMostlyIdleLoad"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1166
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    goto/16 :goto_5

    .line 1168
    :cond_1c
    const-string v2, "schedMostlyIdleNRRun"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1169
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    goto/16 :goto_5

    .line 1171
    :cond_1d
    const-string v2, "schedUpMigrate"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1173
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    goto/16 :goto_5

    .line 1175
    :cond_1e
    const-string v2, "schedDownMigrate"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1177
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    goto/16 :goto_5

    .line 1179
    :cond_1f
    const-string v2, "gpuMinPowerLevel"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1181
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    goto/16 :goto_5

    .line 1183
    :cond_20
    const-string v2, "gpuMaxPowerLevel"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1185
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    goto/16 :goto_5

    .line 1187
    :cond_21
    const-string v2, "disablePowerCollapse"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1188
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->disablePowerCollapse:Z

    goto/16 :goto_5

    .line 1191
    :cond_22
    const-string v2, "targetLoad"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    goto/16 :goto_5

    .line 1195
    :cond_23
    const-string v2, "hispeedFreq"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1196
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    goto/16 :goto_5

    .line 1199
    :cond_24
    const-string v2, "goHispeedLoad"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1201
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    goto/16 :goto_5

    .line 1203
    :cond_25
    const-string v2, "aboveHispeedDelay"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1205
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    goto/16 :goto_5

    .line 1208
    :cond_26
    const-string v2, "thermalLevel"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1210
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->thermalLevel:I

    goto/16 :goto_5

    .line 1212
    :cond_27
    const-string v2, "upThreshold"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1214
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    goto/16 :goto_5

    .line 1216
    :cond_28
    const-string v2, "upTimes"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1218
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    goto/16 :goto_5

    .line 1220
    :cond_29
    const-string v2, "downThreshold"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1222
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    goto/16 :goto_5

    .line 1224
    :cond_2a
    const-string v2, "downTimes"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1226
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downTimes:I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 1253
    .end local v3    # "platformName":Ljava/lang/String;
    .end local v4    # "androidVersion":Ljava/lang/String;
    .end local v5    # "perfDuration":[I
    .end local v6    # "numCluster":I
    .end local v7    # "numCore":I
    .end local v10    # "lckParm":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "perfDepth":I
    .end local v15    # "perfName":Ljava/lang/String;
    .end local v16    # "perfType":I
    .end local v17    # "platformDepth":I
    .end local v18    # "str":Ljava/io/FileInputStream;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "type":I
    .end local v21    # "value":Ljava/lang/String;
    :cond_2b
    sget-object v22, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v22

    .line 1254
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->tmpPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    .line 1255
    monitor-exit v22

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method private strToIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1012
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "tmp":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [I

    .line 1014
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1015
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    :cond_0
    return-object v0
.end method

.method private validatePerfData(Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;)Z
    .locals 1
    .param p1, "mData"    # Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    .prologue
    .line 1261
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public adjustPerformance(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "locks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;>;"
    sget-object v4, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v4

    .line 193
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-nez v3, :cond_1

    .line 194
    monitor-exit v4

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/QComBoostController;->decideLockParameters(Ljava/util/ArrayList;)[I

    move-result-object v1

    .line 199
    .local v1, "parameters":[I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPreviousParameters:[I

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPreviousParameters:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 202
    const-string v3, "PerformanceController"

    const-string v4, "parameters don\'t change. No need to release/acquire again."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v3, "PerformanceController"

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v1    # "parameters":[I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 209
    .restart local v1    # "parameters":[I
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    invoke-interface {v3}, Lcn/nubia/server/appmgmt/IPerformanceHelper;->perfLockRelease()I

    .line 210
    if-eqz v1, :cond_0

    .line 211
    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lcn/nubia/server/appmgmt/IPerformanceHelper;->perfLockAcquire(I[I)I

    .line 212
    iput-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPreviousParameters:[I

    .line 213
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_3

    .line 220
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_4
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v3, :cond_0

    .line 224
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perfLockAcquire:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "PerformanceController"

    const-string v4, " "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1264
    sget-object v1, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1265
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    const-string v0, "/data/system/cwt.xml"

    const-string v1, "/data/system/cwt-encrypt.xml"

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/Encryption;->encryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1269
    const-string v0, "/data/system/nubia_performance_thermal.xml"

    const-string v1, "/data/system/cwt-decrypt.xml"

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/Encryption;->decryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1270
    return-void

    .line 1267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAppLaunchDuration(Ljava/lang/String;I)J
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "lockType"    # I

    .prologue
    .line 972
    sget-object v4, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v4

    .line 973
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-nez v1, :cond_0

    .line 974
    const-wide/16 v2, 0x12c

    monitor-exit v4

    .line 1001
    :goto_0
    return-wide v2

    .line 975
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->packageDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->strToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 977
    .local v0, "pkgDuration":[I
    packed-switch p2, :pswitch_data_0

    .line 987
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfDuration:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 1003
    .end local v0    # "pkgDuration":[I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 979
    .restart local v0    # "pkgDuration":[I
    :pswitch_0
    const/4 v1, 0x0

    :try_start_1
    aget v1, v0, v1

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 981
    :pswitch_1
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 983
    :pswitch_2
    const/4 v1, 0x2

    aget v1, v0, v1

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 985
    :pswitch_3
    const/4 v1, 0x3

    aget v1, v0, v1

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 991
    .end local v0    # "pkgDuration":[I
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 1001
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfDuration:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 993
    :pswitch_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfDuration:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 995
    :pswitch_5
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfDuration:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 997
    :pswitch_6
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfDuration:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-long v2, v1

    monitor-exit v4

    goto :goto_0

    .line 999
    :pswitch_7
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfDuration:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-long v2, v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 977
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 991
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getAppLockParameterTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 617
    sget-object v4, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v4

    .line 618
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-nez v2, :cond_0

    .line 619
    monitor-exit v4

    move-object v1, v3

    .line 647
    :goto_0
    return-object v1

    .line 620
    :cond_0
    const/4 v0, 0x0

    .line 622
    .local v0, "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "tag":Ljava/lang/String;
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v2, :cond_1

    .line 624
    const-string v2, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to getAppLockParameterTag for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    check-cast v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;

    .line 628
    .restart local v0    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v2, :cond_2

    .line 629
    if-eqz v0, :cond_2

    .line 630
    const-string v2, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasAppSpecificLockParameters, found lock parameters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_2
    if-nez v0, :cond_3

    .line 634
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->perfData:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    check-cast v0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;

    .line 635
    .restart local v0    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    if-eqz v0, :cond_3

    .line 636
    move-object v1, p1

    .line 638
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    if-eqz v2, :cond_3

    .line 639
    const-string v2, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasAppSpecificLockParameters, found lock parameters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_3
    if-eqz v0, :cond_4

    .line 645
    monitor-exit v4

    goto/16 :goto_0

    .line 648
    .end local v0    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    .end local v1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 647
    .restart local v0    # "parameters":Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, "result":Z
    sget-object v2, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->noTransitionAnimation:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    const/4 v0, 0x1

    .line 1281
    :cond_0
    monitor-exit v2

    .line 1282
    return v0

    .line 1281
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMinClusterFirst(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1285
    const/4 v0, 0x0

    .line 1286
    .local v0, "result":Z
    sget-object v2, Lcn/nubia/server/appmgmt/QComBoostController;->perfObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1287
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfData:Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/QComBoostController$PerformanceData;->minClusterFirst:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    const/4 v0, 0x1

    .line 1290
    :cond_0
    monitor-exit v2

    .line 1291
    return v0

    .line 1290
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteAppLauchForNewProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcn/nubia/server/appmgmt/IPerformanceHelper;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 1008
    return-void
.end method

.method public reinitData()V
    .locals 2

    .prologue
    .line 1272
    const-string v0, "PerformanceController"

    const-string v1, "reinitData"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/QComBoostController;->initData()V

    .line 1274
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/QComBoostController;->mDumpDebugLog:Z

    .line 189
    return-void
.end method
