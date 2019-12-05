.class public Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;
.super Ljava/lang/Object;
.source "UniqueEventPool.java"


# instance fields
.field private mActivePointerId:I

.field private mCurrentY:F

.field private mFirstY:F

.field private mFirstYSetted:Z

.field private mPointerIdSetted:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    .line 9
    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    .line 10
    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    .line 11
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    .line 12
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    return-void
.end method

.method private getY(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MotionEvent with invalidate pointer id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 61
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    return v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    .line 16
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    .line 17
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    .line 19
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    .line 20
    return-void
.end method

.method public getCurrentDeltaY()F
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_0

    .line 73
    const-string v0, "State"

    const-string v1, "getCurrentDeltaY but FirstY not setted"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCurrentY()F
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_0

    .line 66
    const-string v0, "State"

    const-string v1, "getCurrentDeltaY but FirstY not setted"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    return v0
.end method

.method public initPointerId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 23
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init UniqueEventPool with pointer id = -1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mActivePointerId:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    .line 27
    return-void
.end method

.method public updateEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "update Event with pointer id not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    .line 35
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_1

    .line 36
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    .line 39
    :cond_1
    return-void
.end method

.method public updateY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 42
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mPointerIdSetted:Z

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "update Event with pointer id not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    .line 47
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    if-nez v0, :cond_1

    .line 48
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mCurrentY:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstY:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->mFirstYSetted:Z

    .line 51
    :cond_1
    return-void
.end method
