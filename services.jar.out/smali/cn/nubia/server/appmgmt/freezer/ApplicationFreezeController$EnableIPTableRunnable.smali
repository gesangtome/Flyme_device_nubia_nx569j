.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableIPTableRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;ILjava/lang/String;)V
    .locals 1
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mUid:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mPackageName:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mUid:I

    .line 84
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mPackageName:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mUid:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    # getter for: Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    # getter for: Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mUid:I

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    goto :goto_0
.end method
