.class Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
.super Landroid/database/ContentObserver;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerControlObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 203
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 204
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 205
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$000(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.security.power/wakeup_alarm_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_0
    return-void
.end method
