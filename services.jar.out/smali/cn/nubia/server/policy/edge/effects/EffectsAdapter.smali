.class public Lcn/nubia/server/policy/edge/effects/EffectsAdapter;
.super Ljava/lang/Object;
.source "EffectsAdapter.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;


# instance fields
.field private final mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

.field private final mFilter:Lcn/nubia/server/policy/edge/effects/GestureActionFilter;

.field private final mManager:Lcn/nubia/server/policy/edge/effects/EffectsManager;

.field private final mServiceImpl:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcn/nubia/server/policy/edge/AnimationCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/HandlerThread;
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/AnimationCallback;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

    .line 24
    new-instance v0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mFilter:Lcn/nubia/server/policy/edge/effects/GestureActionFilter;

    .line 25
    new-instance v0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mServiceImpl:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

    .line 26
    new-instance v0, Lcn/nubia/server/policy/edge/effects/EffectsManager;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mServiceImpl:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

    invoke-direct {v0, p1, v1, p0, p2}, Lcn/nubia/server/policy/edge/effects/EffectsManager;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mManager:Lcn/nubia/server/policy/edge/effects/EffectsManager;

    .line 27
    return-void
.end method


# virtual methods
.method public canApplyStateChange(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/AnimationCallback;->onAnimationFinish(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onEdgeTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mManager:Lcn/nubia/server/policy/edge/effects/EffectsManager;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/EffectsManager;->deliverTouchEvent(Landroid/view/MotionEvent;)V

    .line 40
    return-void
.end method

.method public onEnterIdleState()V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mFilter:Lcn/nubia/server/policy/edge/effects/GestureActionFilter;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->resetFilter()V

    .line 44
    new-instance v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;-><init>()V

    .line 45
    .local v0, "gesture":Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    const v1, 0x99000

    iput v1, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mType:I

    .line 46
    const v1, 0x99001

    iput v1, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    .line 47
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mManager:Lcn/nubia/server/policy/edge/effects/EffectsManager;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/EffectsManager;->notifyGestureChanges(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 48
    return-void
.end method

.method public onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 30
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->convertFrom(Lcn/nubia/edgegesture/EdgeGesture;)Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    move-result-object v0

    .line 31
    .local v0, "localGesture":Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mFilter:Lcn/nubia/server/policy/edge/effects/GestureActionFilter;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->willFilterThisOut(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->mManager:Lcn/nubia/server/policy/edge/effects/EffectsManager;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/EffectsManager;->notifyGestureChanges(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v1, "Adapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willFilterThisOut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
