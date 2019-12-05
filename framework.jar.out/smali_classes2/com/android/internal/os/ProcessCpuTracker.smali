.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static mBatteryCaptcity:D

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 77
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 176
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    .line 269
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 112
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 125
    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "includeThreads"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array v2, v4, [J

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 75
    new-array v2, v4, [J

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 109
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 110
    new-array v2, v5, [J

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 123
    const/4 v2, 0x7

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 131
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 138
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 139
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 140
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 173
    const/16 v2, 0x1000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 289
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 290
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    .line 291
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 292
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 30
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 406
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 407
    .local v19, "pids":[I
    if-nez v19, :cond_1

    const/4 v10, 0x0

    .line 408
    .local v10, "NP":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 409
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 410
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_0

    .line 411
    aget v6, v19, v13

    .line 412
    .local v6, "pid":I
    if-gez v6, :cond_2

    .line 413
    move v10, v6

    .line 571
    .end local v6    # "pid":I
    :cond_0
    :goto_2
    if-ge v12, v11, :cond_f

    .line 573
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 574
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 575
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 576
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 577
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 578
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 579
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 580
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 581
    add-int/lit8 v11, v11, -0x1

    .line 583
    goto :goto_2

    .line 407
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, v19

    array-length v10, v0

    goto :goto_0

    .line 416
    .restart local v6    # "pid":I
    .restart local v10    # "NP":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_2
    if-ge v12, v11, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v22, v4

    .line 418
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_3
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v4, v6, :cond_9

    .line 420
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 421
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 422
    add-int/lit8 v12, v12, 0x1

    .line 427
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_3

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 430
    .local v26, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    move-object/from16 v20, v0

    .line 431
    .local v20, "procStats":[J
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_5

    .line 410
    .end local v20    # "procStats":[J
    .end local v26    # "uptime":J
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 416
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 436
    .restart local v20    # "procStats":[J
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v26    # "uptime":J
    :cond_5
    const/4 v4, 0x0

    aget-wide v16, v20, v4

    .line 437
    .local v16, "minfaults":J
    const/4 v4, 0x1

    aget-wide v14, v20, v4

    .line 438
    .local v14, "majfaults":J
    const/4 v4, 0x2

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v28, v4, v8

    .line 439
    .local v28, "utime":J
    const/4 v4, 0x3

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v24, v4, v8

    .line 441
    .local v24, "stime":J
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v4, v28, v4

    if-nez v4, :cond_6

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v4, v24, v4

    if-nez v4, :cond_6

    .line 442
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 443
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 444
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 445
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 446
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v4, :cond_3

    .line 447
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_4

    .line 452
    :cond_6
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v4, :cond_7

    .line 453
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 456
    :cond_7
    if-gez p2, :cond_8

    .line 457
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    .line 459
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 470
    :cond_8
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v4, v26, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 471
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 472
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v4, v28, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 473
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 474
    move-wide/from16 v0, v28

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 475
    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 476
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 477
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 478
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 479
    move-object/from16 v0, v22

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 480
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_4

    .line 486
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v20    # "procStats":[J
    .end local v24    # "stime":J
    .end local v26    # "uptime":J
    .end local v28    # "utime":J
    :cond_9
    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v4, v6, :cond_e

    .line 488
    :cond_a
    new-instance v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 489
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 490
    add-int/lit8 v12, v12, 0x1

    .line 491
    add-int/lit8 v11, v11, 0x1

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v21, v0

    .line 497
    .local v21, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    move-object/from16 v20, v0

    .line 498
    .restart local v20    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 499
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 501
    .local v18, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 507
    const/4 v4, 0x5

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 509
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 510
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 511
    const/4 v4, 0x1

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 512
    const/4 v4, 0x2

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 513
    const/4 v4, 0x3

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v8

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 514
    const/4 v4, 0x4

    aget-wide v4, v20, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v8

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 527
    :goto_5
    if-gez p2, :cond_d

    .line 528
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    .line 530
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 542
    :cond_b
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 543
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 544
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 545
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 546
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 547
    if-nez p3, :cond_3

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_3

    .line 548
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_4

    .line 521
    :cond_c
    const-string v4, "ProcessCpuTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown process pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v4, "<unknown>"

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 523
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 524
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    goto/16 :goto_5

    .line 533
    :cond_d
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_b

    .line 534
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 535
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    goto :goto_6

    .line 554
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "procStats":[J
    .end local v21    # "procStatsString":[Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 555
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 556
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 557
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 558
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 559
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 560
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 561
    add-int/lit8 v11, v11, -0x1

    .line 567
    add-int/lit8 v13, v13, -0x1

    .line 568
    goto/16 :goto_4

    .line 585
    .end local v6    # "pid":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_f
    return-object v19
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 867
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 868
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 870
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 872
    move-object v2, v0

    .line 873
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 874
    .local v1, "i":I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 875
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 879
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 882
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 883
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 884
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 886
    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .prologue
    .line 792
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 794
    :cond_0
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 795
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    if-ltz p3, :cond_1

    .line 797
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 798
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 803
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 805
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    if-lez p8, :cond_2

    .line 807
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    move/from16 v0, p8

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 809
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    :cond_2
    if-lez p9, :cond_3

    .line 812
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    move/from16 v0, p9

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 814
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    :cond_3
    if-lez p10, :cond_4

    .line 817
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    move/from16 v0, p10

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 819
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    .line 822
    :cond_5
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    if-lez p11, :cond_6

    .line 824
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 826
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    :cond_6
    if-lez p12, :cond_7

    .line 829
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 831
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 835
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 777
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 778
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 779
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 780
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 781
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 782
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 783
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 784
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 787
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 841
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 842
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 844
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 846
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 848
    if-lez v3, :cond_2

    .line 850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 851
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_1

    .line 855
    :cond_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 860
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 861
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 863
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-object v5

    .line 850
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    .end local v0    # "i":I
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 861
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 863
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 857
    :catch_0
    move-exception v5

    .line 860
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 861
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 858
    :catch_1
    move-exception v5

    .line 860
    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 861
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 860
    :catchall_0
    move-exception v5

    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 861
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 860
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 858
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 857
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 661
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    .line 662
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 663
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 664
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 665
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 666
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_2

    .line 667
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 669
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 671
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 672
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 673
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 674
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 677
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 664
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 682
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 684
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 696
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getBatteryCapacity()D
    .locals 12

    .prologue
    const-wide v10, 0x407f400000000000L    # 500.0

    const-wide/16 v6, 0x0

    .line 890
    sget-wide v8, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 891
    sget-wide v6, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    .line 917
    :cond_0
    :goto_0
    return-wide v6

    .line 893
    :cond_1
    const-string v8, "/sys/class/power_supply/battery/charge_full_design"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 895
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v8, "\n "

    invoke-direct {v2, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 897
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 901
    .local v4, "val":D
    const-wide v8, 0x40c3880000000000L    # 10000.0

    cmpl-double v8, v4, v8

    if-lez v8, :cond_3

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    .line 903
    :cond_3
    cmpl-double v8, v4, v10

    if-lez v8, :cond_2

    const-wide v8, 0x40d3880000000000L    # 20000.0

    cmpg-double v8, v4, v8

    if-gez v8, :cond_2

    .line 904
    sput-wide v4, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    .line 905
    sget-wide v6, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    .end local v4    # "val":D
    :catch_0
    move-exception v1

    .line 908
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "ProcessCpuTracker"

    const-string v9, "Unable to parse charge_full_design"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 913
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "token":Ljava/lang/String;
    :cond_4
    const-string v8, "ProcessCpuTracker"

    const-string v9, "charge_full_design file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCpuTimeForPid(I)J
    .locals 10
    .param p1, "pid"    # I

    .prologue
    .line 593
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v6

    .line 594
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 596
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v7, 0x3

    aget-wide v8, v1, v7

    add-long v2, v4, v8

    .line 600
    .local v2, "time":J
    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v2

    monitor-exit v6

    .line 602
    .end local v2    # "time":J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    monitor-exit v6

    goto :goto_0

    .line 603
    .end local v0    # "statFile":Ljava/lang/String;
    .end local v1    # "statsData":[J
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 653
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 654
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 655
    const/4 v1, 0x0

    .line 657
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 305
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 295
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .prologue
    .line 704
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 705
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 706
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 708
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 709
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 710
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 712
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 713
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .param p1, "now"    # J

    .prologue
    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 719
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 720
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 722
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 724
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 725
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 727
    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v24, v4, v6

    .line 736
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v22, v4, v6

    .line 737
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_2

    const-wide/16 v4, 0x64

    mul-long v4, v4, v24

    div-long v20, v4, v22

    .line 738
    .local v20, "percAwake":J
    :goto_1
    const-wide/16 v4, 0x64

    cmp-long v2, v20, v4

    if-eqz v2, :cond_0

    .line 739
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 741
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    :cond_0
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 751
    .local v27, "totalTime":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 752
    .local v16, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 754
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_3

    const-string v4, " +"

    :goto_3
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v8

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 757
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 758
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 759
    .local v15, "M":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    .line 760
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 761
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_5

    const-string v4, "   +"

    :goto_5
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v8

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 759
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 729
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 730
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 732
    const-string v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_2
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 754
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "percAwake":J
    .restart local v27    # "totalTime":I
    :cond_3
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_4

    const-string v4, " -"

    goto/16 :goto_3

    :cond_4
    const-string v4, "  "

    goto/16 :goto_3

    .line 761
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_6

    const-string v4, "   -"

    goto :goto_5

    :cond_6
    const-string v4, "    "

    goto :goto_5

    .line 752
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 769
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 772
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 773
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 32

    .prologue
    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 311
    .local v22, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 313
    .local v20, "nowRealtime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    move-object/from16 v25, v0

    .line 314
    .local v25, "sysCpu":[J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v30, v4, v6

    .line 319
    .local v30, "usertime":J
    const/4 v4, 0x2

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v28, v4, v6

    .line 321
    .local v28, "systemtime":J
    const/4 v4, 0x3

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v10, v4, v6

    .line 323
    .local v10, "idletime":J
    const/4 v4, 0x4

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v12, v4, v6

    .line 324
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v14, v4, v6

    .line 325
    .local v14, "irqtime":J
    const/4 v4, 0x6

    aget-wide v4, v25, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v26, v4, v6

    .line 332
    .local v26, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v4, v30, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 333
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v4, v28, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 334
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 335
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 336
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 337
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 338
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 350
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 351
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 352
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 353
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 354
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 355
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .line 370
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v26    # "softirqtime":J
    .end local v28    # "systemtime":J
    .end local v30    # "usertime":J
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 371
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 372
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 373
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 375
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v24

    .line 377
    .local v24, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v5, "/proc"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    move-object/from16 v19, v0

    .line 383
    .local v19, "loadAverages":[F
    const-string v4, "/proc/loadavg"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    const/4 v4, 0x0

    aget v16, v19, v4

    .line 386
    .local v16, "load1":F
    const/4 v4, 0x1

    aget v18, v19, v4

    .line 387
    .local v18, "load5":F
    const/4 v4, 0x2

    aget v17, v19, v4

    .line 388
    .local v17, "load15":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v16, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v18, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v17, v4

    if-eqz v4, :cond_2

    .line 389
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 390
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 391
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 392
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 399
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 400
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 401
    return-void

    .line 379
    .end local v19    # "loadAverages":[F
    :catchall_0
    move-exception v4

    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method
