.class Lcom/android/server/display/NubiaOverlayDisplayWindow$9;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private deltaX:F

.field private deltaY:F

.field private dragFrameX:I

.field private dragFrameY:I

.field private dragHeight:I

.field private mDragCurrentX:F

.field private mDragCurrentY:F

.field private mDragStartX:F

.field private mDragStartY:F

.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1481
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToInvisible()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1482
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentX:F

    .line 1485
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentY:F

    .line 1487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1587
    :cond_0
    :goto_0
    return v7

    .line 1490
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->displayUI(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1492
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->dragHeight:I

    .line 1493
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->dragFrameX:I

    .line 1494
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->dragFrameY:I

    .line 1495
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartX:F

    .line 1498
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartY:F

    .line 1500
    :pswitch_1
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentX:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    .line 1501
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentY:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartY:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    .line 1502
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 1503
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustVerticalPosition(Landroid/view/View;F)V

    .line 1535
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintToScreen(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4100(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1536
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToInvisible()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1537
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentX:F

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartX:F

    .line 1538
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentY:F

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartY:F

    goto :goto_0

    .line 1504
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 1505
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustHorizontalPosition(Landroid/view/View;F)V

    goto :goto_1

    .line 1506
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 1507
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_8

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 1509
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    .line 1510
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    .line 1518
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setSizerMaskSizebyLeft(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 1511
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_7

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 1514
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    .line 1516
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    goto :goto_2

    .line 1520
    :cond_9
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 1521
    :cond_a
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_c

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    .line 1523
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    .line 1524
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    .line 1532
    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    add-float/2addr v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setSizerMaskSizebyRight(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 1525
    :cond_c
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_b

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1528
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    .line 1530
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    goto :goto_3

    .line 1541
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1542
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentX:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    .line 1543
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragCurrentY:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->mDragStartY:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    .line 1544
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_d

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_10

    .line 1545
    :cond_d
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaY:F

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustVerticalPosition(Landroid/view/View;F)V

    .line 1566
    :cond_e
    :goto_4
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->reSetSettingsViewLocation()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1567
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetWindowToScreen()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1568
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1569
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1570
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1571
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1572
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1574
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1576
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->dragHeight:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTouchSlop:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    if-gt v2, v3, :cond_f

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->dragFrameX:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTouchSlop:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    if-gt v2, v3, :cond_f

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->dragFrameY:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTouchSlop:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1579
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1582
    .local v1, "status":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1546
    .end local v1    # "status":Ljava/lang/String;
    :cond_10
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_13

    .line 1547
    :cond_11
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustHorizontalPosition(Landroid/view/View;F)V

    .line 1548
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 1550
    .local v0, "marginX":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    cmpg-float v2, v2, v8

    if-gez v2, :cond_12

    .line 1551
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 1552
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z
    invoke-static {v2, v6}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4202(Lcom/android/server/display/NubiaOverlayDisplayWindow;Z)Z

    .line 1553
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->saveDisplayMode(I)V
    invoke-static {v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4300(Lcom/android/server/display/NubiaOverlayDisplayWindow;I)V

    goto/16 :goto_4

    .line 1555
    :cond_12
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setX(F)V

    .line 1556
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z
    invoke-static {v2, v7}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4202(Lcom/android/server/display/NubiaOverlayDisplayWindow;Z)Z

    .line 1557
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->saveDisplayMode(I)V
    invoke-static {v2, v7}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4300(Lcom/android/server/display/NubiaOverlayDisplayWindow;I)V

    goto/16 :goto_4

    .line 1559
    .end local v0    # "marginX":F
    :cond_13
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_14

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_15

    .line 1560
    :cond_14
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    sub-float/2addr v3, v4

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenWithBarByLeft(Landroid/view/View;F)V
    invoke-static {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4400(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;F)V

    goto/16 :goto_4

    .line 1562
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p1, v2, :cond_16

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-ne p1, v2, :cond_e

    .line 1563
    :cond_16
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;->deltaX:F

    add-float/2addr v3, v4

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenWithBarByRight(Landroid/view/View;F)V
    invoke-static {v2, p1, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4500(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;F)V

    goto/16 :goto_4

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
