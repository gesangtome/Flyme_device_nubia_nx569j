.class Lcn/nubia/server/appmgmt/ApplicationPowerController$1;
.super Ljava/lang/Object;
.source "ApplicationPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedOtherApps()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$300(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    .line 227
    return-void
.end method
