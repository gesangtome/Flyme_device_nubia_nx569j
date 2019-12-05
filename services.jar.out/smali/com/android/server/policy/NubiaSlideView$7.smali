.class Lcom/android/server/policy/NubiaSlideView$7;
.super Ljava/lang/Object;
.source "NubiaSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 482
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$7;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 486
    .local v0, "f":F
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$7;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/server/policy/NubiaSlideView;->access$1200(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 487
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$7;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    .line 488
    return-void
.end method
