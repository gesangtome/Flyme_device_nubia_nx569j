.class Lcn/nubia/server/policy/edge/BrightnessDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # getter for: Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$400(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # getter for: Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$400(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
