.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener$1;
.super Ljava/lang/Object;
.source "SinglePageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;

.field final synthetic val$time:F


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;F)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener$1;->val$time:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener$1;->val$time:F

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onFailAnimUpdate(F)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->access$700(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V

    .line 242
    return-void
.end method
