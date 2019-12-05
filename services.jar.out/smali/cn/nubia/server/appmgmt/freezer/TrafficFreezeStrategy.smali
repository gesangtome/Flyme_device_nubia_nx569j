.class public Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "TrafficFreezeStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TrafficFreezeStrategy"

.field private static final TRAFFIC_CALCULATE_INTERVAL:I = 0xea60

.field private static final TRAFFIC_FREEZE_THRESHOLD:I = 0x32000


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 21
    return-void
.end method

.method private firstCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 45
    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getTraffic(I)J

    move-result-wide v0

    .line 46
    .local v0, "traffic":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 50
    :goto_0
    return v2

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 49
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    .line 50
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCalculateInterval()J
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v2

    iget-wide v0, v2, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficCalInterval:J

    .line 79
    .local v0, "calculateInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "calculateInterval":J
    :goto_0
    return-wide v0

    .restart local v0    # "calculateInterval":J
    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method

.method private getFreezeThreshold()J
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v2

    iget-wide v0, v2, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficFreezeThreshold:J

    .line 74
    .local v0, "freezeThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "freezeThreshold":J
    :goto_0
    return-wide v0

    .restart local v0    # "freezeThreshold":J
    :cond_0
    const-wide/32 v0, 0x32000

    goto :goto_0
.end method

.method private getTraffic(I)J
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->getUidMobileBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->getUidWifiBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCheckOnce(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 40
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private otherCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 10
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 56
    .local v0, "now":J
    iget v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getTraffic(I)J

    move-result-wide v2

    .line 57
    .local v2, "nowTraffic":J
    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 58
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 59
    const/4 v4, 0x1

    .line 69
    :goto_0
    return v4

    .line 61
    :cond_0
    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getCalculateInterval()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-gez v5, :cond_2

    .line 62
    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    invoke-direct {p0, v6, v7, v2, v3}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->shouldFreeze(JJ)Z

    move-result v4

    .line 63
    .local v4, "shouldFreeze":Z
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "TrafficFreezeStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "traffic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    sub-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iput-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    .line 65
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    goto :goto_0

    .line 69
    .end local v4    # "shouldFreeze":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private shouldFreeze(JJ)Z
    .locals 5
    .param p1, "firstT"    # J
    .param p3, "secT"    # J

    .prologue
    .line 83
    sub-long v0, p3, p1

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->getFreezeThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->hasCheckOnce(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->otherCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->firstCheck(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;->DEBUG:Z

    .line 25
    return-void
.end method
