.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener$1;
.super Ljava/lang/Object;
.source "SinglePageFlipping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;F)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener$1;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener$1;->val$value:F

    # invokes: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onSuccAnimUpdate(F)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V

    .line 177
    return-void
.end method
