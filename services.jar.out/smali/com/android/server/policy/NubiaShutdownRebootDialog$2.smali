.class Lcom/android/server/policy/NubiaShutdownRebootDialog$2;
.super Landroid/os/Handler;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccc    # 0.39999998f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$200(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$302(Lcom/android/server/policy/NubiaShutdownRebootDialog;Z)Z

    .line 73
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->getShift()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setThisViewAlpha(F)V

    .line 75
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaSlideView;->getShift()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->getMaxScrollDistance()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    add-float v0, v5, v1

    .line 79
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$600(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 80
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$600(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 81
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$700(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 82
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaSlideView;->postInvalidate()V

    .line 83
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->getShift()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/NubiaSlideView;->getMaxScrollDistance()F

    move-result v3

    # invokes: Lcom/android/server/policy/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$800(Lcom/android/server/policy/NubiaShutdownRebootDialog;FF)V

    goto/16 :goto_0

    .line 87
    .end local v0    # "alpha":F
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$300(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$202(Lcom/android/server/policy/NubiaShutdownRebootDialog;Z)Z

    .line 89
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 90
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->getShift()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setThisViewAlpha(F)V

    .line 92
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaSlideView;->getShift()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->getMaxScrollDistance()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    add-float v0, v5, v1

    .line 96
    .restart local v0    # "alpha":F
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$600(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 97
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$600(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 98
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaSlideView;->getShift()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/NubiaSlideView;->getMaxScrollDistance()F

    move-result v3

    # invokes: Lcom/android/server/policy/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$800(Lcom/android/server/policy/NubiaShutdownRebootDialog;FF)V

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaSlideView;->postInvalidate()V

    goto/16 :goto_0

    .line 103
    .end local v0    # "alpha":F
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1, v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$302(Lcom/android/server/policy/NubiaShutdownRebootDialog;Z)Z

    .line 104
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 108
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1, v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$202(Lcom/android/server/policy/NubiaShutdownRebootDialog;Z)Z

    .line 109
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$2;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
