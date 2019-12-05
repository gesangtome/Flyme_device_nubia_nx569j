.class Lcom/android/server/policy/SmartKeyCtrl$1;
.super Ljava/lang/Object;
.source "SmartKeyCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SmartKeyCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SmartKeyCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SmartKeyCtrl;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/policy/SmartKeyCtrl$1;->this$0:Lcom/android/server/policy/SmartKeyCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/server/policy/SmartKeyCtrl$1;->this$0:Lcom/android/server/policy/SmartKeyCtrl;

    # getter for: Lcom/android/server/policy/SmartKeyCtrl;->mEnableSnapshot:Z
    invoke-static {v1}, Lcom/android/server/policy/SmartKeyCtrl;->access$000(Lcom/android/server/policy/SmartKeyCtrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.captureCamera.CaptureCameraService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/SmartKeyCtrl$1;->this$0:Lcom/android/server/policy/SmartKeyCtrl;

    # getter for: Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/SmartKeyCtrl;->access$100(Lcom/android/server/policy/SmartKeyCtrl;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
