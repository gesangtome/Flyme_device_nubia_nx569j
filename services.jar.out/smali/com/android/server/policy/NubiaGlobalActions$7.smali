.class Lcom/android/server/policy/NubiaGlobalActions$7;
.super Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions;->createDialog()Lcom/android/server/policy/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$700(Lcom/android/server/policy/NubiaGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    .line 438
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    # setter for: Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$902(Lcom/android/server/policy/NubiaGlobalActions;Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;)Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    goto :goto_0

    .line 437
    :cond_2
    sget-object v0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$700(Lcom/android/server/policy/NubiaGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/policy/NubiaGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/NubiaGlobalActions;->access$802(Lcom/android/server/policy/NubiaGlobalActions;Z)Z

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 422
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$100(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$7;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/server/policy/NubiaGlobalActions;->access$500(Lcom/android/server/policy/NubiaGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method
