.class Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;
.super Ljava/lang/Object;
.source "ApplicationAlarmWakeupController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$300(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadAllowedData()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$400(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V

    .line 233
    return-void
.end method
