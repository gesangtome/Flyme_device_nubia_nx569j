.class Lcom/android/server/policy/NubiaSlideView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaSlideView;->startLastDismissAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaSlideView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaSlideView;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$8;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$8;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I
    invoke-static {v0}, Lcom/android/server/policy/NubiaSlideView;->access$400(Lcom/android/server/policy/NubiaSlideView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$8;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcom/android/server/policy/NubiaSlideView;->access$1500(Lcom/android/server/policy/NubiaSlideView;)Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$8;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcom/android/server/policy/NubiaSlideView;->access$1500(Lcom/android/server/policy/NubiaSlideView;)Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;->shutdown()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$8;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcom/android/server/policy/NubiaSlideView;->access$1500(Lcom/android/server/policy/NubiaSlideView;)Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$8;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mListener:Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcom/android/server/policy/NubiaSlideView;->access$1500(Lcom/android/server/policy/NubiaSlideView;)Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;->reboot()V

    goto :goto_0
.end method
