.class public Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;
.super Ljava/lang/Object;
.source "FreezeAgainStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static final FREEZE_AGAIN_TIME:J = 0xbb8L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "ApplicationFreeze_Again"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->TAG:Ljava/lang/String;

    .line 9
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 17
    return-void
.end method

.method private callMeAfter(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 67
    return-void
.end method

.method private getFreezeAgainTime()J
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v2

    iget-wide v0, v2, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeAgainTime:J

    .line 44
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "time":J
    :goto_0
    return-wide v0

    .restart local v0    # "time":J
    :cond_0
    const-wide/16 v0, 0xbb8

    goto :goto_0
.end method

.method private isDifferentFromInfo(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 48
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isProcessFrozen(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProcessFrozen(I)Z
    .locals 8
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v4, "isProcessFrozen"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    .local v1, "isProcessFrozen":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 58
    .end local v1    # "isProcessFrozen":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 58
    goto :goto_0
.end method

.method private isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "now"    # J

    .prologue
    .line 62
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    sub-long v0, p2, v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->getFreezeAgainTime()J

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


# virtual methods
.method resetArgs()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->DEBUG:Z

    .line 21
    return-void
.end method

.method shouldFreezeAgain(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 8
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isDifferentFromInfo(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 25
    iget-boolean v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v3, :cond_2

    .line 26
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not frozen out of control"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 28
    .local v0, "now":J
    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 29
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    .line 33
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->getFreezeAgainTime()J

    move-result-wide v4

    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->callMeAfter(J)V

    .line 39
    .end local v0    # "now":J
    :cond_2
    :goto_0
    return v2

    .line 30
    .restart local v0    # "now":J
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    const/4 v2, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "now":J
    :cond_4
    iput-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    goto :goto_0
.end method
