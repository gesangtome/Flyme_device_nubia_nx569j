.class public Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
.super Ljava/lang/Object;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    }
.end annotation


# static fields
.field public static final CURREN_SCREEN_LOAD_FINISH:I = 0x3e9

.field private static final ICON_LOCATION_X:I = 0x91

.field private static final ICON_LOCATION_Y:F = 238.3f

.field private static final ICON_SIZE:I = 0x46

.field public static final NEXT_SCREEN_LOAD_FINISH:I = 0x3ea

.field public static final SCREEN_HEIGHT:I = 0x780

.field public static final SCREEN_WIDTH:I = 0x438

.field public static final START_SCREEN_LOAD_FINISH:I = 0x3ec

.field private static final TEXT_LOCATION_Y:F = 326.3f

.field public static final WALLPAPER_SCREEN_LOAD_FINISH:I = 0x3eb


# instance fields
.field private final MAX_CLEAR_BITMAP:I

.field private mAm:Landroid/app/ActivityManager;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mBlurWallpaperLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private mDensity:F

.field private mGuideIconLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mScreenHight:I

.field private mScreenWidth:I

.field private mSplitWallpaperLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mStartScreenLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailHeight:I

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->MAX_CLEAR_BITMAP:I

    .line 101
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mRecentAppSwitchList:Ljava/util/List;

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 105
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    .line 107
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHight:I

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailWidth:I

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailHeight:I

    .line 113
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ZZI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlurWallpaper(ZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailWidth:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailHeight:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getDefaultThumbnail(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private addTipToWallpaper(Landroid/graphics/Bitmap;ZZI)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "hasTip"    # Z
    .param p3, "isUp"    # Z
    .param p4, "funs"    # I

    .prologue
    .line 567
    if-eqz p2, :cond_1

    const/16 v5, 0x2d0

    .line 568
    .local v5, "bWidth":I
    :goto_0
    if-eqz p2, :cond_2

    const/16 v4, 0x500

    .line 569
    .local v4, "bHeight":I
    :goto_1
    const/16 v16, 0x28

    .line 570
    .local v16, "yOffset":I
    int-to-float v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 571
    .local v10, "ratio":F
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 572
    .local v8, "newBm":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 573
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 574
    .local v11, "src":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 575
    .local v7, "dst":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 576
    .local v9, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 577
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v11, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 579
    if-eqz p2, :cond_0

    .line 580
    const/4 v13, 0x0

    .line 581
    .local v13, "tipsStr":Ljava/lang/String;
    const/16 v17, 0x2712

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30c0040

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 588
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->genTipBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 590
    .local v12, "tipBitmap":Landroid/graphics/Bitmap;
    if-nez p3, :cond_4

    .line 591
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v14, v17, 0x2

    .line 592
    .local v14, "x":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v15, v0

    .line 598
    .local v15, "y":I
    :goto_3
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 600
    .end local v12    # "tipBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "tipsStr":Ljava/lang/String;
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_0
    return-object v8

    .line 567
    .end local v4    # "bHeight":I
    .end local v5    # "bWidth":I
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v8    # "newBm":Landroid/graphics/Bitmap;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "ratio":F
    .end local v11    # "src":Landroid/graphics/Rect;
    .end local v16    # "yOffset":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto/16 :goto_0

    .line 568
    .restart local v5    # "bWidth":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto/16 :goto_1

    .line 585
    .restart local v4    # "bHeight":I
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "dst":Landroid/graphics/Rect;
    .restart local v8    # "newBm":Landroid/graphics/Bitmap;
    .restart local v9    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "ratio":F
    .restart local v11    # "src":Landroid/graphics/Rect;
    .restart local v13    # "tipsStr":Ljava/lang/String;
    .restart local v16    # "yOffset":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x30c0041

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 594
    .restart local v12    # "tipBitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v14, v17, 0x2

    .line 595
    .restart local v14    # "x":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v4, v17

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v15, v17, v18

    .restart local v15    # "y":I
    goto :goto_3
.end method

.method private clipBitmapByMiniLauncherLocation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "maskColor"    # I

    .prologue
    const/4 v9, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 491
    .local v4, "sourceBitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 493
    .local v3, "sourceBitmapHeight":I
    int-to-float v6, v3

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 494
    .local v1, "clipBitmapWidth":I
    sub-int v6, v4, v1

    div-int/lit8 v6, v6, 0x2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 495
    .local v5, "x":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 498
    .local v2, "copyCanvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v5, v1

    invoke-direct {v6, v5, v9, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    invoke-virtual {v2, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 501
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 502
    return-object v0
.end method

.method private doBlurBitmapNoScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 478
    :try_start_0
    const-string v3, "nubia.util.BlurUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 479
    .local v0, "blurUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "doBlur"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Bitmap;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 481
    .local v2, "getBlur":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 482
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "blurUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getBlur":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 483
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBlurLiveWallpaperThumbnail(Landroid/content/Context;Landroid/app/WallpaperInfo;IZZI)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "maskColor"    # I
    .param p4, "hasTip"    # Z
    .param p5, "isUp"    # Z
    .param p6, "funs"    # I

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 509
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 510
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 511
    .local v3, "newBm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 512
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->clipBitmapByMiniLauncherLocation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 514
    .local v2, "liveWallpaperThumb":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->doBlurBitmapNoScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0, p4, p5, p6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->addTipToWallpaper(Landroid/graphics/Bitmap;ZZI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 517
    .end local v2    # "liveWallpaperThumb":Landroid/graphics/Bitmap;
    :cond_0
    return-object v3
.end method

.method private getBlurWallpaper(ZZI)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "hasTip"    # Z
    .param p2, "isUp"    # Z
    .param p3, "funs"    # I

    .prologue
    .line 460
    const/4 v7, 0x0

    .line 461
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 463
    .local v2, "info":Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_0

    .line 464
    const/high16 v3, 0x27000000

    .line 465
    .local v3, "maskColor":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlurLiveWallpaperThumbnail(Landroid/content/Context;Landroid/app/WallpaperInfo;IZZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 472
    .end local v3    # "maskColor":I
    :goto_0
    return-object v7

    .line 469
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlurWallpaperNew(ZZI)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method private getDefaultThumbnail(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 175
    const/high16 v13, 0x3f000000    # 0.5f

    .line 176
    .local v13, "ratioX":F
    const/high16 v14, 0x3f000000    # 0.5f

    .line 177
    .local v14, "ratioY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x44870000    # 1080.0f

    div-float v15, v25, v26

    .line 178
    .local v15, "screen_ratioX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x44f00000    # 1920.0f

    div-float v16, v25, v26

    .line 179
    .local v16, "screen_ratioY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v13

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 180
    .local v21, "thumbnailWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v14

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    .line 181
    .local v20, "thumbnailHeight":I
    const/high16 v25, 0x43110000    # 145.0f

    mul-float v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v22, v0

    .line 182
    .local v22, "transX":I
    const v25, 0x436e4ccd    # 238.3f

    mul-float v25, v25, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 183
    .local v23, "transY":I
    const/high16 v25, 0x428c0000    # 70.0f

    mul-float v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v11, v0

    .line 184
    .local v11, "iconW":I
    const/high16 v25, 0x428c0000    # 70.0f

    mul-float v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v10, v0

    .line 185
    .local v10, "iconH":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v13

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v18, v0

    .line 186
    .local v18, "textX":I
    const v25, 0x43a32666    # 326.3f

    mul-float v25, v25, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 187
    .local v19, "textY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 188
    .local v24, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 189
    .local v9, "h":I
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 190
    .local v5, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    .local v7, "cavs":Landroid/graphics/Canvas;
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 192
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 196
    .local v12, "paint":Landroid/graphics/Paint;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    new-instance v17, Landroid/graphics/Rect;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 198
    .local v17, "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    add-int v27, v22, v11

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v23, v10

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 199
    .local v8, "dstRect":Landroid/graphics/RectF;
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 201
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 203
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 204
    new-instance v25, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v26, 0x0

    const/16 v27, 0x3

    invoke-direct/range {v25 .. v27}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v6, v5, v0, v8, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 207
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 208
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 210
    sget-object v25, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 211
    const/high16 v25, 0x41600000    # 14.0f

    mul-float v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    const/16 v25, 0x8a

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 215
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 217
    return-object v4
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 264
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 265
    .local v1, "pInfo":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 270
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIcon(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x200001

    and-int/2addr v3, v4

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 157
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private getShadowBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "shadowRadius"    # F

    .prologue
    const/4 v4, 0x0

    .line 327
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v4

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 332
    .local v2, "iconWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 334
    .local v1, "iconHeight":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 338
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 339
    .local v0, "blurPaint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, p2, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 341
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 342
    .local v3, "resultBm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method private getThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v1

    .line 275
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v1, :cond_1

    move-object v1, v3

    .line 297
    .end local v1    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_0
    :goto_0
    return-object v1

    .line 278
    .restart local v1    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 280
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 281
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    const-string v4, "FitAnim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThumbnail thumbnail="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " descriptor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 287
    iput-object v2, v1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 289
    :cond_2
    const-string v3, "FitAnim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getThumbnail taskThumbnail.mainThumbnail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public canclePreGuideLoaderRun()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 888
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 891
    :cond_0
    return-void
.end method

.method public clearAsyncTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 894
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 896
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 897
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 899
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 901
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 902
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    .line 904
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 906
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 907
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 909
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 911
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 912
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    .line 914
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_4

    .line 916
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 917
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 919
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_5

    .line 921
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 922
    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    .line 924
    :cond_5
    return-void
.end method

.method public createShadowIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "isRight"    # Z

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v3, 0x0

    .line 323
    :goto_0
    return-object v3

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 305
    .local v2, "oriWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 306
    .local v1, "oriHeigth":I
    const/16 v8, 0x14

    .line 307
    .local v8, "shadowWidth":I
    const/16 v5, 0x14

    .line 308
    .local v5, "shadowHeigth":I
    const/high16 v7, 0x41200000    # 10.0f

    .line 309
    .local v7, "shadowRadius":F
    add-int v9, v2, v8

    add-int v10, v1, v5

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 312
    .local v3, "resultBm":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v7}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getShadowBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 313
    .local v4, "shadowBm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 315
    .local v6, "shadowPaint":Landroid/graphics/Paint;
    const/high16 v9, 0x38000000

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    if-eqz p2, :cond_1

    .line 317
    int-to-float v9, v8

    int-to-float v10, v5

    invoke-virtual {v0, v4, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 318
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 320
    :cond_1
    const/4 v9, 0x0

    int-to-float v10, v5

    invoke-virtual {v0, v4, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 321
    int-to-float v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public genTipBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "tipsStr"    # Ljava/lang/String;
    .param p2, "ratio"    # F

    .prologue
    .line 521
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 522
    .local v4, "paint":Landroid/graphics/Paint;
    const/high16 v8, 0x41900000    # 18.0f

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, p2

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 523
    const/4 v8, -0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 526
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 527
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 528
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, p1, v8, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 530
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 531
    .local v7, "strWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int v6, v8, v9

    .line 532
    .local v6, "strHight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 534
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 535
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 536
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v8, v6, v8

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    div-int/lit8 v0, v8, 0x2

    .line 537
    .local v0, "baseline":I
    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    int-to-float v9, v0

    invoke-virtual {v2, p1, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 538
    return-object v1
.end method

.method public getAppLabel(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 253
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, -0x200001

    and-int/2addr v4, v5

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 257
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 258
    .local v1, "pInfo":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public getBlackThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 221
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 222
    .local v2, "res":Landroid/content/res/Resources;
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailWidth:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    .local v1, "c":Landroid/graphics/Canvas;
    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 226
    return-object v0
.end method

.method public getBlurWallpaperNew(ZZI)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "hasTip"    # Z
    .param p2, "isUp"    # Z
    .param p3, "funs"    # I

    .prologue
    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 545
    .local v5, "newBm":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 546
    .local v6, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 547
    .local v2, "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "clipFitBlurWallpaper"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 549
    .local v4, "getBlurMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 550
    invoke-direct {p0, v1, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->addTipToWallpaper(Landroid/graphics/Bitmap;ZZI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 551
    const-string v7, "FitAnim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBlurWallpaper mScreenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mScreenHight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bitmap w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bitmap h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v2    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getBlurMethod":Ljava/lang/reflect/Method;
    .end local v6    # "wpm":Landroid/app/WallpaperManager;
    :goto_0
    return-object v5

    .line 558
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 6

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "runningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 139
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 140
    .local v3, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    .line 141
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 144
    .end local v3    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020046

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 163
    .local v1, "iconDpi":I
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 165
    .end local v1    # "iconDpi":I
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getHandledScreenBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 231
    const-string v3, "FitAnim"

    const-string v4, "getHandledScreenBitmap start"

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-nez p1, :cond_0

    .line 234
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 235
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v0, "c":Landroid/graphics/Canvas;
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 243
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    const-string v3, "FitAnim"

    const-string v4, "getHandledScreenBitmap end"

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v2

    .line 238
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 240
    .restart local v2    # "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public isCurrentScreenLoaderRun()Z
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuideIconLoaderRun()Z
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitWallpaperLoaderRun()Z
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartScreenLoaderRun()Z
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailLoaderRun()Z
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWallpaperLoaderRun()Z
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBlurWallpaperInBackgroud(Ljava/lang/String;ZZI)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hasTip"    # Z
    .param p3, "isUp"    # Z
    .param p4, "funs"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 408
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$2;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$2;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ZZILjava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    .line 456
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    return-void
.end method

.method public loadSplitWallpaperInBackgroud(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 351
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    .line 399
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void
.end method

.method public loadThumbnailsInBackgroud(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 609
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 675
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 676
    return-void
.end method

.method public nofityLoadCurrentScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 680
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 683
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 723
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 724
    return-void
.end method

.method public notifyLoadGuideIcon(Ljava/util/List;Ljava/util/List;Z)V
    .locals 3
    .param p3, "isRight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "hashList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 786
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;ZLjava/util/List;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 855
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 856
    return-void
.end method

.method public notifyLoadStartAppScreen(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 727
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    .line 777
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 778
    return-void
.end method

.method public notifyUpdateRecentAppSwitchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "recentAppSwitchList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mRecentAppSwitchList:Ljava/util/List;

    .line 131
    return-void
.end method

.method public setCallback(Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    .line 122
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method public setmSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 0
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 125
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 126
    return-void
.end method
