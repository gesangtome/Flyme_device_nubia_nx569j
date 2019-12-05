.class Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$2;
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
    .line 108
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$2;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$2;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # invokes: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadBuildApp()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$100(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V

    .line 112
    return-void
.end method
