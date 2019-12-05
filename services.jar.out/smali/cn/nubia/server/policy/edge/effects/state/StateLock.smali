.class public Lcn/nubia/server/policy/edge/effects/state/StateLock;
.super Ljava/lang/Object;
.source "StateLock.java"


# instance fields
.field private mHasLock:Z

.field private mToggled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mHasLock:Z

    .line 8
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mToggled:Z

    return-void
.end method


# virtual methods
.method public forceReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "State"

    const-string v1, "lock force release, toggle force off"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mHasLock:Z

    .line 54
    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mToggled:Z

    .line 55
    return-void
.end method

.method public hasLock()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mHasLock:Z

    return v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mToggled:Z

    return v0
.end method

.method public releaseLock()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "State"

    const-string v1, "when try to release lock, lock is toggled"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mHasLock:Z

    .line 48
    const-string v0, "State"

    const-string v1, "lock release"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTheToggle()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mToggled:Z

    .line 38
    return-void
.end method

.method public setLock()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "State"

    const-string v1, "lock set"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mHasLock:Z

    .line 12
    return-void
.end method

.method public toggleOff()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mToggled:Z

    .line 25
    const-string v0, "State"

    const-string v1, "toggle off"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public toggleOn()V
    .locals 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mHasLock:Z

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateLock;->mToggled:Z

    .line 17
    const-string v0, "State"

    const-string v1, "toggle on"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string v0, "State"

    const-string v1, "toggle state lock, but there\'s no lock"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
