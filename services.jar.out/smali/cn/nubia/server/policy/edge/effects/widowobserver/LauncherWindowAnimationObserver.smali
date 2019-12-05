.class public Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;
.super Ljava/lang/Object;
.source "LauncherWindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;,
        Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;
    }
.end annotation


# static fields
.field private static final NUBIA_LAUNCHER_FIRST_FRAME_DRAW:Ljava/lang/String; = "nubia_launcher_first_frame_draw"

.field private static final TIME_OUT:I = 0x3e8

.field private static final WINDOW_ANIMATION_TIME_OUT:I = 0x10000


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasObserved:Z

.field private mLauncherShowObserver:Landroid/database/ContentObserver;

.field private mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

.field private mObserverHandler:Landroid/os/Handler;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHasObserved:Z

    .line 26
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mObserverHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mLauncherShowObserver:Landroid/database/ContentObserver;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHasObserved:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHasObserved:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public beginObserve(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;)V
    .locals 6
    .param p1, "listener"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    .prologue
    const/high16 v5, 0x10000

    const/4 v4, 0x0

    .line 84
    const-string v0, "FitAnim"

    const-string v1, "beginObserve"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHasObserved:Z

    .line 88
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    .line 89
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_launcher_first_frame_draw"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mLauncherShowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 32
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 33
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$1;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method public stopObserve()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "FitAnim"

    const-string v1, "stopObserve"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->mLauncherShowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    return-void
.end method
