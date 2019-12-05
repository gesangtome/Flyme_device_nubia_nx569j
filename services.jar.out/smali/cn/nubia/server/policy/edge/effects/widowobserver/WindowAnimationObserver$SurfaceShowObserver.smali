.class Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;
.super Landroid/database/ContentObserver;
.source "WindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceShowObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 192
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .line 193
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 194
    return-void
.end method

.method private onChangeInner(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 207
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$200(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$300(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_surface_first_show"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "strSurface":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    const-string v3, "Window\\{.+\\s.+\\s(.+)\\}.*"

    # invokes: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$400(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "output":Ljava/lang/String;
    const-string v2, "Observer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; animating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z
    invoke-static {v4}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$500(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # invokes: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->isListenedToThisPackage(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$600(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$500(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;->onSurfaceFirstShown(Z)V

    .line 215
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    const/4 v3, 0x1

    # setter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z
    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$202(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Z)Z

    .line 219
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShown:Landroid/widget/TextView;
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$700(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Landroid/widget/TextView;

    move-result-object v3

    # invokes: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$800(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->onChangeInner(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$SurfaceShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$100(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
