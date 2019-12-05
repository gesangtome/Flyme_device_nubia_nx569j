.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 2

    .prologue
    .line 978
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 979
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 980
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 983
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 984
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 988
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    const/4 v1, 0x1

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1202(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z

    .line 993
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 994
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 996
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1202(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z

    .line 997
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 998
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
