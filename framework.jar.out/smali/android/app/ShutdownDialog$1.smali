.class Landroid/app/ShutdownDialog$1;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mbutton_ok:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    :cond_1
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 81
    return-void

    .line 71
    :cond_2
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mbutton_cancel:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$300(Landroid/app/ShutdownDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    # getter for: Landroid/app/ShutdownDialog;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$300(Landroid/app/ShutdownDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
