.class public Lcn/nubia/server/policy/edge/effects/state/StartGuide;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "StartGuide.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mEntered:Z

.field private mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mGuideFinish:Z

.field private mIsLeft:Z

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

.field private mY:F


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "stateName"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    .line 19
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 20
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mEntered:Z

    .line 21
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mIsLeft:Z

    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mY:F

    .line 23
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWindowCreated:Z

    .line 24
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mTextureUploaded:Z

    .line 25
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGuideFinish:Z

    .line 26
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mList:Ljava/util/List;

    .line 28
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 29
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 33
    return-void
.end method

.method private convertToDirectionPool(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 157
    iget v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 158
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

    .line 162
    :cond_0
    iget-object v1, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v0, v1, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    .line 164
    .local v0, "x":F
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/DirectionClassifier;->isLeft(F)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mIsLeft:Z

    .line 166
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mIsLeft:Z

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x2

    .line 169
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private prepare()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 60
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setGuideAnimCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    .line 65
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onTextureUploaded"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 66
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mIsLeft:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4e21

    :goto_0
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mY:F

    invoke-virtual {v1, v0, v2, p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareGuideStartTexture(IFLcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 68
    return-void

    .line 66
    :cond_0
    const/16 v0, 0x4e22

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mSyncCallbk is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mY:F

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingGuideStartAnim(IFLjava/util/List;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 153
    return-void
.end method


# virtual methods
.method public canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 37
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isPreSingleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4003

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x5001

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGuideFinish:Z

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
    .line 45
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartGuide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartGuide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mEntered:Z

    .line 49
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->convertToDirectionPool(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->setDirection(I)V

    .line 50
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mY:F

    .line 51
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 52
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 53
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 54
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mStateContext:Lcn/nubia/server/policy/edge/effects/state/StateContext;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/state/StateContext;->getLauncherNotifier()Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mIsLeft:Z

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->canPrepare(Z)V

    .line 55
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->prepare()V

    .line 56
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    return-void
.end method

.method public leave()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mIsLeft:Z

    .line 77
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mY:F

    .line 78
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 79
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mEntered:Z

    .line 80
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWindowCreated:Z

    .line 81
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mTextureUploaded:Z

    .line 82
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGuideFinish:Z

    .line 83
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mList:Ljava/util/List;

    .line 84
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 85
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onGuideAnimFinished()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mGuideFinish:Z

    .line 116
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .prologue
    .line 93
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mEntered:Z

    if-nez v0, :cond_1

    .line 94
    const-string v0, "State"

    const-string v1, "onSurfaceCreated called but StartGuide state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWindowCreated:Z

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "State"

    const-string v1, "onSurfaceCreated called here more than once in StartGuide"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onSurfaceCreated called here more than once in StartGuide"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated in StartGuide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated in StartGuide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWindowCreated:Z

    .line 107
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mTextureUploaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWindowCreated:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->startAnimation()V

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
    .line 121
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mEntered:Z

    if-nez v0, :cond_1

    .line 122
    const-string v0, "State"

    const-string v1, "onTextureUploaded called but StartGuide state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mTextureUploaded:Z

    if-eqz v0, :cond_2

    .line 125
    const-string v0, "State"

    const-string v1, "onTextureUploaded called here more than once in StartGuide"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onTextureUploaded called here more than once in StartGuide"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextureUploaded in StartGuide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextureUploaded in StartGuide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mList:Ljava/util/List;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mTextureUploaded:Z

    .line 136
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mTextureUploaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->mWindowCreated:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartGuide;->startAnimation()V

    goto :goto_0
.end method
