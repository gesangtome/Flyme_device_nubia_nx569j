.class Lcom/android/server/display/NubiaOverlayDisplayWindow$12;
.super Landroid/content/BroadcastReceiver;
.source "NubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

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

    .line 1907
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1909
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1910
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1911
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 1912
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1914
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
