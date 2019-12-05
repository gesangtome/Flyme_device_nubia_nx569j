.class Lcn/nubia/server/policy/SmartFaceManager$1;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/SmartFaceManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleShow()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$000(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleShowLattice()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$100(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleDismiss()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$200(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    .line 72
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleNotifyScreenOn()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$300(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    .line 75
    :pswitch_5
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleUpdateRotation(Z)V
    invoke-static {v1, v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$400(Lcn/nubia/server/policy/SmartFaceManager;Z)V

    goto :goto_0

    .line 78
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleTurnOffScreen()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$500(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    .line 81
    :pswitch_7
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleShowStatusBar(Z)V
    invoke-static {v1, v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$600(Lcn/nubia/server/policy/SmartFaceManager;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$1;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleDismissStatusBar()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$700(Lcn/nubia/server/policy/SmartFaceManager;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
