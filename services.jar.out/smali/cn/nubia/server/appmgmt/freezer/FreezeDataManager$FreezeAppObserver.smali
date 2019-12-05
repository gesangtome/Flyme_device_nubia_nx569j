.class Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;
.super Landroid/database/ContentObserver;
.source "FreezeDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 255
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .line 256
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 257
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # getter for: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$200(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/app_freeze_white_list_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # getter for: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$400(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # getter for: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mQueryFreezeAppRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$300(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # getter for: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$400(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    # getter for: Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mQueryFreezeAppRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->access$300(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    :cond_0
    return-void
.end method
