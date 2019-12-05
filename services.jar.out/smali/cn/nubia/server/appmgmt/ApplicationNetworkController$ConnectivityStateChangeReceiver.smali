.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityStateChangeReceiver"
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1006
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1004
    iput-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1007
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1008
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1013
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1017
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_2

    .line 1024
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1026
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    .line 1029
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1030
    const-string v2, "ApplicationNetworkController"

    const-string v3, "get connectivityStateChange"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1033
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_8

    .line 1034
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1035
    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_8

    .line 1039
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 1040
    .local v1, "subType":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    if-eq v1, v5, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 1043
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1044
    const-string v2, "ApplicationNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network sub type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_6
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1048
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1049
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1051
    :cond_7
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v2, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1302(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z

    goto/16 :goto_0

    .line 1057
    .end local v1    # "subType":I
    :cond_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1058
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1059
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenStateChangeRunnable:Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1061
    :cond_9
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    const/4 v3, 0x0

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1302(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Z)Z

    goto/16 :goto_0
.end method
