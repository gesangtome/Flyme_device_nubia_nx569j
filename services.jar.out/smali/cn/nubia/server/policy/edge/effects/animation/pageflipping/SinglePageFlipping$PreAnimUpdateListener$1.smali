.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;
.super Ljava/lang/Object;
.source "SinglePageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;F)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;->val$value:F

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onPreAnimUpdate(F)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V

    .line 81
    return-void
.end method
