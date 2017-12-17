.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final BLUR_LS_WALLPAPER_FORMAT:Ljava/lang/String; = "blur_ls_wallpaper_%d"

.field static final BLUR_WALLPAPER_FORMAT:Ljava/lang/String; = "blur_wallpaper_%d"

.field static final DEBUG:Z = false

.field static final GALLERY_LS_WALLPAPER:Ljava/lang/String; = "gallery_ls_wallpaper"

.field static final LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "lockscreen_wallpaper"

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field private mLSWallpaperParam:[I

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperParam:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 503
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 110
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 133
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperParam:[I

    .line 134
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLSWallpaperParam:[I

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 505
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 508
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 510
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 511
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 512
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 513
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 514
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 515
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 518
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->initBlurWallpaper(I)V

    .line 519
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->initBlurWallpaper(I)V

    .line 521
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_0
    return-void
.end method

.method private generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1698
    if-nez p2, :cond_1

    .line 1699
    const/16 p2, 0x0

    .line 1751
    .end local p2    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p2

    .line 1702
    .restart local p2    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const-string v12, "window"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 1703
    .local v11, "wm":Landroid/view/WindowManager;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1704
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1705
    iget v12, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1707
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move/from16 v0, p4

    if-eq v12, v0, :cond_0

    .line 1714
    :cond_2
    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1715
    .local v7, "newbm":Landroid/graphics/Bitmap;
    iget v12, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v7, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1717
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1718
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1719
    .local v10, "targetRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 1722
    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v12

    .line 1723
    .local v4, "deltaw":I
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p4, v12

    .line 1725
    .local v3, "deltah":I
    if-gtz v4, :cond_3

    if-lez v3, :cond_4

    .line 1728
    :cond_3
    if-le v4, v3, :cond_5

    .line 1729
    move/from16 v0, p3

    int-to-float v12, v0

    iget v13, v10, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 1733
    .local v9, "scale":F
    :goto_1
    iget v12, v10, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 1734
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 1735
    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v12

    .line 1736
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p4, v12

    .line 1739
    .end local v9    # "scale":F
    :cond_4
    div-int/lit8 v12, v4, 0x2

    div-int/lit8 v13, v3, 0x2

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1741
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1742
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1743
    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1744
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1747
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p2, v7

    .line 1748
    goto/16 :goto_0

    .line 1731
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_5
    move/from16 v0, p4

    int-to-float v12, v0

    iget v13, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v13, v13

    div-float v9, v12, v13

    .restart local v9    # "scale":F
    goto :goto_1

    .line 1749
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "deltah":I
    .end local v4    # "deltaw":I
    .end local v7    # "newbm":Landroid/graphics/Bitmap;
    .end local v9    # "scale":F
    .end local v10    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    .line 1750
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    const-string v12, "WallpaperManagerService"

    const-string v13, "Can\'t generate default bitmap"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 1255
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1259
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .restart local p3    # "defValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperType"    # I

    .prologue
    const/4 v7, 0x0

    .line 1633
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1634
    .local v5, "params":Landroid/os/Bundle;
    invoke-direct {p0, v5, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaper(Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1635
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_2

    .line 1636
    const-string v8, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1637
    .local v6, "width":I
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    .line 1640
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1641
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1643
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 1644
    invoke-direct {p0, p1, v0, v6, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1652
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1661
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v0

    .line 1645
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :cond_0
    const/4 v8, 0x1

    if-ne v8, p2, :cond_1

    .line 1652
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1653
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1652
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_2
    :goto_1
    move-object v0, v7

    .line 1661
    goto :goto_0

    .line 1648
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_1
    move-exception v1

    .line 1649
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v8, "WallpaperManagerService"

    const-string v9, "Can\'t decode file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1652
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 1653
    :catch_2
    move-exception v8

    goto :goto_1

    .line 1651
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    .line 1652
    :try_start_7
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1655
    :goto_2
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1658
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_3
    move-exception v8

    goto :goto_1

    .line 1653
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_4
    move-exception v7

    goto :goto_0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_5
    move-exception v8

    goto :goto_1

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v9

    goto :goto_2
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 733
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 734
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 735
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 736
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 737
    return-object v1
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 1666
    const/4 v3, 0x0

    .line 1668
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 1673
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 1674
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWidthHint()I

    move-result v6

    .line 1675
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHeightHint()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 1678
    .local v2, "height":I
    :try_start_2
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1679
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    invoke-static {v3, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1680
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0, v6, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1685
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    move-object v7, v8

    .line 1694
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    :cond_0
    :goto_2
    return-object v7

    .line 1669
    :catch_0
    move-exception v1

    .line 1670
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x108026c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v3

    goto :goto_0

    .line 1681
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "height":I
    .restart local v6    # "width":I
    :catch_1
    move-exception v1

    .line 1682
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v8, "WallpaperManagerService"

    const-string v9, "Can\'t decode stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1685
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 1686
    :catch_2
    move-exception v8

    goto :goto_2

    .line 1684
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    .line 1685
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1688
    :goto_3
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1691
    .end local v2    # "height":I
    .end local v6    # "width":I
    :catch_3
    move-exception v8

    goto :goto_2

    .line 1686
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "width":I
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v9

    goto :goto_3
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 1385
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1386
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1387
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1756
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1757
    .local v1, "screenWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1758
    .local v0, "screenHeight":I
    if-ge v0, v1, :cond_0

    .line 1759
    move v2, v0

    .line 1760
    .local v2, "t":I
    move v0, v1

    .line 1761
    move v1, v2

    .line 1764
    .end local v2    # "t":I
    :cond_0
    const/16 v3, 0x780

    if-lt v0, v3, :cond_1

    .line 1765
    const-string v3, "/system/media/wallpaper/1920/wallpaper_01.jpg"

    .line 1767
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "/system/media/wallpaper/default/wallpaper_01.jpg"

    goto :goto_0
.end method

.method private getWallpaper(Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "outParams"    # Landroid/os/Bundle;
    .param p2, "wallpaperType"    # I

    .prologue
    .line 1817
    if-nez p2, :cond_0

    .line 1818
    const-string v0, "wallpaper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInner(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1822
    :goto_0
    return-object v0

    .line 1819
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 1820
    const-string v0, "lockscreen_wallpaper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInner(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 1822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "wallpaperType"    # I

    .prologue
    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 1619
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1623
    :goto_0
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 1625
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1627
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1620
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "WallpaperManagerService"

    const-string v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1628
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 524
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperInner(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "outParams"    # Landroid/os/Bundle;
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1772
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1775
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1776
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1777
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_1

    .line 1778
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1782
    :goto_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p1, :cond_0

    .line 1785
    :try_start_1
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1786
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1788
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1789
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 1790
    :try_start_2
    monitor-exit v6

    .line 1797
    .end local v2    # "f":Ljava/io/File;
    :goto_1
    return-object v5

    .line 1780
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 1792
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v7, 0x10000000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 1798
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1793
    .restart local v0    # "callingUid":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :catch_0
    move-exception v1

    .line 1795
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1797
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1271
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1273
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1275
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    return-object v0
.end method

.method private initBlurWallpaper(I)V
    .locals 7
    .param p1, "wallpaperType"    # I

    .prologue
    const/4 v6, 0x1

    .line 1586
    const/4 v1, 0x0

    .line 1588
    .local v1, "bitmapWallpaper":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v6, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1590
    if-nez v1, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1594
    :cond_0
    invoke-static {p1}, Landroid/app/NubiaWallpaperManager;->getSurpportBlurRadius(I)[I

    move-result-object v3

    .line 1596
    .local v3, "radiusArray":[I
    if-eqz v3, :cond_3

    .line 1599
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1600
    if-ne v6, p1, :cond_1

    .line 1601
    aget v4, v3, v2

    int-to-float v4, v4

    const/high16 v5, 0x59000000

    invoke-static {v1, v4, v5}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1605
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    aget v4, v3, v2

    invoke-direct {p0, v0, v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveBlurWallpaper(Landroid/graphics/Bitmap;II)V

    .line 1606
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1599
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1603
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    aget v4, v3, v2

    int-to-float v4, v4

    invoke-static {v1, v4}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 1609
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setBlurWallpaperParam(III)V

    .line 1612
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private loadSettingsLocked(I)V
    .locals 18
    .param p1, "userId"    # I

    .prologue
    .line 1281
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 1282
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 1283
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 1284
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 1288
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1289
    .local v12, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v12, :cond_1

    .line 1290
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v12    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 1291
    .restart local v12    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1293
    :cond_1
    const/4 v9, 0x0

    .line 1295
    .local v9, "success":Z
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1296
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1297
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1301
    :cond_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 1302
    .local v11, "type":I
    const/4 v13, 0x2

    if-ne v11, v13, :cond_4

    .line 1303
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1304
    .local v10, "tag":Ljava/lang/String;
    const-string v13, "wp"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1305
    const/4 v13, 0x0

    const-string v14, "width"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1306
    const/4 v13, 0x0

    const-string v14, "height"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1308
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v14, "paddingLeft"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 1309
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v14, "paddingTop"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 1310
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v14, "paddingRight"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 1311
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v14, "paddingBottom"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 1312
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1313
    const/4 v13, 0x0

    const-string v14, "component"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "comp":Ljava/lang/String;
    if-eqz v1, :cond_9

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    :goto_0
    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1317
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_3

    const-string v13, "android"

    iget-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1320
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1332
    .end local v1    # "comp":Ljava/lang/String;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 1333
    const/4 v9, 0x1

    move-object v7, v8

    .line 1348
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v7, :cond_5

    .line 1349
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1355
    :cond_5
    :goto_2
    if-nez v9, :cond_6

    .line 1356
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1357
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1358
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 1359
    const-string v13, ""

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1374
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 1375
    .local v2, "displaySize":Landroid/graphics/Point;
    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 1376
    iget v13, v2, Landroid/graphics/Point;->x:I

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1378
    :cond_7
    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    .line 1379
    iget v13, v2, Landroid/graphics/Point;->y:I

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1382
    :cond_8
    return-void

    .line 1314
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "comp":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_9
    const/4 v13, 0x0

    goto :goto_0

    .line 1334
    .end local v1    # "comp":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 1335
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v13, "WallpaperManagerService"

    const-string v14, "no current wallpaper -- first boot?"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1336
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1337
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_4
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1338
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    .line 1339
    .local v3, "e":Ljava/lang/NumberFormatException;
    :goto_5
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1340
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    .line 1341
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1342
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v3

    .line 1343
    .local v3, "e":Ljava/io/IOException;
    :goto_7
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1344
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 1345
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1351
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v13

    goto/16 :goto_2

    .line 1344
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 1342
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1340
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1338
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 1336
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 1334
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .prologue
    .line 1188
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1242
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1245
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1246
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1248
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1249
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1250
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1252
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1156
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1157
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1159
    :try_start_0
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1167
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1169
    return-void

    .line 1160
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notifyLiveWallpaperChanged()V
    .locals 4

    .prologue
    .line 1999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.action.SET_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2001
    return-void
.end method

.method private saveBlurWallpaper(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "wallpaperType"    # I

    .prologue
    .line 1564
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setBlurWallpaper(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1566
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1570
    :cond_0
    const/4 v1, 0x0

    .line 1573
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1577
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1578
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1576
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    .line 1577
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1580
    :goto_2
    throw v3

    .line 1578
    :catch_1
    move-exception v4

    goto :goto_2

    .line 1576
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1193
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1194
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1196
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1198
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1199
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1201
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1202
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1204
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_0

    .line 1205
    const/4 v5, 0x0

    const-string v6, "paddingLeft"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1207
    :cond_0
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_1

    .line 1208
    const/4 v5, 0x0

    const-string v6, "paddingTop"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    :cond_1
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v5, :cond_2

    .line 1211
    const/4 v5, 0x0

    const-string v6, "paddingRight"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    :cond_2
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_3

    .line 1214
    const/4 v5, 0x0

    const-string v6, "paddingBottom"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1216
    :cond_3
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1219
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    :cond_4
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1224
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1225
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1226
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1227
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1228
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1239
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1229
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_5

    .line 1232
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1237
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 1234
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1229
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setLockScreenWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1976
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1977
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1978
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1979
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1980
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 1981
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1993
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1983
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1985
    .local v0, "ident":J
    :try_start_2
    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLockedInner(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1986
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 1987
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1991
    :cond_1
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    return-object v2

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private updateBlurWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "radius"    # I
    .param p4, "wallpaperType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1930
    if-nez p4, :cond_0

    .line 1931
    const-string v1, "blur_wallpaper_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, "dirName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLockedInner(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .end local v0    # "dirName":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1932
    :cond_0
    if-ne v2, p4, :cond_1

    .line 1933
    const-string v1, "blur_ls_wallpaper_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dirName":Ljava/lang/String;
    goto :goto_0

    .line 1935
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateWallpaperBitmapLockedInner(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "dirName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1827
    if-nez p1, :cond_0

    .line 1828
    const-string p1, ""

    .line 1832
    :cond_0
    :try_start_0
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1833
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1834
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1835
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1840
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1841
    .local v3, "file":Ljava/io/File;
    const/high16 v5, 0x38000000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1843
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v2, v4

    .line 1853
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-object v2

    .line 1846
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    :cond_3
    if-eqz p3, :cond_2

    const-string v5, "wallpaper"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1847
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1850
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1851
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperManagerService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 1853
    goto :goto_0
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 11
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1144
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1147
    :catch_0
    move-exception v8

    .line 1148
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperManagerService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 1150
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 20
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 971
    if-nez p2, :cond_1

    .line 972
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_1

    .line 973
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    .line 974
    if-nez p1, :cond_1

    .line 977
    const/4 v3, 0x1

    .line 1106
    :goto_0
    return v3

    .line 979
    :cond_0
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 982
    const/4 v3, 0x1

    goto :goto_0

    .line 988
    :cond_1
    if-nez p1, :cond_2

    .line 989
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 990
    if-nez p1, :cond_2

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 998
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v16, v0

    .line 999
    .local v16, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    .line 1001
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    if-nez v17, :cond_3

    .line 1003
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v3, 0x0

    goto :goto_0

    .line 1006
    :cond_3
    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1010
    .local v12, "msg":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 1011
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    .end local v12    # "msg":Ljava/lang/String;
    .end local v16    # "serviceUserId":I
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    .line 1099
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1100
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_10

    .line 1101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1013
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v16    # "serviceUserId":I
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_1
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1017
    .end local v12    # "msg":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    .line 1019
    .local v18, "wi":Landroid/app/WallpaperInfo;
    new-instance v11, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v11, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v16

    invoke-interface {v3, v11, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v14

    .line 1026
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 1027
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1028
    .local v15, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_9

    .line 1031
    :try_start_2
    new-instance v18, Landroid/app/WallpaperInfo;

    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1048
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :cond_6
    if-nez v18, :cond_b

    .line 1049
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1051
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 1052
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1032
    .end local v12    # "msg":Ljava/lang/String;
    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    .restart local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v9

    .line 1033
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_7

    .line 1034
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1036
    :cond_7
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1038
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v9

    .line 1039
    .local v9, "e":Ljava/io/IOException;
    if-eqz p3, :cond_8

    .line 1040
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1042
    :cond_8
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1026
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1054
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_a
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1061
    .end local v10    # "i":I
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1062
    .local v13, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1063
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x104043f

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    const-string v19, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040440

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x22000001

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v11, v13, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1076
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_c

    .line 1077
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1079
    :cond_c
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1082
    .end local v12    # "msg":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_e

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1085
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1086
    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1087
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1089
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_f

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1094
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1106
    :cond_f
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1103
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v16    # "serviceUserId":I
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    .local v9, "e":Landroid/os/RemoteException;
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_10
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1096
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v16    # "serviceUserId":I
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 654
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 660
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1138
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1139
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1140
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 12
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 665
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 702
    :goto_0
    return-void

    .line 668
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string v2, "wallpaper"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 672
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 674
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 676
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 677
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_2

    .line 700
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 678
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 683
    :catch_0
    move-exception v7

    .line 684
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .line 691
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_2
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    if-eqz p3, :cond_5

    .line 695
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 700
    :cond_5
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 696
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1113
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1116
    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1118
    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    .line 1120
    :try_start_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1124
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1128
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1131
    :goto_2
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1132
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1133
    iput-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1135
    :cond_2
    return-void

    .line 1129
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1121
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1114
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1519
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    :goto_0
    return-void

    .line 1528
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1529
    :try_start_0
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1531
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1532
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1535
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1537
    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1538
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1540
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 1541
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1542
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1544
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_1

    .line 1546
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1549
    :cond_1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1551
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1553
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1555
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1530
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1559
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 532
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    return-void
.end method

.method public getBlurWallpaper(Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "outParams"    # Landroid/os/Bundle;
    .param p2, "radius"    # I
    .param p3, "wallpaperType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1803
    const/4 v0, 0x0

    .line 1805
    .local v0, "dirName":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 1806
    const-string v1, "blur_wallpaper_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1813
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInner(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1807
    :cond_0
    if-ne v2, p3, :cond_1

    .line 1808
    const-string v1, "blur_ls_wallpaper_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1810
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getBlurWallpaperParam([II)V
    .locals 3
    .param p1, "outParamt"    # [I
    .param p2, "wallpaperType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1942
    if-nez p2, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperParam:[I

    aget v0, v0, v2

    aput v0, p1, v2

    .line 1944
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperParam:[I

    aget v0, v0, v1

    aput v0, p1, v1

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1945
    :cond_1
    if-ne v1, p2, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLSWallpaperParam:[I

    aget v0, v0, v2

    aput v0, p1, v2

    .line 1947
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLSWallpaperParam:[I

    aget v0, v0, v1

    aput v0, p1, v1

    goto :goto_0
.end method

.method public getHeightHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 795
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 796
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    .line 798
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 800
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLockScreenWallpaper(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "outParams"    # Landroid/os/Bundle;

    .prologue
    .line 1968
    const-string v0, "lockscreen_wallpaper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInner(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 590
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 839
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 842
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 843
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 844
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_0

    .line 845
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 849
    :goto_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 850
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v3, :cond_1

    .line 851
    monitor-exit v6

    .line 868
    :goto_1
    return-object v5

    .line 847
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    goto :goto_0

    .line 854
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz p2, :cond_2

    .line 855
    :try_start_1
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    :cond_2
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 859
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "wallpaper"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 860
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 861
    :try_start_2
    monitor-exit v6

    goto :goto_1

    .line 869
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 863
    .restart local v0    # "callingUid":I
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :cond_3
    const/high16 v7, 0x10000000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 864
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    .line 873
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 874
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 875
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 876
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 877
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 879
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 880
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWidthHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 784
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 785
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    .line 787
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 789
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 707
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 709
    .local v2, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 711
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 715
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 718
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 719
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 721
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 722
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 724
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 725
    const/4 v6, 0x1

    monitor-exit v7

    .line 729
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    return v6

    .line 711
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 728
    .end local v2    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 729
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x30

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onRemoveUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 612
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 620
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 614
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onStoppingUser(I)V

    .line 615
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v4, "wallpaper"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 617
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v4, "wallpaper_info.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 618
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 619
    monitor-exit v3

    goto :goto_0

    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onStoppingUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 598
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 609
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 601
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 602
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 604
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 608
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 21
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1444
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const-string v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1445
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1447
    .local v14, "resName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1448
    .local v10, "pkg":Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1449
    .local v5, "colon":I
    if-lez v5, :cond_0

    .line 1450
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1453
    :cond_0
    const/4 v9, 0x0

    .line 1454
    .local v9, "ident":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1455
    .local v15, "slash":I
    if-lez v15, :cond_1

    .line 1456
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1459
    :cond_1
    const/16 v16, 0x0

    .line 1460
    .local v16, "type":Ljava/lang/String;
    if-lez v5, :cond_2

    if-lez v15, :cond_2

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1461
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1464
    :cond_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    if-eqz v16, :cond_8

    .line 1465
    const/4 v13, -0x1

    .line 1466
    .local v13, "resId":I
    const/4 v12, 0x0

    .line 1467
    .local v12, "res":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1469
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1470
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1471
    .local v11, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1472
    if-nez v13, :cond_5

    .line 1473
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    const/16 v17, 0x0

    .line 1500
    if-eqz v12, :cond_3

    .line 1502
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1505
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 1506
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1508
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1514
    .end local v4    # "c":Landroid/content/Context;
    .end local v5    # "colon":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_4
    :goto_1
    return v17

    .line 1478
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1479
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1480
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1482
    :cond_6
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1484
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_4
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1486
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "amt":I
    if-lez v2, :cond_9

    .line 1487
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1493
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catch_0
    move-exception v6

    move-object v7, v8

    .line 1494
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1500
    if-eqz v12, :cond_7

    .line 1502
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 1505
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 1506
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1508
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 1514
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v17, 0x0

    goto :goto_1

    .line 1491
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1492
    const/16 v17, 0x1

    .line 1500
    if-eqz v12, :cond_a

    .line 1502
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1505
    :cond_a
    :goto_6
    if-eqz v8, :cond_4

    .line 1506
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1508
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 1509
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 1495
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 1496
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_b
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1500
    if-eqz v12, :cond_b

    .line 1502
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1505
    :cond_b
    :goto_8
    if-eqz v7, :cond_8

    .line 1506
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1508
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 1509
    :catch_3
    move-exception v17

    goto :goto_5

    .line 1497
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v6

    .line 1498
    .local v6, "e":Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v17, "WallpaperManagerService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1500
    if-eqz v12, :cond_c

    .line 1502
    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 1505
    :cond_c
    :goto_a
    if-eqz v7, :cond_8

    .line 1506
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1508
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_5

    .line 1509
    :catch_5
    move-exception v17

    goto :goto_5

    .line 1500
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_b
    if-eqz v12, :cond_d

    .line 1502
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 1505
    :cond_d
    :goto_c
    if-eqz v7, :cond_e

    .line 1506
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1508
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 1509
    :cond_e
    :goto_d
    throw v17

    .line 1503
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catch_6
    move-exception v18

    goto/16 :goto_0

    .line 1509
    :catch_7
    move-exception v18

    goto/16 :goto_1

    .line 1503
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v18

    goto :goto_6

    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v17

    goto/16 :goto_4

    .line 1509
    :catch_a
    move-exception v17

    goto/16 :goto_5

    .line 1503
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_b
    move-exception v17

    goto :goto_8

    .local v6, "e":Ljava/io/IOException;
    :catch_c
    move-exception v17

    goto :goto_a

    .end local v6    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v18

    goto :goto_c

    .line 1509
    :catch_e
    move-exception v18

    goto :goto_d

    .line 1500
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 1497
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 1495
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1493
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    :catch_11
    move-exception v6

    goto/16 :goto_3
.end method

.method public setBlurWallpaper(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "radius"    # I
    .param p3, "wallpaperType"    # I

    .prologue
    .line 1905
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1906
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1908
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1909
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1910
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 1911
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1923
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1913
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1915
    .local v0, "ident":J
    :try_start_2
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateBlurWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1916
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 1917
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1921
    :cond_1
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    return-object v2

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setBlurWallpaperParam(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "wallpaperType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1954
    if-nez p3, :cond_1

    .line 1955
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperParam:[I

    aput p1, v0, v2

    .line 1956
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperParam:[I

    aput p2, v0, v1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1957
    :cond_1
    if-ne v1, p3, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLSWallpaperParam:[I

    aput p1, v0, v2

    .line 1959
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLSWallpaperParam:[I

    aput p2, v0, v1

    goto :goto_0
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 779
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 747
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 748
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 749
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 750
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 778
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 753
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 754
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 755
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 757
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_3

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_5

    .line 758
    :cond_3
    iput p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 759
    iput p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 760
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 761
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v1, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 762
    :cond_4
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_5

    .line 763
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 765
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    :goto_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 778
    :cond_5
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 770
    :cond_6
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_5

    .line 774
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 767
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 804
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 809
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 810
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 811
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v2, :cond_2

    .line 812
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 834
    .end local v0    # "userId":I
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 815
    .restart local v0    # "userId":I
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 816
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 817
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 818
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v2, v0, :cond_3

    monitor-exit v3

    goto :goto_0

    .line 819
    :cond_3
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_4

    .line 820
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 822
    :try_start_2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    :goto_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 834
    :cond_4
    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 826
    :cond_5
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_4

    .line 830
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 823
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setGalleryBitmap(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1887
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1888
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1889
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1890
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 1891
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1900
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1893
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1895
    .local v0, "ident":J
    :try_start_2
    const-string v5, "gallery_ls_wallpaper"

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLockedInner(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 1898
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    return-object v2

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setGalleryFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1858
    const/4 v2, 0x0

    .line 1859
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .end local v2    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1860
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1861
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->setGalleryBitmap(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1863
    .local v1, "fdout":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 1865
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1884
    :goto_0
    return-void

    .line 1871
    :cond_0
    const/4 v3, 0x0

    .line 1874
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1875
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1878
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1879
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1880
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1877
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 1878
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1879
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1882
    :goto_2
    throw v5

    .line 1866
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 1880
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    goto :goto_2

    .line 1877
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1972
    const-string v0, "lockscreen_wallpaper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setLockScreenWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 884
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 886
    const/4 v2, 0x0

    .line 900
    :goto_0
    return-object v2

    .line 888
    :cond_0
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 890
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 891
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 892
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 894
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 895
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 896
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 900
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_0

    .line 902
    .end local v0    # "ident":J
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 900
    .restart local v0    # "ident":J
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponentNotify(Landroid/content/ComponentName;Z)V

    .line 939
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 931
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 934
    :cond_0
    return-void
.end method

.method public setWallpaperComponentNotify(Landroid/content/ComponentName;Z)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "notify"    # Z

    .prologue
    .line 942
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 943
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 945
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 946
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 947
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 948
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 950
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "userId":I
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 952
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 953
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 955
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    if-eqz p2, :cond_1

    .line 960
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLiveWallpaperChanged()V

    .line 963
    :cond_1
    monitor-exit v9

    .line 964
    return-void

    .line 955
    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public settingsRestored()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1394
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "settingsRestored() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1399
    :cond_0
    const/4 v5, 0x0

    .line 1400
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1401
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1402
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1403
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1404
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1406
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1411
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1413
    :cond_1
    const/4 v7, 0x1

    .line 1430
    :cond_2
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    if-nez v7, :cond_3

    .line 1433
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1435
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1438
    :cond_3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1439
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1440
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1441
    return-void

    .line 1417
    :cond_4
    :try_start_2
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1419
    const/4 v7, 0x1

    .line 1425
    :goto_1
    if-eqz v7, :cond_2

    .line 1426
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0

    .line 1430
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1422
    :cond_5
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    goto :goto_1

    .line 1440
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 623
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 625
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 627
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_0

    .line 628
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 629
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 631
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 632
    monitor-exit v2

    .line 633
    return-void

    .line 632
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 636
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 637
    const/4 v6, 0x0

    .line 639
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 641
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_1
    return-void

    .line 639
    :cond_0
    :try_start_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v7

    .line 645
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 647
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_3
    const-string v0, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 649
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public systemRunning()V
    .locals 5

    .prologue
    .line 538
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 539
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 540
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 541
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 543
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 906
    if-nez p1, :cond_0

    const-string p1, ""

    .line 908
    :cond_0
    :try_start_0
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 909
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 910
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 911
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 916
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, "wallpaper"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 917
    .local v3, "file":Ljava/io/File;
    const/high16 v5, 0x3c000000    # 0.0078125f

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 919
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v2, v4

    .line 927
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 922
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperManagerService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 927
    goto :goto_0
.end method
