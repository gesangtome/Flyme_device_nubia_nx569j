.class Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/SyncController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SyncController;)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 73
    # getter for: Lcn/nubia/server/appmgmt/SyncController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/SyncController;->access$000(Lcn/nubia/server/appmgmt/SyncController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    const/4 v1, 0x1

    # setter for: Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/SyncController;->access$102(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/SyncController;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/SyncController;->access$102(Lcn/nubia/server/appmgmt/SyncController;Z)Z

    goto :goto_0
.end method
