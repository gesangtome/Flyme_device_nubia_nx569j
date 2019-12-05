.class public Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "AdjFreezeStrategy.java"


# static fields
.field private static final ADJ_HOLD_TIME:J = 0x2ee0L

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "ApplicationFreeze_Adj"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    .line 8
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 16
    return-void
.end method

.method private callMeAfter(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 64
    return-void
.end method

.method private canFreezeWhenScreenOff(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdjHoldTime()J
    .locals 4

    .prologue
    .line 42
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v2

    iget-wide v0, v2, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mAdjHoldTime:J

    .line 43
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "time":J
    :goto_0
    return-wide v0

    .restart local v0    # "time":J
    :cond_0
    const-wide/16 v0, 0x2ee0

    goto :goto_0
.end method

.method private isBg(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "adj"    # I

    .prologue
    const/4 v0, 0x1

    .line 47
    if-le p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "now"    # J

    .prologue
    .line 59
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    sub-long v0, p2, v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->getAdjHoldTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(I)Z
    .locals 1
    .param p1, "adj"    # I

    .prologue
    const/4 v0, 0x1

    .line 55
    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 8
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 23
    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isBg(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->canFreezeWhenScreenOff(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 25
    .local v0, "now":J
    iget-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 26
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    .line 31
    :cond_1
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bg need wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->getAdjHoldTime()J

    move-result-wide v4

    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->getAdjHoldTime()J

    move-result-wide v2

    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->callMeAfter(J)V

    .line 38
    .end local v0    # "now":J
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 27
    .restart local v0    # "now":J
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bg and time up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 35
    .end local v0    # "now":J
    :cond_5
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not bg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_6
    iput-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    goto :goto_0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    .line 20
    return-void
.end method
