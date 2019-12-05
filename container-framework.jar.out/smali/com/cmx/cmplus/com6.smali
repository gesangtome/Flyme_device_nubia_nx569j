.class public Lcom/cmx/cmplus/com6;
.super Ljava/lang/Object;


# static fields
.field public static final COM1:I = 0x4

.field public static final COm1:I = 0x0

.field public static final COm2:Ljava/lang/String; = "com.cmx.virtualSpaceProvision.services.SpaceProvisionService"

.field public static final CoM1:I = 0x2

.field private static CoM2:Lcom/cmx/cmplus/com6; = null

.field public static final Com1:Ljava/lang/String; = "smart_container"

.field public static final Com2:I = -0x2

.field private static final TAG:Ljava/lang/String; = "SmartContainerMgr"

.field public static final cOM1:I = 0x3

.field public static final cOm1:I = -0x2710

.field public static final cOm2:Ljava/lang/String; = "com.cmx.virtualSpaceProvision"

.field public static final coM1:I = 0x1

.field public static final coM2:Ljava/lang/String; = "com.cmx.virtualSpaceProvision.services.SpaceNotificationService"

.field public static final com2:I = -0x1


# instance fields
.field private COM2:Landroid/app/IActivityManager;

.field private cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

.field private com3:Landroid/os/UserManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmx/cmplus/com6;->CoM2:Lcom/cmx/cmplus/com6;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->COM2:Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->com3:Landroid/os/UserManager;

    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    iput-object p1, p0, Lcom/cmx/cmplus/com6;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->COM2:Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/cmx/cmplus/com6;->COM2:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    const-string v0, "SmartContainerMgr"

    const-string v1, "Fail to get AM"

    invoke-static {v0, v1}, Lcom/cmx/cmplus/aux;->AUx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/cmx/cmplus/com6;->com3:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/cmx/cmplus/com6;->com3:Landroid/os/UserManager;

    if-nez v0, :cond_1

    const-string v0, "SmartContainerMgr"

    const-string v1, "Fail to get UserManager"

    invoke-static {v0, v1}, Lcom/cmx/cmplus/aux;->AUx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized aUx(Landroid/content/Context;)Lcom/cmx/cmplus/com6;
    .locals 2

    const-class v1, Lcom/cmx/cmplus/com6;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmx/cmplus/com6;->CoM2:Lcom/cmx/cmplus/com6;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmx/cmplus/com6;

    invoke-direct {v0, p0}, Lcom/cmx/cmplus/com6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmx/cmplus/com6;->CoM2:Lcom/cmx/cmplus/com6;

    :cond_0
    sget-object v0, Lcom/cmx/cmplus/com6;->CoM2:Lcom/cmx/cmplus/com6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public AUx(I)Lcom/cmx/cmplus/com8;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->getContainerInfo(I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cmx/cmplus/ContainerInfo;->isVirtualBox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cmx/cmplus/com8;

    invoke-direct {v0, v2}, Lcom/cmx/cmplus/com8;-><init>(Lcom/cmx/cmplus/ContainerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public AUx(Ljava/lang/String;)Lcom/cmx/cmplus/com8;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->getBoxIdForPackage(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/cmx/cmplus/com6;->AUx(I)Lcom/cmx/cmplus/com8;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public aUx(Ljava/lang/String;)Lcom/cmx/cmplus/com8;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cmx/cmplus/com6;->aux(Ljava/lang/String;I)Lcom/cmx/cmplus/com8;

    move-result-object v0

    return-object v0
.end method

.method public aux(Ljava/lang/String;I)Lcom/cmx/cmplus/com8;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1, p2}, Lcom/cmx/cmplus/ISmartContainerManager;->createVirtualBox(Ljava/lang/String;I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/cmx/cmplus/com8;

    invoke-direct {v0, v2}, Lcom/cmx/cmplus/com8;-><init>(Lcom/cmx/cmplus/ContainerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/cmx/cmplus/com6;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmx/cmplus/com8;->AUx(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getAllVirtualBoxes()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0}, Lcom/cmx/cmplus/ISmartContainerManager;->getAllVirtualBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmx/cmplus/ContainerInfo;

    new-instance v3, Lcom/cmx/cmplus/com8;

    invoke-direct {v3, v0}, Lcom/cmx/cmplus/com8;-><init>(Lcom/cmx/cmplus/ContainerInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method

.method public removeVirtualBox(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->removeVirtualBox(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppEnabled(ILjava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cmx/cmplus/com6;->cOM2:Lcom/cmx/cmplus/ISmartContainerManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmx/cmplus/ISmartContainerManager;->setAppEnabled(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
