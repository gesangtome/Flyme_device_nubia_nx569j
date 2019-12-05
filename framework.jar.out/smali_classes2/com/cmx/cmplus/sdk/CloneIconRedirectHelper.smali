.class public Lcom/cmx/cmplus/sdk/CloneIconRedirectHelper;
.super Ljava/lang/Object;
.source "CloneIconRedirectHelper.java"


# static fields
.field public static final QQ_APPLICATION_NAME:Ljava/lang/String; = "com.tencent.common.app.BaseApplicationImpl"

.field public static final QQ_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final TAG:Ljava/lang/String; = "CloneIconRedirectHelper"

.field public static final WECHAT_APPLICATION_NAME:Ljava/lang/String; = "com.tencent.mm.app.Application"

.field public static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field public static final WECHAT_SHAREIMGUI_NAME:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field public static final WECHAT_SHARESCREENIMGUI_NAME:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareScreenImgUI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQQCloneRedirectIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "componentInfoName"    # Ljava/lang/String;
    .param p1, "componentInfoIconRes"    # I

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/cmx/cmplus/sdk/CloneIconRedirectHelper;->isQQApplicationComp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWechatCloneRedirectIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "componentInfoName"    # Ljava/lang/String;
    .param p1, "componentInfoIconRes"    # I

    .prologue
    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/cmx/cmplus/sdk/CloneIconRedirectHelper;->isWechatShareUI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cmx/cmplus/sdk/CloneIconRedirectHelper;->isWechatApplicationComp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static isQQApplicationComp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "componentInfoName"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "com.tencent.common.app.BaseApplicationImpl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQQPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isWechatApplicationComp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "componentInfoName"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "com.tencent.mm.app.Application"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWechatOrQQCloneInstance(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    .line 33
    if-eqz p0, :cond_1

    sget-boolean v4, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v4, :cond_1

    .line 34
    iget v4, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 36
    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->get()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/cmx/cmplus/ISmartContainerManager;->getContainerInfo(I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v0

    .line 39
    .local v0, "ci":Lcom/cmx/cmplus/ContainerInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmx/cmplus/ContainerInfo;->isVirtualBox()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmx/cmplus/sdk/CloneIconRedirectHelper;->isWechatPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmx/cmplus/sdk/CloneIconRedirectHelper;->isQQPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 49
    .end local v0    # "ci":Lcom/cmx/cmplus/ContainerInfo;
    .end local v2    # "userId":I
    :cond_1
    :goto_0
    return v3

    .line 43
    .restart local v2    # "userId":I
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CloneIconRedirectHelper"

    const-string v5, "Connect the SmartContainerManagerNative service failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isWechatPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isWechatShareUI(Ljava/lang/String;)Z
    .locals 1
    .param p0, "componentInfoName"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mm.ui.tools.ShareScreenImgUI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
