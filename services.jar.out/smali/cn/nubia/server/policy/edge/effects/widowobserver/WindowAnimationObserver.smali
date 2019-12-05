.class public Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
.super Ljava/lang/Object;
.source "WindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$TransitionFinishObserver;,
        Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$TransitionStartObserver;,
        Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;,
        Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Observer"

.field private static final TIME_OUT:I = 0xbb8

.field private static final WINDOW_ANIMATION_TIME_OUT:I = 0x10000

.field private static final nubia_finish_app_transition:Ljava/lang/String; = "nubia_finish_app_transition"

.field private static final nubia_start_app_transition:Ljava/lang/String; = "nubia_start_app_transition"

.field private static final nubia_surface_first_show:Ljava/lang/String; = "nubia_surface_first_show"

.field private static final pattern_normal_shown_window:Ljava/lang/String; = "Window\\{.+\\s.+\\s(.+)\\}.*"

.field private static final pattern_transition:Ljava/lang/String; = ".*ActivityRecord\\{.+\\s.+\\s(.+)\\s.+\\}.*"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasObserved:Z

.field private mListenedStarting:Z

.field private mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

.field private mPackageNameObserved:Ljava/lang/String;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private final mSurfaceShowObserver:Landroid/database/ContentObserver;

.field private mSurfaceShown:Landroid/widget/TextView;

.field private mTransitionFinish:Landroid/widget/TextView;

.field private final mTransitionFinishObserver:Landroid/database/ContentObserver;

.field private mTransitionStart:Landroid/widget/TextView;

.field private final mTransitionStartObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    .line 64
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 67
    .local v0, "observerHandler":Landroid/os/Handler;
    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;

    invoke-direct {v1, p0, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShowObserver:Landroid/database/ContentObserver;

    .line 68
    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$TransitionStartObserver;

    invoke-direct {v1, p0, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$TransitionStartObserver;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStartObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$TransitionFinishObserver;

    invoke-direct {v1, p0, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$TransitionFinishObserver;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinishObserver:Landroid/database/ContentObserver;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceShown"    # Landroid/widget/TextView;
    .param p3, "transitionStart"    # Landroid/widget/TextView;
    .param p4, "transitionFinish"    # Landroid/widget/TextView;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShown:Landroid/widget/TextView;

    .line 79
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStart:Landroid/widget/TextView;

    .line 80
    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinish:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinish:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->isListenedToThisPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStart:Landroid/widget/TextView;

    return-object v0
.end method

.method private getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 152
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 153
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 156
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 157
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "pkgClassName":Ljava/lang/String;
    const-string v6, "(.*)/.*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 167
    .local v5, "splitPatter":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 170
    .local v4, "splitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-lt v6, v7, :cond_1

    .line 171
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local v4    # "splitMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "splitPatter":Ljava/util/regex/Pattern;
    :goto_0
    return-object v1

    .line 160
    .end local v3    # "pkgClassName":Ljava/lang/String;
    :cond_0
    const-string v6, "Observer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot find package name,string="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object v3, p1

    .line 162
    .restart local v3    # "pkgClassName":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    .restart local v4    # "splitMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "splitPatter":Ljava/util/regex/Pattern;
    :cond_1
    move-object v1, v3

    .local v1, "output":Ljava/lang/String;
    goto :goto_0
.end method

.method private isListenedToThisPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "current"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.applockmanager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "originalMsg"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 182
    if-eqz p3, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    const-string v0, "Observer"

    invoke-static {v0, p2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Faild:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public beginObserve(Ljava/lang/String;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;)V
    .locals 6
    .param p1, "pkgNameObserved"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    .prologue
    const/high16 v5, 0x10000

    const/4 v4, 0x0

    .line 112
    const-string v0, "Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin Observe Surface visbility, package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    .line 119
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    .line 121
    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    .line 122
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_surface_first_show"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_start_app_transition"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStartObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_finish_app_transition"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinishObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public stopObserve()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const-string v0, "Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop Observe Surface visbility, package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    .line 137
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    .line 139
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStartObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinishObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    return-void
.end method
