.class public Lcn/nubia/server/policy/edge/effects/state/StateVerifier;
.super Ljava/lang/Object;
.source "StateVerifier.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
.implements Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;
.implements Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
.implements Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mAppWindowShowd:Z

.field private mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

.field private final mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

.field private mFirstFrameDraw:Z

.field private mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

.field private mLauncherShowPending:Z

.field private mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

.field private mLauncherWindowShowd:Z

.field private final mLetGoState:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

.field private mNeedWaitAnimation:Z

.field private mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

.field private final mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

.field private final mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

.field private final mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

.field private mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;
    .param p3, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    .line 39
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    .line 47
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    .line 48
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    .line 52
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLetGoState:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    .line 53
    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    .line 54
    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    invoke-direct {v0, p3}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;-><init>(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    .line 55
    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    .line 56
    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;-><init>()V

    new-instance v4, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-direct {v4}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;-><init>()V

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;-><init>(Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;Lcn/nubia/server/policy/edge/effects/state/StateContext;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->getIdleStateNode()Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .line 60
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .line 61
    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 62
    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 63
    return-void
.end method

.method private transferToIdleState(Z)V
    .locals 3
    .param p1, "forceStop"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->forceReset()V

    .line 154
    :goto_0
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 155
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 156
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    .line 157
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    .line 158
    const/16 v0, 0x457

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToSpecialState(I)V

    .line 159
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->releaseLock()V

    goto :goto_0
.end method

.method private transferToSpecialState(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->leave()V

    .line 142
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .line 143
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->getStateNode(I)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .line 144
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V

    .line 146
    return-void
.end method

.method private transferToStateInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 131
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 133
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->leave()V

    .line 134
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .line 135
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFactory:Lcn/nubia/server/policy/edge/effects/state/StateFactory;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateFactory;->getStateNode(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V

    .line 138
    return-void
.end method

.method private willBlockByLock(I)Z
    .locals 3
    .param p1, "action"    # I

    .prologue
    const/16 v2, 0x457

    const/4 v0, 0x1

    .line 78
    const v1, 0x99001

    if-ne p1, v1, :cond_4

    .line 80
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->hasLock()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->getName()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->setLock()V

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->toggleOff()V

    .line 87
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->getName()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 89
    const-string v1, "State"

    const-string v2, "anime finished, we toggle off and release lock"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->releaseLock()V

    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "anime not finished, we only toggle off"

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "I received 2 idle action without any gesture action between them"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->hasLock()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateLock:Lcn/nubia/server/policy/edge/effects/state/StateLock;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/StateLock;->toggleOn()V

    goto :goto_0

    .line 108
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 168
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLetGoState:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;->canApplyStateChange(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 170
    return-void
.end method

.method public canChangeToEnding(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8ae

    .line 175
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->getName()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartSingleSlide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " give me null package name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    if-nez p1, :cond_1

    .line 178
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canChangeToEnding no observation, last state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToSpecialState(I)V

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToSpecialState(I)V

    .line 184
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canChangeToEnding observer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0, p1, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->beginObserve(Ljava/lang/String;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;)V

    goto :goto_0
.end method

.method public canShowLauncherOnFirstDraw()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    .line 274
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->beginObserve(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->canShow()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    goto :goto_0
.end method

.method public deliverEventToState(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->handleEvent(Landroid/view/MotionEvent;)V

    .line 163
    return-void
.end method

.method public getLastGesture()Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLastGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    return-object v0
.end method

.method public initControllers(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)V
    .locals 0
    .param p1, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p2, "textureCaches"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p3, "resLoader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;
    .param p4, "launcherWindowObserver"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 71
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .line 72
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 73
    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .line 74
    return-void
.end method

.method public isAppWindowCreated()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    return v0
.end method

.method public isLauncherWindowCreated()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    .line 256
    :cond_0
    return-void
.end method

.method public onAnimationFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onAnimationFinish"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 206
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinish in StateMachine time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinish in StateMachine time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    .line 209
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    .line 210
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    .line 211
    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToIdleState(Z)V

    .line 212
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->stopObserve()V

    .line 213
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->stopObserve()V

    .line 214
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onCaughtException()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "State"

    const-string v1, "onCaughtException in StateMachine"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToIdleState(Z)V

    .line 234
    return-void
.end method

.method public onDrawFirstFrame()V
    .locals 4

    .prologue
    .line 192
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFirstFrame in StateMachine time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFirstFrame in StateMachine time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mFirstFrameDraw:Z

    .line 195
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->beginObserve(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;)V

    .line 197
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->canShow()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherShowPending:Z

    .line 201
    :cond_0
    return-void
.end method

.method public onLauncherFirstFrameDraw()V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    .line 287
    const-string v0, "FitAnim"

    const-string v1, "StateVerifier onLauncherFirstFrameDraw"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public onSurfaceFirstShown(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    const/4 v0, 0x1

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    goto :goto_0
.end method

.method public onWaiUntilTimeOut()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mNeedWaitAnimation:Z

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mAppWindowShowd:Z

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "obseved window never showed until time out"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWaitLauncherUntilTimeOut()V
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mLauncherWindowShowd:Z

    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "obseved launcher window never showed until time out"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transferToState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->willBlockByLock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;->canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToStateInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we can\'t transfer to state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->mCurrentState:Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so we reset the machine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToIdleState(Z)V

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method
