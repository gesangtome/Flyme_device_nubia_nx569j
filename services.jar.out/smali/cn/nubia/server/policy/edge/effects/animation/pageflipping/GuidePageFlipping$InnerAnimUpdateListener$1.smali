.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;
.super Ljava/lang/Object;
.source "GuidePageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;

.field final synthetic val$time:F


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;F)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;->val$time:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;->val$time:F

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->onPageCancelInnerAnimUpdate(F)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$800(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;F)V

    .line 549
    return-void
.end method
