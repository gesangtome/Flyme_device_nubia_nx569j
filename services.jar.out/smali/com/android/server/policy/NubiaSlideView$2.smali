.class Lcom/android/server/policy/NubiaSlideView$2;
.super Ljava/lang/Object;
.source "NubiaSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$alpha:I

.field final synthetic val$alphaText:I

.field final synthetic val$dis:F


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaSlideView;IIF)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    iput p2, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$alpha:I

    iput p3, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$alphaText:I

    iput p4, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$dis:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 285
    .local v0, "fra":F
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$100(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$alpha:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$alpha:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 286
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$200(Lcom/android/server/policy/NubiaSlideView;)Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$alphaText:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$alphaText:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 287
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    iget v3, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$dis:F

    iget v4, p0, Lcom/android/server/policy/NubiaSlideView$2;->val$dis:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mShift:F
    invoke-static {v2, v3}, Lcom/android/server/policy/NubiaSlideView;->access$302(Lcom/android/server/policy/NubiaSlideView;F)F

    .line 288
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    .line 290
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$400(Lcom/android/server/policy/NubiaSlideView;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 292
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 293
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1234

    iput v2, v1, Landroid/os/Message;->what:I

    .line 294
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 297
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 298
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x1235

    iput v2, v1, Landroid/os/Message;->what:I

    .line 299
    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$2;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
