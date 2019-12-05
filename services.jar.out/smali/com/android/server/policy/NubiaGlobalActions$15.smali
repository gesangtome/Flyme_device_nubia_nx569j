.class Lcom/android/server/policy/NubiaGlobalActions$15;
.super Landroid/os/Handler;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$15;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1116
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$15;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$15;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->dismiss()V

    goto :goto_0

    .line 1121
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$15;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$1800(Lcom/android/server/policy/NubiaGlobalActions;)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$15;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$1300(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1125
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$15;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$1900(Lcom/android/server/policy/NubiaGlobalActions;)V

    goto :goto_0

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
