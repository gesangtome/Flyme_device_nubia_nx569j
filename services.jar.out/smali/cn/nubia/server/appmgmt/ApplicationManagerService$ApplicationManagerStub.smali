.class final Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;
.super Lnubia/os/IApplicationManager$Stub;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApplicationManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Lnubia/os/IApplicationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .prologue
    .line 373
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/PerformanceController;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 376
    :cond_0
    return-void
.end method

.method public allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "serviceClassName"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationPushController;->allowApp3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowBackgroundSyncToRun()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/SyncController;->allowBackgroundSyncToRun()Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowFullWakeLockScreenOff(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppFullWakeLockScreenOff(Ljava/lang/String;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppPartialWakelock(Ljava/lang/String;)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppWakeupAlarm(Ljava/lang/String;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 540
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->checkAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 514
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public getActionState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->getActionState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForegroundPackageName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetAvailable()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->getNetAvailable()Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "reqCode"    # I
    .param p2, "subCode"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "argStr1"    # Ljava/lang/String;
    .param p6, "argStr2"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/MotionDozeController;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "result":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/PerformanceController;->isInNoTransitionAnim(Ljava/lang/String;)Z

    move-result v0

    .line 396
    :cond_0
    return v0
.end method

.method public isKillWhenFrozen(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isKillWhenFrozen(I)Z

    move-result v0

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkBlocked(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyDisplayEvent(II)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isNotifyDisplayEvent(II)Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProcessFrozen(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessFrozen(I)Z

    move-result v0

    .line 442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProcessFrozenByUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessFrozenByUid(I)Z

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProcessRealFrozen(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessRealFrozen(I)Z

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z
    .param p4, "isSave"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 523
    :cond_0
    return-void
.end method

.method public noteActivityStackRemoved(I)V
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteActivityStackRemoved(I)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    const-string v0, "momo"

    const-string v1, "noteActivityStackRemoved"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteActivityStackRemoved(I)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteActivityStackRemoved(I)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteActivityStackRemoved(I)V

    .line 329
    :cond_3
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteAppTransitionAnimation(Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public noteDisplayStateChanged(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteDisplayStateChanged(II)V

    .line 464
    :cond_0
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "momo"

    const-string v1, "notePausingActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/CABCController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/PerformanceController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationUtils;->notePausingActivity(IILjava/lang/String;)V

    .line 269
    :cond_4
    return-void
.end method

.method public noteProcessStatus([I[I[Ljava/lang/String;[I[I)V
    .locals 6
    .param p1, "pid"    # [I
    .param p2, "uid"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adj"    # [I
    .param p5, "reasonPid"    # [I

    .prologue
    .line 415
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteProcessStatus([I[I[Ljava/lang/String;[I[I)V

    .line 418
    :cond_0
    return-void
.end method

.method public noteProcessStatusChanged()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteProcessStatusChanged()V

    .line 424
    :cond_0
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    const-string v0, "momo"

    const-string v1, "noteRemovingProcess"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/MotionDozeController;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_3
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    const-string v0, "momo"

    const-string v1, "noteResumedAppDie"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/CABCController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/PerformanceController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_3
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "momo"

    const-string v1, "noteResumingActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/CABCController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/PerformanceController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 239
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteResumingActivity(ILjava/lang/String;)V

    .line 242
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteResumingActivity(IILjava/lang/String;)V

    .line 245
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mUnUseAppController:Lcn/nubia/server/appmgmt/UnUseAppController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/UnUseAppController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 246
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mUnUseAppController:Lcn/nubia/server/appmgmt/UnUseAppController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/UnUseAppController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcn/nubia/server/appmgmt/UnUseAppController;->noteResumingActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_6
    return-void
.end method

.method public noteScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteScreenState(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteScreenStateChanged(I)V

    .line 430
    :cond_0
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "momo"

    const-string v1, "noteStartingProcess"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/MotionDozeController;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_2
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 1
    .param p1, "expanding"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteStatusBarExpanding(Z)V

    .line 359
    :cond_0
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    const-string v0, "momo"

    const-string v1, "noteStoppingActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1
    return-void
.end method

.method public noteWindowStateChange(III)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteWindowStateChange(III)V

    .line 436
    :cond_0
    return-void
.end method

.method public registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->registerCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 530
    :cond_0
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 2
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/SysStateProducer;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 214
    :cond_0
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 379
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PerformanceController;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 382
    :cond_0
    return-void
.end method

.method public setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/IFreezeCallback;

    .prologue
    .line 407
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->setFreezeCallback(Lnubia/os/IFreezeCallback;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # setter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;
    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1402(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lnubia/os/IFreezeCallback;)Lnubia/os/IFreezeCallback;

    goto :goto_0
.end method

.method public setNetworkFirewall(ILjava/lang/String;ZZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableMobile"    # Z
    .param p4, "enableWifi"    # Z

    .prologue
    .line 507
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    .line 510
    :cond_0
    return-void
.end method

.method public unfreezeWhenKill(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->unfreezeWhenKill(I)V

    .line 485
    :cond_0
    return-void
.end method

.method public unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->unregisterCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 537
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 217
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 220
    :cond_0
    return-void
.end method
