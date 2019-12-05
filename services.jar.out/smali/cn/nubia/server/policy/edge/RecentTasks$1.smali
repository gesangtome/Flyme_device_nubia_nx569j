.class Lcn/nubia/server/policy/edge/RecentTasks$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/RecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/RecentTasks;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/RecentTasks;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/server/policy/edge/RecentTasks$1;->this$0:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks$1;->this$0:Lcn/nubia/server/policy/edge/RecentTasks;

    # getter for: Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z
    invoke-static {v1}, Lcn/nubia/server/policy/edge/RecentTasks;->access$000(Lcn/nubia/server/policy/edge/RecentTasks;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks$1;->this$0:Lcn/nubia/server/policy/edge/RecentTasks;

    const/4 v2, 0x0

    # setter for: Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/RecentTasks;->access$002(Lcn/nubia/server/policy/edge/RecentTasks;Z)Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks$1;->this$0:Lcn/nubia/server/policy/edge/RecentTasks;

    const/4 v2, 0x1

    # setter for: Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/RecentTasks;->access$102(Lcn/nubia/server/policy/edge/RecentTasks;Z)Z

    goto :goto_0
.end method
