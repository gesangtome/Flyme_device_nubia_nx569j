.class Lcn/nubia/server/appmgmt/ApplicationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateAllControllersData()V
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    .line 155
    :cond_0
    return-void
.end method
