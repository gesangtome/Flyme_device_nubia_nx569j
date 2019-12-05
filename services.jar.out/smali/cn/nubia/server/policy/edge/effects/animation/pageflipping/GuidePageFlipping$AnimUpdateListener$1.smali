.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;
.super Ljava/lang/Object;
.source "GuidePageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;F)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mIsStartAnim:Z
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->val$value:F

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->onPageStartAnimUpdate(F)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;F)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$AnimUpdateListener$1;->val$value:F

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->onPageCancelAnimUpdate(F)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$700(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;F)V

    goto :goto_0
.end method
