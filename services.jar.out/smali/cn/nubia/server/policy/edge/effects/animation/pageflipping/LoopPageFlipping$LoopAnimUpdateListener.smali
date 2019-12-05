.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;
.super Ljava/lang/Object;
.source "LoopPageFlipping.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoopAnimUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;


# direct methods
.method private constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
    .param p2, "x1"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 278
    .local v0, "time":F
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;F)V

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method
