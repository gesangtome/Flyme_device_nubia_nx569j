.class public Lcom/cmx/cmplus/sdk/CloneHelperImpl;
.super Lcom/cmx/cmplus/sdk/CloneHelper;


# static fields
.field private static final Com5:Ljava/lang/String; = "com.cmx.cmvirtualbox"

.field private static final TAG:Ljava/lang/String; = "CloneHelper"

.field private static final com5:Ljava/lang/String; = "com.cmx.CloneAgentApiService.RT_ACCESS"


# instance fields
.field private COM4:Lcom/cmx/cmplus/com1;

.field private cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

.field private cOM4:Lcom/cmx/cmplus/com8;

.field private cOm5:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelper;-><init>()V

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOm5:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    iput-object p1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cmx.CloneAgentApiService.RT_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cmx.cmvirtualbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/cmx/cmplus/sdk/aux;

    invoke-direct {v1, p0}, Lcom/cmx/cmplus/sdk/aux;-><init>(Lcom/cmx/cmplus/sdk/CloneHelperImpl;)V

    iput-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOm5:Landroid/content/ServiceConnection;

    :try_start_0
    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOm5:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CloneHelper"

    const-string v1, "Bind service error. Maybe bind service from receiver context!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CloneHelper"

    const-string v1, "Current context don\'t have permission to call clone manage API"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private AuX()Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic Aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private aUX()Lcom/cmx/cmplus/com8;
    .locals 4

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmx/cmplus/com6;->aUx(Landroid/content/Context;)Lcom/cmx/cmplus/com6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmx/cmplus/com6;->getAllVirtualBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmx/cmplus/com8;

    invoke-virtual {v0}, Lcom/cmx/cmplus/com8;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;

    return-object v0
.end method

.method static synthetic aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOm5:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;Lcom/cmx/cmplus/com1;)Lcom/cmx/cmplus/com1;
    .locals 0

    iput-object p1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    return-object p1
.end method


# virtual methods
.method public canPackageBeCloned(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->canPackageBeCloned(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "CloneHelper"

    const-string v1, "Feature disabled or service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createCloneForPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CloneHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create clone for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    if-nez v1, :cond_1

    const-string v1, "CloneHelper"

    const-string v2, "Agent service api not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    invoke-interface {v1, p1}, Lcom/cmx/cmplus/com1;->createCloneForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->isPackageCloned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CloneHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package already cloned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->createCloneForPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "CloneHelper"

    const-string v2, "Feature disabled or service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public deleteCloneForPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CloneHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete clone for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    if-nez v1, :cond_1

    const-string v1, "CloneHelper"

    const-string v2, "Agent service api not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    invoke-interface {v1, p1}, Lcom/cmx/cmplus/com1;->deleteCloneForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->isPackageCloned(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CloneHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package is not cloned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->deleteCloneForPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "CloneHelper"

    const-string v2, "Feature disabled or service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public disableCloneFeature()V
    .locals 3

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    if-nez v0, :cond_0

    const-string v0, "CloneHelper"

    const-string v1, "Agent service api not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    invoke-interface {v0}, Lcom/cmx/cmplus/com1;->disableCloneFeature()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    if-eqz v0, :cond_2

    const-string v0, "CloneHelper"

    const-string v1, "Clone feature already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    const-string v1, "virtualbox"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager;->setFeatureStatus(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;

    const-string v0, "CloneHelper"

    const-string v1, "Disabled clone feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "CloneHelper"

    const-string v1, "Feature disabled or service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enableCloneFeature()V
    .locals 3

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    if-nez v0, :cond_0

    const-string v0, "CloneHelper"

    const-string v1, "Agent service api not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    invoke-interface {v0}, Lcom/cmx/cmplus/com1;->enableCloneFeature()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_APP_CLONE:Z

    if-nez v0, :cond_2

    const-string v0, "CloneHelper"

    const-string v1, "Clone feature already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    const-string v1, "virtualbox"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager;->setFeatureStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmx/cmplus/com6;->aUx(Landroid/content/Context;)Lcom/cmx/cmplus/com6;

    move-result-object v0

    const-string v1, "Clone"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/cmx/cmplus/com6;->aux(Ljava/lang/String;I)Lcom/cmx/cmplus/com8;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->init()V

    const-string v0, "CloneHelper"

    const-string v1, "Enabled clone feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    if-nez v0, :cond_1

    const-string v0, "CloneHelper"

    const-string v1, "Agent service api not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    invoke-interface {v0, p1, p2}, Lcom/cmx/cmplus/com1;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-eq p2, v2, :cond_3

    if-nez p2, :cond_4

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->isPackageCloned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    if-ne p2, v2, :cond_0

    :cond_5
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v0

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCloneApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->isPackageCloned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v0

    invoke-interface {v1, p1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloneBadge()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmx/cmplus/com8;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCloneBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CloneHelper"

    const-string v2, "Error: clone not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "CloneHelper"

    const-string v2, "Icon is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;

    invoke-virtual {v2}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getClonedPackages()Ljava/util/Set;
    .locals 5

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/cmx/cmplus/ISmartContainerManager;->isPackageCloned(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getDefaultCloneablePackages()Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0}, Lcom/cmx/cmplus/ISmartContainerManager;->getDefaultCloneablePackages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "CloneHelper"

    const-string v1, "Feature disabled or service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOEMCloneablePackages()Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0}, Lcom/cmx/cmplus/ISmartContainerManager;->getOEMCloneablePackages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "CloneHelper"

    const-string v1, "Feature disabled or service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloneInstance(I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMasterInstance(I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageCloned(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->isPackageCloned(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "CloneHelper"

    const-string v1, "Feature disabled or service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/cmx/cmplus/prn;->markCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public markIntentRestricted(Landroid/content/Intent;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1, p2}, Lcom/cmx/cmplus/ISmartContainerManager;->markIntentRestricted(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCloneBadge(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->AuX()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    if-nez v0, :cond_1

    const-string v0, "CloneHelper"

    const-string v1, "Agent service api not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->COM4:Lcom/cmx/cmplus/com1;

    invoke-interface {v0, p1}, Lcom/cmx/cmplus/com1;->setCloneBadge(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmx/cmplus/com8;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public startActivityInClone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aUX()Lcom/cmx/cmplus/com8;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->markIntentRestricted(Landroid/content/Intent;Z)V

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->cOM4:Lcom/cmx/cmplus/com8;

    invoke-virtual {v1}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
