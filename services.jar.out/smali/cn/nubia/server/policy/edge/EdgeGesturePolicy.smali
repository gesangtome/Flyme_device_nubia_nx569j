.class public Lcn/nubia/server/policy/edge/EdgeGesturePolicy;
.super Ljava/lang/Object;
.source "EdgeGesturePolicy.java"

# interfaces
.implements Lnubia/os/edge/OnEdgeTouchListener;
.implements Lnubia/os/edge/OnNormalTouchListener;
.implements Lcn/nubia/edgegesture/OnEdgeGestureListener;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGesturePolicy"


# instance fields
.field private mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

.field private mAnimate:Lcn/nubia/server/policy/edge/Animation;

.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

.field private mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mOnGestureEnableListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v2, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;-><init>(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mOnGestureEnableListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 57
    iput-object p1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 60
    invoke-static {}, Lcn/nubia/server/policy/edge/EdgeUiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 61
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcn/nubia/server/policy/edge/GestureSettings;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/server/policy/edge/GestureSettings;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 62
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mOnGestureEnableListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V

    .line 63
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v2, v3, v4, v1}, Lcn/nubia/server/policy/edge/CommunalService;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 64
    new-instance v0, Lcn/nubia/server/policy/edge/ActionExecutor;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/server/policy/edge/ActionExecutor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 65
    .local v0, "executor":Lcn/nubia/server/policy/edge/ActionExecutor;
    new-instance v2, Lcn/nubia/server/policy/edge/Animation;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/server/policy/edge/EdgeUiThread;->get()Lcn/nubia/server/policy/edge/EdgeUiThread;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcn/nubia/server/policy/edge/Animation;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcn/nubia/server/policy/edge/AnimationCallback;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    .line 66
    new-instance v2, Lcn/nubia/server/policy/edge/ActionStateMachine;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    invoke-direct {v2, v3, v1, v4, v5}, Lcn/nubia/server/policy/edge/ActionStateMachine;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;Lcn/nubia/server/policy/edge/OnActionListener;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 67
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->start()V

    .line 69
    new-instance v2, Lcn/nubia/edgegesture/EdgeGestureDetector;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/edgegesture/EdgeGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    .line 71
    invoke-static {}, Lnubia/os/edge/EdgeTouchManager;->getInstance()Lnubia/os/edge/EdgeTouchManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

    .line 72
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

    invoke-virtual {v2, p0}, Lnubia/os/edge/EdgeTouchManager;->registerEdgeTouchListener(Lnubia/os/edge/OnEdgeTouchListener;)V

    .line 73
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

    invoke-virtual {v2, p0}, Lnubia/os/edge/EdgeTouchManager;->registerNormalTouchListener(Lnubia/os/edge/OnNormalTouchListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/edgegesture/EdgeGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    return-object v0
.end method

.method private sendGestureToStateMachine(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getCancelGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    invoke-virtual {v0, p2}, Lcn/nubia/edgegesture/EdgeGestureDetector;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 131
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public onEdgeGesture(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 98
    const-string v0, "EdgeGesturePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x4001

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x1007

    if-ne v0, v1, :cond_2

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isGestureEnable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->sendGestureToStateMachine(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->sendGestureToStateMachine(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "EdgeGesturePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive invalid edge gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEdgeTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/edgegesture/EdgeGestureDetector;->onEdgeTouchEvent(Landroid/view/MotionEvent;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/Animation;->onEdgeTouch(Landroid/view/MotionEvent;)V

    .line 125
    return-void
.end method

.method public onNormalTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/edgegesture/EdgeGestureDetector;->onNormalTouchEvent(Landroid/view/MotionEvent;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/Animation;->onNormalTouch(Landroid/view/MotionEvent;)V

    .line 119
    return-void
.end method

.method public systemBooted()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->systemBooted()V

    .line 78
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettings;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
