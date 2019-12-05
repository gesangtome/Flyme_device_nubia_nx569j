.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;
.super Ljava/lang/Object;
.source "LoopPageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;

.field final synthetic val$time:F


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;F)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;->val$time:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener$1;->val$time:F

    float-to-int v1, v1

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->onLoopAnimUpdate(I)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;I)V

    .line 283
    return-void
.end method
