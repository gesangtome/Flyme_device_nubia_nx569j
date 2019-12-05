.class Lcom/android/server/policy/NubiaGlobalActions$12;
.super Landroid/content/BroadcastReceiver;
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
    .line 1057
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1059
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$1000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-static {v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1066
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-static {v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->isHomeEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1069
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$1000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1073
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1078
    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$800(Lcom/android/server/policy/NubiaGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # setter for: Lcom/android/server/policy/NubiaGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/NubiaGlobalActions;->access$802(Lcom/android/server/policy/NubiaGlobalActions;Z)Z

    .line 1081
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v2, v3}, Lcom/android/server/policy/NubiaGlobalActions;->access$500(Lcom/android/server/policy/NubiaGlobalActions;Z)V

    goto :goto_0

    .line 1083
    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions$12;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$1000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
