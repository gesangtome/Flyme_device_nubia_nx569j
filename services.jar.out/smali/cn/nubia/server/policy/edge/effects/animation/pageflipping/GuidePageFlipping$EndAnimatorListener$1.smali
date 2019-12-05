.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener$1;
.super Ljava/lang/Object;
.source "GuidePageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimationCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mCancelAnimationCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;->onAnimationFinish()V

    .line 511
    :cond_0
    return-void
.end method
