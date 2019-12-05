.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;
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
    .line 67
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    # getter for: Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$100(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lnubia/os/IFreezeCallback;

    move-result-object v1

    invoke-interface {v1}, Lnubia/os/IFreezeCallback;->getProcessStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
