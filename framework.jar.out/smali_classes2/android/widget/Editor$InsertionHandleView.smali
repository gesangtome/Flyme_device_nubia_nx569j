.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3938
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 3939
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3940
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 3979
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3980
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 3988
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3989
    return-void

    .line 3986
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 3992
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3993
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3995
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4067
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 4

    .prologue
    .line 4009
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v1

    .line 4010
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 4011
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 4012
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4013
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 4015
    :cond_0
    return v1

    .line 4010
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4004
    const/4 v0, 0x1

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 3999
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4103
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4104
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 4105
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4097
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4098
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 4099
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4020
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 4022
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 4062
    :goto_0
    :pswitch_0
    return v3

    .line 4024
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 4025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    goto :goto_0

    .line 4029
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4030
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    .line 4031
    .local v0, "deltaX":F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    .line 4032
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    .line 4034
    .local v2, "distanceSquared":F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 4036
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 4038
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    .line 4040
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_1

    .line 4041
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    .line 4051
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 4043
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->startInsertionActionMode()V

    goto :goto_1

    .line 4047
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_0

    .line 4048
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_1

    .line 4055
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 4022
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .prologue
    .line 3944
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 3946
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    sub-long v0, v2, v4

    .line 3950
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mDoubleTap:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3952
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3957
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mDoubleTap:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 3959
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_3

    .line 3960
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3961
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    new-instance v3, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    # setter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$3402(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3968
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3975
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 3976
    return-void
.end method

.method public updatePosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4077
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4079
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_2

    .line 4080
    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4081
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 4083
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v3, v1, v4, p2}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    .line 4084
    .local v0, "currLine":I
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v2

    .line 4085
    .local v2, "offset":I
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 4089
    .end local v0    # "currLine":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 4090
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    .line 4091
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 4093
    :cond_1
    return-void

    .line 4087
    .end local v2    # "offset":I
    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .restart local v2    # "offset":I
    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4072
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4073
    return-void
.end method
