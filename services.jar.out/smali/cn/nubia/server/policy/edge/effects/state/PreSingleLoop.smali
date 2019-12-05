.class public Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "PreSingleLoop.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mAnimating:Z

.field private mEntered:Z

.field private mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

.field private mTextureUploaded:Z

.field private mWindowCreated:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "stateName"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    .line 18
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 19
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEntered:Z

    .line 20
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWindowCreated:Z

    .line 21
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mTextureUploaded:Z

    .line 22
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mList:Ljava/util/List;

    .line 23
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimating:Z

    .line 25
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 30
    return-void
.end method

.method private convertToCtrlStatus(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x2

    .line 105
    :goto_0
    return v0

    .line 98
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 81
    iget v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In PreSingleSlide state, gesture point count is not 1, is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iget-object v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v0, v1, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    .line 88
    .local v0, "x":F
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/DirectionClassifier;->isLeft(F)Z

    move-result v1

    return v1
.end method

.method private isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 67
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x3005

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4006

    if-ne v0, v1, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_1
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x3006

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4007

    if-ne v0, v1, :cond_3

    .line 72
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In PreSingleLoop state, gesture action not correct, is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepare()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 55
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onTextureUploaded"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 60
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e23

    :goto_0
    invoke-virtual {v1, v0, p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareSingleMultiSlideTexture(ILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 63
    return-void

    .line 60
    :cond_0
    const/16 v0, 0x4e24

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 5

    .prologue
    .line 191
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentDeltaY()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingPreAnim(IFFLjava/util/List;)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimating:Z

    .line 197
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 198
    return-void
.end method


# virtual methods
.method public canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 34
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartSingleLoop(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isSingleFailState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .param p2, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p3, "loader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    .line 41
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreSingleLoop enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreSingleLoop enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEntered:Z

    .line 45
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->convertToCtrlStatus(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->setDirection(I)V

    .line 47
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 48
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 50
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->prepare()V

    .line 51
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEntered:Z

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->updateEvent(Landroid/view/MotionEvent;)V

    .line 117
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentDeltaY()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->updatePageFlippingAnim(IFFLjava/util/List;)V

    goto :goto_0
.end method

.method public leave()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 129
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEntered:Z

    .line 130
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWindowCreated:Z

    .line 131
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mTextureUploaded:Z

    .line 132
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mList:Ljava/util/List;

    .line 133
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimating:Z

    .line 134
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 135
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .prologue
    .line 143
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEntered:Z

    if-nez v0, :cond_1

    .line 144
    const-string v0, "State"

    const-string v1, "onSurfaceCreated called but PreSingleLoop state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWindowCreated:Z

    if-eqz v0, :cond_2

    .line 147
    const-string v0, "State"

    const-string v1, "onSurfaceCreated called here more than once in PreSingleLoop"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onSurfaceCreated called here more than once in PreSingleLoop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated in PreSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated in PreSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWindowCreated:Z

    .line 158
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mTextureUploaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWindowCreated:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->startAnimation()V

    goto :goto_0
.end method

.method public onTextureUploaded(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mEntered:Z

    if-nez v0, :cond_1

    .line 168
    const-string v0, "State"

    const-string v1, "onTextureUploaded called but PreSingleLoop state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mTextureUploaded:Z

    if-eqz v0, :cond_2

    .line 171
    const-string v0, "State"

    const-string v1, "onTextureUploaded called here more than once in PreSingleLoop"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onTextureUploaded called here more than once in PreSingleLoop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextureUploaded in PreSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextureUploaded in PreSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mList:Ljava/util/List;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mTextureUploaded:Z

    .line 183
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mTextureUploaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->mWindowCreated:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleLoop;->startAnimation()V

    goto :goto_0
.end method
