.class Lcn/nubia/server/appmgmt/PerformanceController$1;
.super Landroid/content/BroadcastReceiver;
.source "PerformanceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/PerformanceController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PerformanceController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$1;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string v0, "PerformanceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "PerformanceController"

    const-string v1, "about to call reinit data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$1;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/QComBoostController;->reinitData()V

    .line 57
    return-void
.end method
