.class public Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;
    }
.end annotation


# static fields
.field public static final CMD_REQUEST_APP_MSG:I = 0x69

.field public static final CMD_REQUEST_CHARGED:I = 0x6b

.field public static final CMD_REQUEST_CHARGING:I = 0x6a

.field public static final CMD_REQUEST_CLOSE_APP_MSG:I = 0x71

.field public static final CMD_REQUEST_ENTER_SINGLE_UI_MODE:I = 0x6f

.field public static final CMD_REQUEST_EXIT_SINGLE_UI_MODE:I = 0x70

.field public static final CMD_REQUEST_KEYGUARD_DRAG_RELEASE:I = 0x65

.field public static final CMD_REQUEST_KEYGUARD_DRAG_START:I = 0x64

.field public static final CMD_REQUEST_KEY_EVENT:I = 0x66

.field public static final CMD_REQUEST_MISS_EVENT:I = 0x68

.field public static final CMD_REQUEST_MOTION_EVENT:I = 0x67

.field public static final CMD_REQUEST_PROXIMITY_SCREEN_OFF:I = 0x6d

.field public static final CMD_REQUEST_PROXIMITY_SCREEN_ON:I = 0x6e

.field public static final CMD_REQUEST_SCENE:I = 0xc8

.field public static final CMD_REQUEST_SET_BRIGHTNESS:I = 0x6c

.field public static final CMD_STATE_BOOT_COMPLETE:I = 0x4

.field public static final CMD_STATE_KEYGUARD_UNLOCK:I = 0x3

.field public static final CMD_STATE_SCREEN_OFF:I = 0x2

.field public static final CMD_STATE_SCREEN_ON:I = 0x1

.field private static final MSG_TURN_OFF_LIGHT:I = 0x3ea

.field private static final MSG_TURN_ON_LIGHT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "BreathingLightStateMachine"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

.field private mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

.field private mInputEventThread:Landroid/os/HandlerThread;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

.field private final mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

.field private final mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

.field private final mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 54
    const-string v0, "BreathingLightStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    .line 47
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    .line 48
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    .line 49
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    .line 50
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    .line 55
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 58
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BreathLightCallJNI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    .line 66
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardDragStart()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardDragRelease()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyEvent()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMotionEvent()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleSetBrightnesss()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Lcn/nubia/server/breathinglight/BreathingLightService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOff()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOn()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleEnterSingleUiMode()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleExitSingleUiMode()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardUnlock()V

    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 191
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handleEnterSingleUiMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 305
    return-void
.end method

.method private handleExitSingleUiMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 310
    return-void
.end method

.method private handleKeyEvent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 257
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    const/16 v0, 0x28

    .line 261
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v0, v6}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    const/16 v0, 0x38

    .line 266
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    .end local v0    # "lights":I
    :cond_0
    return-void
.end method

.method private handleKeyguardDragRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 254
    return-void
.end method

.method private handleKeyguardDragStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 247
    return-void
.end method

.method private handleKeyguardUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isSingleUiModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 221
    return-void
.end method

.method private handleMotionEvent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 273
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const/16 v0, 0x28

    .line 277
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v0, v6}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    .end local v0    # "lights":I
    :cond_0
    return-void
.end method

.method private handleProximityScreenOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 295
    return-void
.end method

.method private handleProximityScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 300
    return-void
.end method

.method private handleScreenOff()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 213
    return-void
.end method

.method private handleScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isSingleUiModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handleSetBrightnesss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 290
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 242
    return-void
.end method

.method protected handleCharging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 237
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 232
    return-void
.end method

.method protected handleMissEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v3, 0x4

    invoke-virtual {v2, v5, v4, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 227
    return-void
.end method
