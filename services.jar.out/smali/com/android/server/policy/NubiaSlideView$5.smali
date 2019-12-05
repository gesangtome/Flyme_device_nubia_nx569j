.class Lcom/android/server/policy/NubiaSlideView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaSlideView;->onRollBack()V
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
    .line 355
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0xff

    .line 358
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 359
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mTextAlpha:I
    invoke-static {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->access$702(Lcom/android/server/policy/NubiaSlideView;I)I

    .line 360
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mAlpha:I
    invoke-static {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->access$602(Lcom/android/server/policy/NubiaSlideView;I)I

    .line 361
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    iget-object v2, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMaxScrollerDistance:F
    invoke-static {v2}, Lcom/android/server/policy/NubiaSlideView;->access$900(Lcom/android/server/policy/NubiaSlideView;)F

    move-result v2

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mShift:F
    invoke-static {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->access$302(Lcom/android/server/policy/NubiaSlideView;F)F

    .line 362
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaSlideView;->invalidate()V

    .line 364
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mMsgFlag:I
    invoke-static {v1}, Lcom/android/server/policy/NubiaSlideView;->access$400(Lcom/android/server/policy/NubiaSlideView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 366
    :pswitch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 367
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1236

    iput v1, v0, Landroid/os/Message;->what:I

    .line 368
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/NubiaSlideView;->access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 371
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 372
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x1237

    iput v1, v0, Landroid/os/Message;->what:I

    .line 373
    iget-object v1, p0, Lcom/android/server/policy/NubiaSlideView$5;->this$0:Lcom/android/server/policy/NubiaSlideView;

    # getter for: Lcom/android/server/policy/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/NubiaSlideView;->access$500(Lcom/android/server/policy/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
