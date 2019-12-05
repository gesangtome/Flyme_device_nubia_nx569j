.class public Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# static fields
.field static final DISPLAY_STATE_OFF:I = 0x1

.field static final DISPLAY_STATE_ON:I = 0x2

.field static final DISPLAY_STATE_UNKNOWN:I = 0x0

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final TIME_NOT_INIT:J = 0x0L

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static final WINDOW_INVISIBLE:I = 0x2

.field private static final WINDOW_REMOVE:I = 0x3

.field private static final WINDOW_VISIBLE:I = 0x1


# instance fields
.field private mAdj:I

.field mAdjChangeTime:J

.field mCheckMusicTime:J

.field mDpyState:I

.field mFindDifferentTime:J

.field mFreezingTimes:I

.field mIsFrozen:Z

.field mIsInTCPWhiteList:Z

.field private mIsKilled:Z

.field private mLock:Ljava/lang/Object;

.field mNeedQuit:Z

.field mPackageName:Ljava/lang/String;

.field mPid:I

.field private mReasonPid:I

.field mTrafficBytes:J

.field mTrafficCheckTime:J

.field mUid:I

.field private mVisibleWindowIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    .line 22
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    .line 25
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 26
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    .line 27
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    .line 28
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 29
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z

    .line 30
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    .line 32
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficCheckTime:J

    .line 33
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mTrafficBytes:J

    .line 35
    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    .line 38
    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDpyState:I

    .line 39
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsInTCPWhiteList:Z

    .line 43
    iput p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    .line 44
    iput p2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    .line 45
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method addFreezeTimes()V
    .locals 3

    .prologue
    const/16 v0, 0xa

    .line 107
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 109
    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    if-le v2, v0, :cond_0

    :goto_0
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAdj()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    return v0
.end method

.method getFreezingTimer()I
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    monitor-exit v1

    return v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getReasonPid()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    return v0
.end method

.method hasSameName(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "other"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized hasWindowVisible()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isKilled()Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized noteWindowChange(II)Z
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 85
    monitor-enter p0

    if-ne p2, v1, :cond_0

    .line 86
    .local v1, "isVisible":Z
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 87
    .local v0, "Id":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 88
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 90
    :goto_1
    monitor-exit p0

    return v2

    .line 85
    .end local v0    # "Id":Ljava/lang/Integer;
    .end local v1    # "isVisible":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .restart local v0    # "Id":Ljava/lang/Integer;
    .restart local v1    # "isVisible":Z
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 85
    .end local v0    # "Id":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method resetFreezingTimer()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFreezingTimes:I

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetTime()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    .line 50
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    .line 51
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 52
    return-void
.end method

.method setAdj(I)Z
    .locals 1
    .param p1, "adj"    # I

    .prologue
    .line 55
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    if-eq v0, p1, :cond_0

    .line 56
    iput p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized setKilled(Z)V
    .locals 1
    .param p1, "isKilled"    # Z

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setReasonPid(I)Z
    .locals 1
    .param p1, "reasonPid"    # I

    .prologue
    .line 72
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    if-eq v0, p1, :cond_0

    .line 73
    iput p1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reasonPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mReasonPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mVisibleWindowIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Frozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",kill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsKilled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",quit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
