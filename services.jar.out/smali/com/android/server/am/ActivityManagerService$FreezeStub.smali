.class final Lcom/android/server/am/ActivityManagerService$FreezeStub;
.super Lnubia/os/IFreezeCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FreezeStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 21961
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lnubia/os/IFreezeCallback$Stub;-><init>()V

    return-void
.end method

.method private findProcessByPid(I)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 21963
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 21964
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 21965
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 21966
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_0

    .line 21970
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 21964
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 21970
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getProcessStatus()V
    .locals 2

    .prologue
    .line 21998
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 21999
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->noteProcessStatus()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)V

    .line 22000
    monitor-exit v1

    .line 22001
    return-void

    .line 22000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleFreeze(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 21974
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 21976
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 21977
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    .line 21978
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1}, Landroid/app/IApplicationThread;->scheduleFreeze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21982
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 21983
    return-void

    .line 21982
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 21980
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public scheduleUnfreeze(IZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "isOneWay"    # Z

    .prologue
    .line 21986
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$FreezeStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 21988
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeStub;->findProcessByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 21989
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    .line 21990
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1, p2}, Landroid/app/IApplicationThread;->scheduleUnfreeze(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21994
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 21995
    return-void

    .line 21994
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 21992
    :catch_0
    move-exception v1

    goto :goto_0
.end method
