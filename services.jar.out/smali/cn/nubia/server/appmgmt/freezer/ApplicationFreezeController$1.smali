.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    # invokes: Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->doCheck()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$000(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    .line 61
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
