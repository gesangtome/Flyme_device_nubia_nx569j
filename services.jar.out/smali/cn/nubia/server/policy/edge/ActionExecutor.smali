.class public Lcn/nubia/server/policy/edge/ActionExecutor;
.super Ljava/lang/Object;
.source "ActionExecutor.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;
    }
.end annotation


# static fields
.field private static final MANUAL_MODE_RANGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ActionExecutor"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mDoubleTapAnim:Lcn/nubia/server/policy/edge/DoubleTapAnim;

.field private mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "gestureSettings"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 47
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;-><init>(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    .line 49
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    new-instance v0, Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 51
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-direct {v0, p1, p3}, Lcn/nubia/server/policy/edge/DoubleTapAnim;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDoubleTapAnim:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/CommunalService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/ActionExecutor;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->doDoubleSlideFunction(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/ActionExecutor;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->doLoopSlideFunction(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doPressDownFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doDoubleTapFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method private clearRecentTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.auto_test.clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "paly_animation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v1, "show_toast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 253
    return-void
.end method

.method private collapse(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapseStatusBar(Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method private collapseStatusBar(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    :try_start_0
    const-string v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, "service":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 360
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 362
    .local v3, "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 363
    .local v1, "expand":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 364
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v1    # "expand":Ljava/lang/reflect/Method;
    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doDoubleSlideFunction(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    const/16 v0, 0x2001

    if-ne p1, v0, :cond_1

    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->setBrightness(Z)V

    .line 180
    :cond_1
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_2

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->setBrightness(Z)V

    .line 183
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->show()V

    goto :goto_0
.end method

.method private doDoubleTapFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 187
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x6000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v0, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    if-lez v0, :cond_1

    iget-object v0, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDoubleTapAnim:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    iget-object v1, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget v1, v1, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    iget-object v4, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    invoke-virtual {v0, v1, v4}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->start(FF)V

    .line 193
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 194
    .local v2, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 198
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x64

    add-long/2addr v4, v2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 202
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->doubleTap(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private doLoopSlideFunction(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 206
    const/16 v0, 0x3001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400a

    if-ne p1, v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapse(Landroid/content/Context;)V

    .line 208
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->clearRecentTask()V

    .line 209
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const-string v2, "clear_task"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleSideLoop(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    :cond_1
    return-void
.end method

.method private doPressDownFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/16 v0, 0x4008

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4009

    if-eq p1, v0, :cond_2

    const v0, 0x40001

    if-eq p1, v0, :cond_2

    const v0, 0x40002

    if-ne p1, v0, :cond_3

    .line 165
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 168
    :cond_3
    const/16 v0, 0x400a

    if-ne p1, v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->doLoopSlideFunction(I)V

    goto :goto_0
.end method

.method private doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    const/16 v7, 0x4009

    const/16 v6, 0x4008

    const/16 v5, 0x1002

    const/16 v4, 0x1001

    const/4 v3, 0x0

    .line 214
    const/16 v0, 0x4e21

    .line 215
    .local v0, "leftOrRight":I
    iget v1, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    if-lez v1, :cond_0

    iget-object v1, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v1, v1, v3

    iget v1, v1, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 216
    const/16 v0, 0x4e22

    .line 220
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1, v3}, Lcn/nubia/server/policy/edge/CommunalService;->getSingleSlideFuns(I)I

    move-result v1

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_5

    .line 221
    if-eq p1, v4, :cond_1

    if-eq p1, v6, :cond_1

    const v1, 0x10001

    if-ne p1, v1, :cond_2

    .line 224
    :cond_1
    const/16 v1, 0x4e23

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->luncherPresetApp(II)V

    .line 226
    :cond_2
    if-eq p1, v5, :cond_3

    if-eq p1, v7, :cond_3

    const v1, 0x10002

    if-ne p1, v1, :cond_4

    .line 229
    :cond_3
    const/16 v1, 0x4e24

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->luncherPresetApp(II)V

    .line 245
    :cond_4
    :goto_0
    return-void

    .line 234
    :cond_5
    if-eq p1, v4, :cond_6

    if-eq p1, v6, :cond_6

    const v1, 0x10001

    if-ne p1, v1, :cond_7

    .line 237
    :cond_6
    const/16 v1, 0x4e23

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSwitchApp(II)V

    .line 239
    :cond_7
    if-eq p1, v5, :cond_8

    if-eq p1, v7, :cond_8

    const v1, 0x10002

    if-ne p1, v1, :cond_4

    .line 242
    :cond_8
    const/16 v1, 0x4e24

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSwitchApp(II)V

    goto :goto_0
.end method

.method private doSwitchApp(II)V
    .locals 12
    .param p1, "upDown"    # I
    .param p2, "leftRight"    # I

    .prologue
    .line 256
    const/16 v8, 0x4e23

    if-ne p1, v8, :cond_0

    const/4 v2, 0x1

    .line 257
    .local v2, "isUp":Z
    :goto_0
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const/16 v8, 0x4e21

    if-ne p2, v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    const-string v11, "switch_app"

    invoke-virtual {v9, v10, v2, v8, v11}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleSideMove(Landroid/content/Context;ZZLjava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v8}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList()Ljava/util/List;

    move-result-object v6

    .line 262
    .local v6, "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 263
    .local v3, "length":I
    if-gtz v3, :cond_2

    .line 264
    const-string v8, "ActionExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recent task\'s total size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_2
    return-void

    .line 256
    .end local v2    # "isUp":Z
    .end local v3    # "length":I
    .end local v6    # "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 257
    .restart local v2    # "isUp":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 267
    .restart local v3    # "length":I
    .restart local v6    # "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v8, v2}, Lcn/nubia/server/policy/edge/CommunalService;->getTargeAppIndex(Z)I

    move-result v0

    .line 268
    .local v0, "index":I
    if-ltz v0, :cond_3

    if-lt v0, v3, :cond_4

    .line 269
    :cond_3
    const-string v8, "ActionExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recent task\'s index is not valid, index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and the total size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 272
    :cond_4
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 273
    .local v4, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v4, :cond_5

    .line 274
    const-string v8, "ActionExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recent task of index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 277
    :cond_5
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 278
    .local v5, "opts":Landroid/app/ActivityOptions;
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v9, 0x1

    const/4 v10, 0x4

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v7

    .line 282
    .local v7, "runningRaskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v9, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v8, v9, :cond_6

    .line 284
    const-string v9, "ActionExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current running app is the same as switched, id :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", baseActivity: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", topActivity : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_6
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapse(Landroid/content/Context;)V

    .line 295
    const-string v8, "ActionExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";persistentId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget v8, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v8, :cond_7

    .line 297
    iget-object v1, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 298
    .local v1, "intent":Landroid/content/Intent;
    const v8, 0x10104000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const-string v8, "nubia_start_reason"

    const-string v9, "FIT"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x2

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v1, v9, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 312
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_3
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcn/nubia/server/policy/edge/CommunalService;->updateRecentTasksFlag(Z)V

    goto/16 :goto_2

    .line 305
    :cond_7
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    iget v9, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 309
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    iget v9, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v10, 0x1

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_3
.end method

.method private luncherPresetApp(II)V
    .locals 12
    .param p1, "upDown"    # I
    .param p2, "leftRight"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v7, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v7, v8, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v0

    .line 317
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const/16 v7, 0x4e23

    if-ne p1, v7, :cond_1

    move v9, v6

    :goto_0
    const/16 v7, 0x4e21

    if-ne p2, v7, :cond_2

    move v7, v6

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v10, v11, v9, v7, v6}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleSideMove(Landroid/content/Context;ZZLjava/lang/String;)V

    .line 322
    if-nez v0, :cond_0

    .line 323
    const-string v6, "ActionExecutor"

    const-string v7, "luncherPresetApp: app\'s component is null !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v6, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 326
    .local v5, "opts":Landroid/app/ActivityOptions;
    iget-object v6, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 328
    .local v1, "currentComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 330
    const-string v6, "ActionExecutor"

    const-string v7, "luncherPresetApp: app\'s component is current running !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_3
    return-void

    .end local v1    # "currentComponent":Landroid/content/ComponentName;
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    move v9, v8

    .line 317
    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    const-string v6, ""

    goto :goto_2

    .line 334
    .restart local v1    # "currentComponent":Landroid/content/ComponentName;
    .restart local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    iget-object v6, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapse(Landroid/content/Context;)V

    .line 335
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const v6, 0x10304000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    const-string v6, "nubia_start_reason"

    const-string v7, "FIT"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    :try_start_0
    iget-object v6, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 347
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .line 348
    .local v3, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method

.method private setBrightness(Z)V
    .locals 4
    .param p1, "isIncrease"    # Z

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, "mode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 123
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->setManualBrightness(Z)V

    goto :goto_0
.end method

.method private setManualBrightness(Z)V
    .locals 5
    .param p1, "isIncrease"    # Z

    .prologue
    .line 133
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "currentBrightness":I
    if-eqz p1, :cond_1

    .line 137
    add-int/lit8 v0, v1, 0xa

    .line 142
    .local v0, "brightness":I
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    const/16 v3, 0xff

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 147
    .local v2, "power":Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 150
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "brightness":I
    .end local v1    # "currentBrightness":I
    .end local v2    # "power":Landroid/os/IPowerManager;
    :goto_1
    return-void

    .line 139
    .restart local v1    # "currentBrightness":I
    :cond_1
    add-int/lit8 v0, v1, -0xa

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 153
    .end local v0    # "brightness":I
    .end local v1    # "currentBrightness":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 152
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public onAnimationFinish(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinish, gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinish, gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    iget v1, p1, Lcn/nubia/edgegesture/EdgeGesture;->mType:I

    iget v2, p1, Lcn/nubia/edgegesture/EdgeGesture;->mAction:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
