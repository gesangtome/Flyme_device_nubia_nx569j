.class Lcom/android/server/policy/TouchGestureFuncsCtrl$4;
.super Landroid/content/BroadcastReceiver;
.source "TouchGestureFuncsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TouchGestureFuncsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$4;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$4;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    const-string v2, "showView"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/policy/TouchGestureFuncsCtrl;->isScreenSaverShow:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$002(Lcom/android/server/policy/TouchGestureFuncsCtrl;Z)Z

    .line 246
    :cond_0
    return-void
.end method
