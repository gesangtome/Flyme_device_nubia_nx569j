.class Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkDetectorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NetWorkDetectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)V
    .locals 4

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 55
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x11

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 59
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 64
    .local v1, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 65
    .local v2, "net":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 66
    const-string v7, "networkType"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 67
    .local v5, "type":I
    if-ne v5, v11, :cond_3

    .line 68
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 70
    .local v6, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "bSSID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mWifiLruCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 74
    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mWifiLruCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    # invokes: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->setNetAvailable(Z)V
    invoke-static {v8, v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    new-instance v8, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {v8, v9, v11, v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V

    # setter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v7, v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .line 78
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 81
    .end local v0    # "bSSID":Ljava/lang/String;
    .end local v6    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez v5, :cond_5

    .line 82
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 84
    .local v4, "telephone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "simOperator":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 87
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mMobileLruCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 88
    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mMobileLruCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    # invokes: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->setNetAvailable(Z)V
    invoke-static {v8, v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    goto/16 :goto_0

    .line 90
    :cond_4
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    new-instance v8, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {v8, v9, v10, v3}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V

    # setter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v7, v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .line 93
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 96
    .end local v3    # "simOperator":Ljava/lang/String;
    .end local v4    # "telephone":Landroid/telephony/TelephonyManager;
    :cond_5
    if-ne v5, v12, :cond_0

    .line 97
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    new-instance v8, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    const-string v10, ""

    invoke-direct {v8, v9, v12, v10}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V

    # setter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v7, v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .line 99
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 103
    .end local v5    # "type":I
    :cond_6
    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # invokes: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->setNetAvailable(Z)V
    invoke-static {v7, v10}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    goto/16 :goto_0
.end method
