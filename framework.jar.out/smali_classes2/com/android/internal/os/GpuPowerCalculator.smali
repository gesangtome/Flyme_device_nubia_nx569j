.class public Lcom/android/internal/os/GpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "GpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;

.field private mSumPower:D

.field private mSumTime:J

.field private mSumUidFgTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/os/GpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 39
    return-void
.end method

.method private calcSumFgTime(Landroid/os/BatteryStats;I)V
    .locals 12
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "statsType"    # I

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 70
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 71
    .local v0, "NU":I
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumUidFgTime:J

    .line 74
    const/4 v2, 0x0

    .local v2, "iu":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 75
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    .line 76
    .local v6, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x3e8

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 80
    .local v3, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 81
    .local v4, "processStatsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 82
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    .line 83
    .local v5, "ps":Landroid/os/BatteryStats$Uid$Proc;
    iget-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumUidFgTime:J

    invoke-virtual {v5, p2}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumUidFgTime:J

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "i":I
    .end local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v4    # "processStatsCount":I
    .end local v5    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v6    # "u":Landroid/os/BatteryStats$Uid;
    :cond_2
    return-void
.end method


# virtual methods
.method public calcSumPower(Landroid/os/BatteryStats;I)D
    .locals 12
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "statsType"    # I

    .prologue
    .line 43
    iget-object v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v8}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v0

    .line 44
    .local v0, "speedSteps":I
    const-wide/16 v4, 0x0

    .line 45
    .local v4, "steptime":J
    const-wide/16 v6, 0x0

    .line 46
    .local v6, "sumsteptime":J
    const-wide/16 v2, 0x0

    .line 48
    .local v2, "steppower":D
    const/4 v1, 0x0

    .local v1, "step":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "gpu.active"

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    .line 50
    invoke-virtual {p1, v1, p2}, Landroid/os/BatteryStats;->getTimeAtGpuSpeedStep(II)J

    move-result-wide v4

    .line 53
    iget-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    long-to-double v10, v4

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    .line 54
    iget-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumTime:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumTime:J

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/GpuPowerCalculator;->calcSumFgTime(Landroid/os/BatteryStats;I)V

    .line 64
    iget-wide v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    return-wide v8
.end method

.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 6
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 99
    iget-wide v0, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumUidFgTime:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 100
    :cond_0
    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    .line 113
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 105
    :cond_2
    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    goto :goto_0

    .line 109
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumUidFgTime:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumPower:D

    .line 91
    iput-wide v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumTime:J

    .line 92
    iput-wide v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSumUidFgTime:J

    .line 93
    return-void
.end method
