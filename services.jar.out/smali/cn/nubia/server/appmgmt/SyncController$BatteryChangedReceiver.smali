.class Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/SyncController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SyncController;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 91
    # getter for: Lcn/nubia/server/appmgmt/SyncController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/SyncController;->access$000(Lcn/nubia/server/appmgmt/SyncController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 96
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v2, "status"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "status":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    # setter for: Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/SyncController;->access$202(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
