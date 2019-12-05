.class Lcom/android/server/policy/NubiaSlideView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaSlideView;->onDismiss()V
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
    .line 306
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$3;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$3;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mAlpha:I
    invoke-static {v0, v1}, Lcom/android/server/policy/NubiaSlideView;->access$602(Lcom/android/server/policy/NubiaSlideView;I)I

    .line 311
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$3;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I
    invoke-static {v0, v1}, Lcom/android/server/policy/NubiaSlideView;->access$702(Lcom/android/server/policy/NubiaSlideView;I)I

    .line 312
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$3;->this$0:Lcom/android/server/policy/NubiaSlideView;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mShift:F
    invoke-static {v0, v1}, Lcom/android/server/policy/NubiaSlideView;->access$302(Lcom/android/server/policy/NubiaSlideView;F)F

    .line 313
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$3;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    .line 314
    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$3;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # invokes: Lcom/android/server/policy/NubiaSlideView;->startLastDismissAnimator()V
    invoke-static {v0}, Lcom/android/server/policy/NubiaSlideView;->access$800(Lcom/android/server/policy/NubiaSlideView;)V

    .line 315
    return-void
.end method
