.class Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiFingerSwitchAppCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;->this$0:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;->this$0:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    # getter for: Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z
    invoke-static {v1}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->access$000(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;->this$0:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    # getter for: Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z
    invoke-static {v1}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->access$100(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;->this$0:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->access$102(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;Z)Z

    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;->this$0:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->access$202(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;Z)Z

    goto :goto_0
.end method
