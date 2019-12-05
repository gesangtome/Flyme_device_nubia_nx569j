.class Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationAlarmWakeupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargingStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V
    .locals 2

    .prologue
    .line 208
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    # getter for: Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$000(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 216
    if-eqz p2, :cond_0

    .line 217
    const-string v2, "status"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 219
    .local v0, "status":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_0
    # setter for: Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$102(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;Z)Z

    .line 221
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$200(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "ApplicationAlarmWakelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargingStateReceiver.onReceive, mCharging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->access$100(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "status":I
    :cond_0
    return-void

    .line 219
    .restart local v0    # "status":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
