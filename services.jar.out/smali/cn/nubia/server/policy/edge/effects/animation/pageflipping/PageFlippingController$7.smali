.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field final synthetic val$delHashcodes:Ljava/util/List;

.field final synthetic val$delTextures:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delTextures:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delTextures:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->deleteTextures(Ljava/util/List;)V

    .line 625
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 640
    return-void
.end method
