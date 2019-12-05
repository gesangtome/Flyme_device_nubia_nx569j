.class public Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field private final helper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lcom/android/server/usb/UsbDeviceManagerHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManagerHelper;)V
    .locals 1
    .param p1, "h"    # Lcom/android/server/usb/UsbDeviceManagerHelper;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;->helper:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;->helper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbDeviceManagerHelper;

    .line 48
    .local v0, "h":Lcom/android/server/usb/UsbDeviceManagerHelper;
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v1, "UsbDMHelper"

    const-string v2, "restore changing flag"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManagerHelper;->access$002(Lcom/android/server/usb/UsbDeviceManagerHelper;Z)Z

    goto :goto_0
.end method
