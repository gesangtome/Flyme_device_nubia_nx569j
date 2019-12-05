.class Lcom/android/server/display/NubiaOverlayDisplayWindow$11;
.super Landroid/os/Handler;
.source "NubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1896
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x30c0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1898
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x30c0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1899
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1901
    :cond_0
    return-void
.end method
