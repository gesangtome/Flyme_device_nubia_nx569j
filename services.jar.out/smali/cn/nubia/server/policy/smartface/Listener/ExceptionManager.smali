.class public Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;
.super Ljava/lang/Object;
.source "ExceptionManager.java"


# static fields
.field private static final DEAL_EXIT_SMARTFACE:I = 0x0

.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "ExceptionManager"


# instance fields
.field private isVoiceDownKeyDown:Z

.field private isVoiceUpKeyDown:Z

.field private mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;-><init>(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceUpKeyDown:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceDownKeyDown:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->resetStates()V

    return-void
.end method

.method private disableSmartFace()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method

.method private dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isKeyEventIntercepted()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 81
    :goto_0
    return v2

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 54
    .local v1, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 55
    .local v0, "down":Z
    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_2
    move v2, v3

    .line 81
    goto :goto_0

    .end local v0    # "down":Z
    :cond_3
    move v0, v3

    .line 54
    goto :goto_1

    .line 57
    .restart local v0    # "down":Z
    :pswitch_0
    if-eqz v0, :cond_4

    .line 58
    iput-boolean v2, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceUpKeyDown:Z

    .line 59
    iget-boolean v4, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceDownKeyDown:Z

    if-eqz v4, :cond_2

    .line 60
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->disableSmartFace()V

    goto :goto_0

    .line 64
    :cond_4
    iput-boolean v3, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceUpKeyDown:Z

    goto :goto_2

    .line 68
    :pswitch_1
    if-eqz v0, :cond_5

    .line 69
    iput-boolean v2, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceDownKeyDown:Z

    .line 70
    iget-boolean v4, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceUpKeyDown:Z

    if-eqz v4, :cond_2

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->disableSmartFace()V

    goto :goto_0

    .line 75
    :cond_5
    iput-boolean v3, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceDownKeyDown:Z

    goto :goto_2

    .line 55
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isKeyEventIntercepted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    .line 86
    .local v0, "flag":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetStates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceUpKeyDown:Z

    .line 97
    iput-boolean v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceDownKeyDown:Z

    .line 98
    return-void
.end method


# virtual methods
.method public forceExit(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;)V
    .locals 0
    .param p1, "mUpdateCallback"    # Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .line 41
    return-void
.end method
