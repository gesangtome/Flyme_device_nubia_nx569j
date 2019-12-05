.class Lcom/android/server/usb/UsbDeviceManagerHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManagerHelper;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManagerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManagerHelper;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    const-string v0, "UsbDMHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsChanging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerHelper;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManagerHelper;->access$000(Lcom/android/server/usb/UsbDeviceManagerHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receiver intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerHelper;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->access$000(Lcom/android/server/usb/UsbDeviceManagerHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerHelper;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z
    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->access$002(Lcom/android/server/usb/UsbDeviceManagerHelper;Z)Z

    .line 96
    :goto_1
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerHelper;

    # invokes: Lcom/android/server/usb/UsbDeviceManagerHelper;->playSound()V
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->access$100(Lcom/android/server/usb/UsbDeviceManagerHelper;)V

    goto :goto_1
.end method
