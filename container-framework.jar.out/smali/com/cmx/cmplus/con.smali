.class public abstract Lcom/cmx/cmplus/con;
.super Ljava/lang/Object;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/cmx/cmplus/ContainerInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/cmx/cmplus/ContainerInfo;->id:I

    iput v0, p0, Lcom/cmx/cmplus/con;->id:I

    iget v0, p1, Lcom/cmx/cmplus/ContainerInfo;->type:I

    iput v0, p0, Lcom/cmx/cmplus/con;->type:I

    iget-object v0, p1, Lcom/cmx/cmplus/ContainerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmx/cmplus/con;->name:Ljava/lang/String;

    return-void
.end method

.method public static aux(Landroid/content/pm/UserInfo;)Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualBox(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmx/cmplus/con;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager;->getIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/cmx/cmplus/con;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmx/cmplus/con;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/cmx/cmplus/con;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/cmx/cmplus/con;->id:I

    return v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmx/cmplus/con;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->setIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    iget v1, p0, Lcom/cmx/cmplus/con;->id:I

    invoke-interface {v0, v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->setContainerName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
