.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$3;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1229
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$3;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->loadTrafficSettingsFromDb()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    .line 1230
    return-void
.end method
