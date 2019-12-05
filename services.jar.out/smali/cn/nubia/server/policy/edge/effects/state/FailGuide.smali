.class public Lcn/nubia/server/policy/edge/effects/state/FailGuide;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "FailGuide.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mEntered:Z

.field private mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mWindowCreated:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "stateName"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    .line 12
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mEntered:Z

    .line 13
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 14
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWindowCreated:Z

    .line 15
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 19
    return-void
.end method

.method private prepare()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    const/16 v2, 0x3e8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    .line 46
    return-void
.end method

.method private startGuideFailAnimation()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mAnimSyncCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingGuideCancelAnim()V

    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canChangeToEnding(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private startSingleFailAnimation()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mAnimSyncCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingFailAnim()V

    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canChangeToEnding(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 110
    return-void
.end method


# virtual methods
.method public canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .param p2, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p3, "loader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    .line 30
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FailGuide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FailGuide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mEntered:Z

    .line 34
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 35
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->cancelPrepare()V

    .line 37
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->prepare()V

    .line 39
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    return-void
.end method

.method public leave()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mEntered:Z

    .line 55
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 56
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWindowCreated:Z

    .line 57
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 58
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 6

    .prologue
    .line 64
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mEntered:Z

    if-nez v1, :cond_0

    .line 65
    const-string v1, "State"

    const-string v2, "onSurfaceCreated called but FailGuide state has gone"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWindowCreated:Z

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "State"

    const-string v2, "onSurfaceCreated called here more than once in FailGuide"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "onSurfaceCreated called here more than once in FailGuide"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    const-string v1, "State"

    const-string v2, "onSurfaceCreated in FailGuide"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v1, "Timer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceCreated in FailGuide time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v2, "onSurfaceCreated"

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mWindowCreated:Z

    .line 77
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    invoke-interface {v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->getLastGesture()Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    move-result-object v0

    .line 78
    .local v0, "lastGesture":Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isPreSingleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isPreSingleLoop(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->startSingleFailAnimation()V

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isPressDownState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/FailGuide;->startGuideFailAnimation()V

    goto :goto_0

    .line 84
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we in press cancel state but last gesture is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
