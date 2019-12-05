.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->removeFitWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$900(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 267
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->reset()V
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    .line 269
    const-string v1, "PageFlippingController"

    const-string v2, "removeFitWindow run() End"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method
