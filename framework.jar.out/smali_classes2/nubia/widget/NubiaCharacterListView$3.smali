.class Lnubia/widget/NubiaCharacterListView$3;
.super Ljava/lang/Object;
.source "NubiaCharacterListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaCharacterListView;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaCharacterListView;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView$3;->this$0:Lnubia/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 490
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 499
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 493
    :pswitch_0
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView$3;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;
    invoke-static {v1}, Lnubia/widget/NubiaCharacterListView;->access$400(Lnubia/widget/NubiaCharacterListView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView$3;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lnubia/widget/NubiaCharacterListView;->access$300(Lnubia/widget/NubiaCharacterListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView$3;->this$0:Lnubia/widget/NubiaCharacterListView;

    # invokes: Lnubia/widget/NubiaCharacterListView;->hideFloatingView()V
    invoke-static {v1}, Lnubia/widget/NubiaCharacterListView;->access$500(Lnubia/widget/NubiaCharacterListView;)V

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
