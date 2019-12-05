.class public Lnubia/content/res/ThemeResourcesPackage;
.super Lnubia/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnubia/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lnubia/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 0
    .param p1, "wrappedResources"    # Lnubia/content/res/ThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 20
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;
    .locals 5
    .param p0, "originalResources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "result":Lnubia/content/res/ThemeResourcesPackage;
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lnubia/content/res/ThemeResourcesPackage;
    check-cast v1, Lnubia/content/res/ThemeResourcesPackage;

    .line 37
    .restart local v1    # "result":Lnubia/content/res/ThemeResourcesPackage;
    :cond_0
    if-nez v1, :cond_3

    .line 38
    sget-object v3, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    .line 40
    :try_start_0
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnubia/content/res/ThemeResourcesPackage;

    move-object v1, v0

    .line 44
    :cond_1
    if-nez v1, :cond_2

    .line 46
    invoke-static {p0, p1}, Lnubia/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;

    move-result-object v1

    .line 48
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    monitor-exit v3

    .line 53
    :cond_3
    return-object v1

    .line 51
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;
    .locals 4
    .param p0, "originalResources"    # Landroid/content/res/Resources;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "finalThemeResources":Lnubia/content/res/ThemeResourcesPackage;
    const/4 v2, 0x0

    .line 70
    .local v2, "i":I
    :goto_0
    sget-object v3, Lnubia/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 71
    new-instance v1, Lnubia/content/res/ThemeResourcesPackage;

    sget-object v3, Lnubia/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v2

    invoke-direct {v1, v0, p0, p1, v3}, Lnubia/content/res/ThemeResourcesPackage;-><init>(Lnubia/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 74
    .end local v0    # "finalThemeResources":Lnubia/content/res/ThemeResourcesPackage;
    .local v1, "finalThemeResources":Lnubia/content/res/ThemeResourcesPackage;
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    .end local v1    # "finalThemeResources":Lnubia/content/res/ThemeResourcesPackage;
    .restart local v0    # "finalThemeResources":Lnubia/content/res/ThemeResourcesPackage;
    goto :goto_0

    .line 76
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 81
    invoke-super {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "cookieType"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "fileInfo":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-nubia-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 112
    invoke-super {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/content/res/ThemeResourcesSystem;->hasValues()Z

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
