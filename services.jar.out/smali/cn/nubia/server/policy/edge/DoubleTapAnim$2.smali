.class Lcn/nubia/server/policy/edge/DoubleTapAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DoubleTapAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/DoubleTapAnim;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # getter for: Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # getter for: Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # getter for: Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method
