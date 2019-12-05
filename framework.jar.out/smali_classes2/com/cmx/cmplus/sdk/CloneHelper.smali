.class public abstract Lcom/cmx/cmplus/sdk/CloneHelper;
.super Ljava/lang/Object;
.source "CloneHelper.java"


# static fields
.field public static final ACTION_CLONE_ADDED:Ljava/lang/String; = "com.cmx.cmplus.ACTION_CLONE_ADDED"

.field public static final ACTION_CLONE_REMOVED:Ljava/lang/String; = "com.cmx.cmplus.ACTION_CLONE_REMOVED"

.field public static final ACTION_CONTAINER_CREATED:Ljava/lang/String; = "com.cmx.cmplus.ACTION_CONTAINER_CREATED"

.field public static final ACTION_CONTAINER_FEATURE_CHANGED:Ljava/lang/String; = "com.cmx.cmplus.ACTION_CONTAINER_FEATURE_CHANGED"

.field public static final ALL_INSTANCE:I = -0x1

.field public static final CLONE_INSTANCE:I = 0x1

.field public static final EXTRA_APPLICATION_INFO:Ljava/lang/String; = "com.cmx.cmplus.EXTRA_APPLICATION_INFO"

.field public static final EXTRA_CONTAINER_INFO:Ljava/lang/String; = "com.cmx.cmplus.EXTRA_CONTAINER_INFO"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.cmx.cmplus.EXTRA_PACKAGE_NAME"

.field public static final MASTER_INSTANCE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CloneHelper"

.field private static sInstance:Lcom/cmx/cmplus/sdk/CloneHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/cmx/cmplus/sdk/CloneHelper;->sInstance:Lcom/cmx/cmplus/sdk/CloneHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/cmx/cmplus/sdk/CloneHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v3, Lcom/cmx/cmplus/sdk/CloneHelper;->sInstance:Lcom/cmx/cmplus/sdk/CloneHelper;

    if-nez v3, :cond_0

    .line 88
    :try_start_0
    const-string v3, "com.cmx.cmplus.sdk.CloneHelperImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "cloneHelperImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 90
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 91
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmx/cmplus/sdk/CloneHelper;

    sput-object v3, Lcom/cmx/cmplus/sdk/CloneHelper;->sInstance:Lcom/cmx/cmplus/sdk/CloneHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "cloneHelperImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    sget-object v3, Lcom/cmx/cmplus/sdk/CloneHelper;->sInstance:Lcom/cmx/cmplus/sdk/CloneHelper;

    return-object v3

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v3, "CloneHelper"

    const-string v4, "Failed to find CloneHelper SDK. Turn off feature! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v3, 0x0

    sput-object v3, Lcom/cmx/cmplus/sdk/CloneHelper;->sInstance:Lcom/cmx/cmplus/sdk/CloneHelper;

    .line 96
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->turnOff()V

    goto :goto_0
.end method


# virtual methods
.method public canPackageBeCloned(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public createCloneForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public deleteCloneForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public disableCloneFeature()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public enableCloneFeature()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    .line 236
    return-void
.end method

.method public getCloneApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloneBadge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloneBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClonedPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultCloneablePackages()Ljava/util/List;
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
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOEMCloneablePackages()Ljava/util/List;
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
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCloneInstance(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isMasterInstance(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public isPackageCloned(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public markCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public markIntentRestricted(Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "restricted"    # Z

    .prologue
    .line 267
    return-void
.end method

.method public setCloneBadge(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "badge"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    return-void
.end method

.method public startActivityInClone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    return-void
.end method
