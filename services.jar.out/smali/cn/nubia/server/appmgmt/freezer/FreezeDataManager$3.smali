.class Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$3;
.super Ljava/lang/Object;
.source "FreezeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$3;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$3;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # getter for: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$400(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$3;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # invokes: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadPkgList()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$500(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V

    .line 279
    return-void
.end method
