.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePageFlipping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;


# direct methods
.method private constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
    .param p2, "x1"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 504
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$EndAnimatorListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method
