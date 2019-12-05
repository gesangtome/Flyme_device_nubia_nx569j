.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 2

    .prologue
    .line 890
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 891
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 892
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 894
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 895
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 899
    if-eqz p2, :cond_1

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    const-string v4, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 901
    .local v3, "uid":I
    const/4 v1, 0x0

    .line 903
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 904
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 907
    :cond_0
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 908
    .local v2, "replacing":Z
    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    .line 920
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "replacing":Z
    .end local v3    # "uid":I
    :cond_1
    :goto_0
    return-void

    .line 911
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "replacing":Z
    .restart local v3    # "uid":I
    :cond_2
    const/16 v4, 0x2710

    if-ge v3, v4, :cond_3

    .line 912
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 913
    const-string v4, "ApplicationNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removed, uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Do nothing."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 918
    :cond_3
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$PackageStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {v5, v6, v3, v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
