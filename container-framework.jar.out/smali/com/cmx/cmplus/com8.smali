.class public Lcom/cmx/cmplus/com8;
.super Lcom/cmx/cmplus/con;


# static fields
.field public static final COm4:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VirtualBox"

.field public static final TYPE_VIRTUAL_BOX_MAX:I = 0xa

.field private static final cOm4:I = 0xa

.field public static final coM4:I = 0x2


# instance fields
.field private CoM4:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Lcom/cmx/cmplus/ContainerInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cmx/cmplus/con;-><init>(Lcom/cmx/cmplus/ContainerInfo;)V

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/com8;->CoM4:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private static aux(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public AUx(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "ic_clone_icon_badge"

    const-string v4, "drawable"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v0

    move v1, v0

    move-object v0, v2

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v4, v3, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "VirtualBox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to generate drawable-icon from source index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/cmx/cmplus/aux;->aUx(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/cmx/cmplus/com8;->aux(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "VirtualBox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to generate bitmap-icon from source index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/cmx/cmplus/aux;->aUx(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/com8;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public AuX(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/cmx/cmplus/com8;->CoM4:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/cmx/cmplus/com8;->AuX(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public AuX(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->isPackageInBox(ILjava/lang/String;)Z
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

.method public aUX(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->canAddPackageToBox(ILjava/lang/String;)Z
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

.method public auX(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmx/cmplus/com8;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/cmx/cmplus/ISmartContainerManager;->isBoxVisible(II)Z
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

.method public auX(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cmx/cmplus/com8;->AuX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmx/cmplus/com8;->CoM4:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cmx/cmplus/com8;->auX(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
