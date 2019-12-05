.class Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;
.super Landroid/os/Handler;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # invokes: Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # invokes: Lcn/nubia/server/policy/edge/BrightnessDialog;->showDialog()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$100(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # invokes: Lcn/nubia/server/policy/edge/BrightnessDialog;->dismissDialogWithAnim()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$200(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
