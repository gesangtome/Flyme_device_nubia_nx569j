.class public Lcom/android/server/am/AmSmartShowFuncsWrapper;
.super Ljava/lang/Object;
.source "AmSmartShowFuncsWrapper.java"

# interfaces
.implements Lcom/android/server/am/IAmSmartShowFuncs;


# instance fields
.field final mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field public mWithoutActivityController:Z

.field public mWithoutAppEvent:Z

.field public mWithoutMultiWindow:Z

.field public mWithoutSmartConfiguration:Z

.field public mWithoutSmartData:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/IAmSmartShowFuncs;)V
    .locals 1
    .param p1, "funcs"    # Lcom/android/server/am/IAmSmartShowFuncs;

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutAppEvent:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartConfiguration:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutActivityController:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartData:Z

    .line 56
    iput-object p1, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    .line 57
    return-void
.end method


# virtual methods
.method public activityStateChangedLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutAppEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->activityStateChangedLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 115
    :cond_0
    return-void
.end method

.method public appCrashedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->appCrashedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 129
    :cond_0
    return-void
.end method

.method public attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 277
    :cond_0
    return-void
.end method

.method public bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 1
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 417
    return-void
.end method

.method public computeStackFocusLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->computeStackFocusLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0
.end method

.method public createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ar"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActiveServices;
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationLocked(Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/am/ProcessRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getProcessRecordLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "displayId"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/IAmSmartShowFuncs;->getProcessRecordLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method public getStackLocked(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->getStackLocked(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackSupervisor(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->getStackSupervisor(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 298
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->initActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 299
    return-void
.end method

.method public interceptResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->interceptResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFloatingStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->isFloatingStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontStackLocked(Lcom/android/server/am/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, -0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->isFrontStackLocked(Lcom/android/server/am/ActivityStack;)I

    move-result v0

    goto :goto_0
.end method

.method public moveHomeStackLocked(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IAmSmartShowFuncs;->moveHomeStackLocked(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;)V

    .line 405
    return-void
.end method

.method public realStartServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 1
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 413
    return-void
.end method

.method public removeStackLocked(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->removeStackLocked(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public resumeHomeActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, -0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->resumeHomeActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    goto :goto_0
.end method

.method public resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "userLeaving"    # Z

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->resumeTopActivityLocked(Lcom/android/server/am/ActivityStack;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldAddToRecentLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldAddToRecentLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldChangeFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldChangeFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldEnterIntoStoppingLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldEnterIntoStoppingLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldForceStopPackageLocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldForceStopPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldMoveHomeStackLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldMoveHomeStackLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    return v0
.end method

.method public shouldRemoveTaskLocked(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 1
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldRemoveTaskLocked(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldUpdateConfigurationLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IAmSmartShowFuncs;->shouldUpdateConfigurationLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    goto :goto_0
.end method

.method public stackCreated(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->stackCreated(II)V

    .line 101
    :cond_0
    return-void
.end method

.method public stackRemoved(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->stackRemoved(II)V

    .line 95
    :cond_0
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutActivityController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/server/am/IAmSmartShowFuncs;->startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    goto :goto_0
.end method

.method public startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;
    .param p11, "startFlags"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "componentSpecified"    # Z
    .param p14, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutActivityController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-interface/range {v0 .. v14}, Lcom/android/server/am/IAmSmartShowFuncs;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p11, "config"    # Landroid/content/res/Configuration;
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "userId"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutActivityController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-interface/range {v0 .. v13}, Lcom/android/server/am/IAmSmartShowFuncs;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    goto :goto_0
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->startFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->stopFreezingScreenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "toBeReused"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toBeStarted"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, -0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IAmSmartShowFuncs;->tryReuseTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationFromEnsureConfigurationLocked(Lcom/android/server/am/ActivityRecord;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromEnsureConfigurationLocked(Lcom/android/server/am/ActivityRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public updateConfigurationFromRealStartActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromRealStartActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationFromResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, -0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationFromSetRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 1
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "requestedOrientation"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationFromSetRequestedOrientationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    goto :goto_0
.end method

.method public updateConfigurationLocked(Landroid/content/res/Configuration;I)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/AmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IAmSmartShowFuncs;->updateConfigurationLocked(Landroid/content/res/Configuration;I)V

    .line 167
    :cond_1
    return-void
.end method

.method public withoutActivityController()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutActivityController:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutActivityController()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutAppEvent()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutAppEvent:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutAppEvent()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutMultiWindow()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutMultiWindow()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutSmartConfiguration()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartConfiguration:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutSmartConfiguration()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutSmartData()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mWithoutSmartData:Z

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/am/IAmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/am/IAmSmartShowFuncs;->withoutSmartData()Z

    move-result v0

    goto :goto_0
.end method
