.class public final Lnubia/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_THEME_VALUE_FILE:Ljava/lang/String; = "theme_values%s.xml"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final DEBUG_THEME:Z = false

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field static final TAG_THEME:Ljava/lang/String; = "ThemeFramework"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnubia/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModifyTime:J

.field private mMetaData:Lnubia/content/res/ThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ThemeFramework"

    sput-object v0, Lnubia/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 53
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lnubia/content/res/ThemeZipFile;->sDensity:I

    .line 67
    sget v0, Lnubia/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lnubia/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resource"    # Landroid/content/res/Resources;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 73
    iput-object p4, p0, Lnubia/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 74
    iput-object p3, p0, Lnubia/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    .line 77
    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 84
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 85
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 93
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getInputStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 10
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    invoke-direct {p0, p1}, Lnubia/content/res/ThemeZipFile;->getThemeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lnubia/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 116
    .local v5, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v5, :cond_2

    .line 117
    const-string v6, "dpi/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 119
    .local v3, "pos":I
    if-lez v3, :cond_2

    .line 120
    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "realName":Ljava/lang/String;
    :goto_0
    if-lez v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_0

    .line 122
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "fileType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v6, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 127
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 128
    .local v0, "array":[Ljava/lang/Object;
    aput-object v1, v0, v8

    .line 129
    sget-object v6, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    invoke-static {v6}, Lnubia/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 130
    const/4 v6, 0x2

    aput-object v4, v0, v6

    .line 132
    const-string v6, "%s%s%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lnubia/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 133
    if-nez v5, :cond_1

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_1
    sget-object v6, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    if-le v6, v9, :cond_2

    .line 138
    sget-object v6, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    iput v6, v5, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 144
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "fileType":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v3    # "pos":I
    .end local v4    # "realName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_0
    const-string p0, "android"

    .line 155
    .end local p0    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 151
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v0, "framework-nubia-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_3
    const-string p0, "nubia"

    goto :goto_0
.end method

.method private getThemeFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "dpi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "pos":I
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "point":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 100
    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    .end local p1    # "file":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected static getThemeZipFile(Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lnubia/content/res/ThemeZipFile;
    .locals 7
    .param p0, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnubia/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "fullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 167
    .local v2, "result":Lnubia/content/res/ThemeZipFile;
    sget-object v5, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v5

    .line 168
    :try_start_0
    sget-object v4, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    sget-object v4, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnubia/content/res/ThemeZipFile;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 170
    .end local v2    # "result":Lnubia/content/res/ThemeZipFile;
    .local v3, "result":Lnubia/content/res/ThemeZipFile;
    :goto_0
    if-nez v3, :cond_0

    .line 172
    :try_start_1
    new-instance v2, Lnubia/content/res/ThemeZipFile;

    invoke-static {p1}, Lnubia/content/res/ThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, p0, v4, p2}, Lnubia/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    .end local v3    # "result":Lnubia/content/res/ThemeZipFile;
    .restart local v2    # "result":Lnubia/content/res/ThemeZipFile;
    :try_start_2
    sget-object v4, Lnubia/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_1
    monitor-exit v5

    .line 179
    return-object v2

    .line 177
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2    # "result":Lnubia/content/res/ThemeZipFile;
    .restart local v3    # "result":Lnubia/content/res/ThemeZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "result":Lnubia/content/res/ThemeZipFile;
    .restart local v2    # "result":Lnubia/content/res/ThemeZipFile;
    goto :goto_2

    .end local v2    # "result":Lnubia/content/res/ThemeZipFile;
    .restart local v3    # "result":Lnubia/content/res/ThemeZipFile;
    :cond_0
    move-object v2, v3

    .end local v3    # "result":Lnubia/content/res/ThemeZipFile;
    .restart local v2    # "result":Lnubia/content/res/ThemeZipFile;
    goto :goto_1

    :cond_1
    move-object v3, v2

    .end local v2    # "result":Lnubia/content/res/ThemeZipFile;
    .restart local v3    # "result":Lnubia/content/res/ThemeZipFile;
    goto :goto_0
.end method

.method private getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v7, 0x0

    .line 202
    .local v7, "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->isValid()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    const-string v9, "#*.png"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 207
    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "#*.png"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "fileNameWithoutSuffix":Ljava/lang/String;
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 214
    .local v3, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v2, v0

    .line 216
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 226
    .end local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "fileNameWithoutSuffix":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 227
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 228
    .local v6, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 229
    new-instance v8, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-direct {v8, p0, v6, v10, v11}, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;-><init>(Lnubia/content/res/ThemeZipFile;Ljava/io/InputStream;J)V

    .end local v7    # "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .local v8, "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    move-object v7, v8

    .line 238
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v7    # "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 243
    :cond_3
    return-object v7

    .line 223
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_4
    iget-object v9, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 233
    :catch_0
    move-exception v4

    .line 234
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v9, Lnubia/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getZipInputStream error ->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isValid()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadThemeValues()V
    .locals 11

    .prologue
    .line 260
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v8, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 261
    sget-object v8, Lnubia/content/res/ThemeZipFile;->sDensities:[I

    aget v8, v8, v2

    invoke-static {v8}, Lnubia/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "densityString":Ljava/lang/String;
    const-string v8, "theme_values%s.xml"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "themeFileName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lnubia/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 265
    .local v5, "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v5, :cond_0

    .line 266
    const/4 v3, 0x0

    .line 268
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 270
    .local v7, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v8, v5, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v7}, Lnubia/content/res/ThemeZipFile;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 277
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_1

    .line 278
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :try_start_3
    iget-object v8, v5, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    if-eqz v8, :cond_0

    .line 280
    iget-object v8, v5, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 281
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 286
    .end local v0    # "densityString":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .end local v6    # "themeFileName":Ljava/lang/String;
    :cond_2
    return-void

    .line 273
    .restart local v0    # "densityString":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "tfi":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v6    # "themeFileName":Ljava/lang/String;
    .restart local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 295
    const/4 v8, 0x0

    .line 298
    .local v8, "tag":I
    :goto_0
    const/4 v10, 0x2

    if-eq v8, v10, :cond_0

    const/4 v10, 0x1

    if-eq v8, v10, :cond_0

    .line 299
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 300
    :cond_0
    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    .line 301
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "No start tag found"

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :catch_0
    move-exception v4

    .line 395
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 333
    .local v1, "defPackage":Ljava/lang/String;
    .local v2, "defType":Ljava/lang/String;
    .local v5, "i":I
    .local v7, "resName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "value":Ljava/lang/String;
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 308
    .end local v1    # "defPackage":Ljava/lang/String;
    .end local v2    # "defType":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "resName":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 310
    const/4 v10, 0x2

    if-eq v8, v10, :cond_4

    const/4 v10, 0x1

    if-ne v8, v10, :cond_3

    .line 312
    :cond_4
    const/4 v10, 0x1

    if-eq v8, v10, :cond_1

    .line 317
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "defType":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 319
    const/4 v7, 0x0

    .line 320
    .restart local v7    # "resName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 323
    .restart local v1    # "defPackage":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .restart local v5    # "i":I
    :goto_2
    if-ltz v5, :cond_2

    .line 324
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "attrName":Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 326
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    :cond_5
    const-string v10, "package"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 329
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 340
    .end local v0    # "attrName":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 341
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 344
    :cond_8
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v7, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 347
    .local v6, "resId":I
    if-lez v6, :cond_3

    .line 349
    const-string v10, "bool"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 350
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_a

    .line 352
    :cond_9
    iget-object v11, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const-string v10, "true"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    :cond_a
    const-string v10, "color"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "integer"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "drawable"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 360
    :cond_b
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_c

    .line 362
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    :cond_c
    const-string v10, "string"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 370
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lnubia/content/res/ThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v10, :cond_d

    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_d

    .line 372
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    :cond_d
    const-string v10, "dimen"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 377
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lnubia/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_3

    .line 379
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/app/NubiaThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 381
    .local v3, "dimenValue":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 382
    iget-object v10, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 352
    .end local v3    # "dimenValue":Ljava/lang/Integer;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method private openZipFile()V
    .locals 6

    .prologue
    .line 404
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 407
    iget-wide v2, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 409
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    const/4 v2, 0x0

    iput-object v2, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 4

    .prologue
    .line 423
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 424
    .local v0, "lastModifyTime":J
    iget-wide v2, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    iget-wide v2, p0, Lnubia/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 427
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->clean()V

    .line 428
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->openZipFile()V

    .line 429
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->loadThemeValues()V

    .line 430
    const/4 v2, 0x1

    monitor-exit p0

    .line 434
    :goto_0
    return v2

    .line 432
    :cond_0
    monitor-exit p0

    .line 434
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lnubia/content/res/ThemeZipFile;->clean()V

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "info":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Lnubia/content/res/ThemeZipFile;->mMetaData:Lnubia/content/res/ThemeResources$MetaData;

    iget-boolean v1, v1, Lnubia/content/res/ThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lnubia/content/res/ThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 450
    :cond_0
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "paramInt"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnubia/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
