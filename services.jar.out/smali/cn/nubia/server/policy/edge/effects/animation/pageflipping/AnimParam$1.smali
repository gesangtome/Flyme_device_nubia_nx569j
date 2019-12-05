.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;
.super Ljava/lang/Object;
.source "AnimParam.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->onAnimationFinish()V

    .line 866
    :cond_0
    return-void
.end method
