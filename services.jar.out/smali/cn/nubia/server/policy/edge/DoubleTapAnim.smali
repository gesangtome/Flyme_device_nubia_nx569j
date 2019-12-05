.class public Lcn/nubia/server/policy/edge/DoubleTapAnim;
.super Ljava/lang/Object;
.source "DoubleTapAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_DEINIT:I = 0x3

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_START:I = 0x2

.field private static final RADIUS:I = 0x2b


# instance fields
.field private mCircleView:Lcn/nubia/server/policy/edge/CircleView;

.field private mContext:Landroid/content/Context;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSettingChangeListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

.field private mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureSettings"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;-><init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mOnSettingChangeListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;-><init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    .line 72
    iput-object p2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 73
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_double_click"

    iget-object v2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mOnSettingChangeListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->addOnSettingChangeListener(Ljava/lang/String;Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Lcn/nubia/server/policy/edge/GestureSettings;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/DoubleTapAnim;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->startInner(FF)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->deInit()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    return-object v0
.end method

.method private deInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CircleView;->stopAnim()V

    .line 130
    iput-object v2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    .line 131
    iput-object v2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    .line 133
    :cond_0
    return-void
.end method

.method private startInner(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CircleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CircleView;->setX(F)V

    .line 122
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CircleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CircleView;->setY(F)V

    .line 123
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CircleView;->startAnim()V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 83
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 85
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x538

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FitDoubleTap"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 92
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x3030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    const v1, 0x30d0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/policy/edge/CircleView;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    new-instance v1, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;-><init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CircleView;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public start(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    const/4 v1, 0x2

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method
