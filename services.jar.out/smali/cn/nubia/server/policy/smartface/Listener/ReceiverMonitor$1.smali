.class Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "state":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v4, "com.nubia.smartface.state.changed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "pkgName":Ljava/lang/String;
    const-string v4, "display"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 56
    .local v2, "show":Z
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->putAppViewMap(Ljava/lang/String;Z)V
    invoke-static {v4, v1, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$100(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;Ljava/lang/String;Z)V

    .line 57
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 59
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "show":Z
    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$200(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->notifyScreentOn()V

    .line 62
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$300(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 63
    invoke-static {v6, v6}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenSlideNodeForSmartFace(ZZ)V

    goto :goto_0
.end method
