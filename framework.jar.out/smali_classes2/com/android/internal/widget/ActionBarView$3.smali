.class Lcom/android/internal/widget/ActionBarView$3;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x3f6e147b    # 0.93f

    .line 207
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # invokes: Lcom/android/internal/widget/ActionBarView;->isTouchInView(Landroid/view/View;FF)Z
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/ActionBarView;->access$400(Lcom/android/internal/widget/ActionBarView;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$3;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
