.class public Lcn/nubia/server/notification/PreInstalledListUtil;
.super Ljava/lang/Object;
.source "PreInstalledListUtil.java"


# static fields
.field private static final PATHNAME:Ljava/lang/String; = "system/preset_apps/"


# instance fields
.field private mPathlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPm:Landroid/content/pm/PackageManager;

    .line 20
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v5, "presetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    const-string v8, "system/preset_apps/"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    iget-object v7, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 26
    new-instance v8, Ljava/io/File;

    iget-object v7, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 27
    .local v0, "files":[Ljava/io/File;
    iget-object v7, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    if-nez v0, :cond_2

    .line 43
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    return-object v5

    .line 31
    .restart local v0    # "files":[Ljava/io/File;
    :cond_2
    array-length v3, v0

    .line 32
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 33
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "tmp":Ljava/lang/String;
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 35
    iget-object v7, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPathlist:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_3
    iget-object v7, p0, Lcn/nubia/server/notification/PreInstalledListUtil;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 38
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 39
    .local v4, "pkgname":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
