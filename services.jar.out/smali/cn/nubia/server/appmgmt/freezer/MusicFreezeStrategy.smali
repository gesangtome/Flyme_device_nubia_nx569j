.class public Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "MusicFreezeStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static final DOUBLE_CHECK_DURING:J = 0x7530L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIsMusicActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "ApplicationFreeze_Music"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 24
    return-void
.end method

.method private callMeAfter(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 118
    return-void
.end method

.method private getDoubleCheckDuring()J
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v2

    iget-wide v0, v2, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mMusicCheckTime:J

    .line 67
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "time":J
    :goto_0
    return-wide v0

    .restart local v0    # "time":J
    :cond_0
    const-wide/16 v0, 0x7530

    goto :goto_0
.end method

.method private isAppInFocus(Landroid/media/AudioManager;Ljava/lang/String;)Z
    .locals 8
    .param p1, "am"    # Landroid/media/AudioManager;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "result":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "audio":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "isAppInFocus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    .local v2, "isAppInFocus":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 79
    .end local v2    # "isAppInFocus":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isMusicActive(I)Z
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "result":Z
    const-class v0, Landroid/media/AudioSystem;

    .line 104
    .local v0, "audio":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "isActive"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    .local v2, "isMusicActive":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 109
    .end local v2    # "isMusicActive":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isMusicPlay(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsMusicActive:Z

    if-nez v3, :cond_1

    .line 84
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsMusicActive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsMusicActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 88
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isAppInFocus(Landroid/media/AudioManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAppInFocus: true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isMusicActive(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AudioSystem.isActive: true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method private isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "now"    # J

    .prologue
    .line 113
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    sub-long v0, p2, v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

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
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 8
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 37
    .local v0, "now":J
    iget-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isMusicPlay(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->callMeAfter(J)V

    .line 41
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " first check no music wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 44
    :cond_1
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " first check music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isMusicPlay(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 49
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec check no music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 53
    :cond_4
    iput-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 54
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec check music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_5
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time is not up wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v4

    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_6
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v2

    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->callMeAfter(J)V

    goto/16 :goto_0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public preCheck()V
    .locals 3

    .prologue
    .line 27
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 28
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsMusicActive:Z

    .line 29
    return-void
.end method

.method public resetArgs()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    .line 33
    return-void
.end method
