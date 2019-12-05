.class public Landroid/app/NubiaThemeHelper;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NubiaThemeHelper$UnitEntry;
    }
.end annotation


# static fields
.field private static final ICON_ADAPT_URI:Ljava/lang/String; = "content://cn.nubia.theme.iconadapt.settings"

.field private static final ICON_METHOD_NAME:Ljava/lang/String; = "IconAdpater"

.field public static final NUBIA_RES_PATH:Ljava/lang/String; = "/system/framework/framework-nubia-res.apk"

.field private static final NUBIA_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field private static final sFloatOut:[F

.field private static final sFloatPattern:Ljava/util/regex/Pattern;

.field private static final sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x5

    .line 357
    const-string v0, "(-?[0-9]+(?:\\.[0-9]+)?)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    .line 359
    new-array v0, v7, [F

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    .line 375
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/app/NubiaThemeHelper$UnitEntry;

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v2, "px"

    invoke-direct {v1, v2, v5, v8, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v2, "dip"

    invoke-direct {v1, v2, v5, v7, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "dp"

    invoke-direct {v2, v3, v5, v7, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "sp"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "pt"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v2, "in"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v5, v3, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v2, "mm"

    invoke-direct {v1, v2, v5, v5, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v9

    const/4 v1, 0x7

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "%"

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v3, v9, v8, v4}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "%p"

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v3, v9, v7, v4}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 55
    const-string v0, "/system/framework/framework-nubia-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private static applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V
    .locals 2
    .param p0, "unit"    # Landroid/app/NubiaThemeHelper$UnitEntry;
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "outScale"    # [F

    .prologue
    .line 527
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    iput v0, p1, Landroid/util/TypedValue;->type:I

    .line 528
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    shl-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/util/TypedValue;->data:I

    .line 529
    const/4 v0, 0x0

    iget v1, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    aput v1, p2, v0

    .line 530
    return-void
.end method

.method private static computeTypedValue(Landroid/util/TypedValue;FF)V
    .locals 10
    .param p0, "outValue"    # Landroid/util/TypedValue;
    .param p1, "value"    # F
    .param p2, "scale"    # F

    .prologue
    const-wide/16 v8, 0x0

    .line 473
    mul-float/2addr p1, p2

    .line 474
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    const/4 v3, 0x1

    .line 475
    .local v3, "neg":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 476
    neg-float p1, p1

    .line 478
    :cond_0
    const/high16 v6, 0x4b000000    # 8388608.0f

    mul-float/2addr v6, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-long v0, v6

    .line 481
    .local v0, "bits":J
    const-wide/32 v6, 0x7fffff

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 484
    const/4 v4, 0x0

    .line 485
    .local v4, "radix":I
    const/16 v5, 0x17

    .line 503
    .local v5, "shift":I
    :goto_1
    shr-long v6, v0, v5

    const-wide/32 v8, 0xffffff

    and-long/2addr v6, v8

    long-to-int v2, v6

    .line 504
    .local v2, "mantissa":I
    if-eqz v3, :cond_1

    .line 505
    neg-int v6, v2

    const v7, 0xffffff

    and-int v2, v6, v7

    .line 507
    :cond_1
    iget v6, p0, Landroid/util/TypedValue;->data:I

    shl-int/lit8 v7, v4, 0x4

    shl-int/lit8 v8, v2, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Landroid/util/TypedValue;->data:I

    .line 509
    return-void

    .line 474
    .end local v0    # "bits":J
    .end local v2    # "mantissa":I
    .end local v3    # "neg":Z
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 486
    .restart local v0    # "bits":J
    .restart local v3    # "neg":Z
    :cond_3
    const-wide/32 v6, -0x800000

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 488
    const/4 v4, 0x3

    .line 489
    .restart local v4    # "radix":I
    const/4 v5, 0x0

    .restart local v5    # "shift":I
    goto :goto_1

    .line 490
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_4
    const-wide/32 v6, -0x80000000

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 492
    const/4 v4, 0x2

    .line 493
    .restart local v4    # "radix":I
    const/16 v5, 0x8

    .restart local v5    # "shift":I
    goto :goto_1

    .line 494
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_5
    const-wide v6, -0x8000000000L

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 496
    const/4 v4, 0x1

    .line 497
    .restart local v4    # "radix":I
    const/16 v5, 0x10

    .restart local v5    # "shift":I
    goto :goto_1

    .line 500
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_6
    const/4 v4, 0x0

    .line 501
    .restart local v4    # "radix":I
    const/16 v5, 0x17

    .restart local v5    # "shift":I
    goto :goto_1
.end method

.method private static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "bitmapNew":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    return-object v0
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "from"    # Landroid/content/res/Configuration;
    .param p1, "to"    # Landroid/content/res/Configuration;

    .prologue
    .line 59
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget v1, v1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 60
    return-void
.end method

.method private static generateIconDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "retDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 253
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getBatchLoadIcon(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/content/pm/PackageItemInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "listPackageItemInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/content/pm/PackageItemInfo;>;"
    if-nez p0, :cond_0

    const/4 v8, 0x0

    .line 155
    :goto_0
    return-object v8

    .line 107
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v10, "listPackageName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v9, "listIconId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v11, "listParcelInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    .line 111
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageItemInfo;

    .line 112
    .local v12, "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    check-cast v12, Landroid/os/Parcelable;

    .end local v12    # "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 117
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v8, "listDrawable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v14, 0x0

    .line 119
    .local v14, "providerClient":Landroid/content/ContentProviderClient;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v3, "bitmapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v16, "resNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v15, "resIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v18, "package_item_info_list"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    const-string/jumbo v18, "package_name_list"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 126
    const-string v18, "icon_id_list"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v14

    .line 128
    const-string v18, "IconAdpater"

    const-string v19, "getBatchIconFromCache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v17

    .line 129
    .local v17, "resultBundle":Landroid/os/Bundle;
    const-string v18, "bitmap_list"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 133
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 134
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 135
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageItemInfo;

    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 137
    .local v13, "packageName":Ljava/lang/String;
    invoke-static {v13}, Landroid/app/NubiaThemeHelper;->getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 138
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 139
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 141
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    invoke-static {v2}, Landroid/app/NubiaThemeHelper;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 142
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 147
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 148
    .local v6, "e":Landroid/os/RemoteException;
    if-eqz v14, :cond_4

    .line 149
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z

    .line 151
    :cond_4
    const-string v18, "IconUnity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getBatchLoadIcon RemoteException "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "resultBundle":Landroid/os/Bundle;
    :cond_5
    :try_start_1
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 152
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v17    # "resultBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/Exception;
    const-string v18, "IconUnity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getBatchLoadIcon Exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getBatchLoadIconForResolve(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "listResolveInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v11, "listPackageName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v10, "listIconId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v12, "listParcelInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 164
    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ResolveInfo;->getComponentInfoForIconUnity()Landroid/content/pm/ComponentInfo;

    move-result-object v19

    check-cast v19, Landroid/os/Parcelable;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 166
    .local v13, "packageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    move-object/from16 v0, v17

    iget v8, v0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 168
    .local v8, "iconId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 165
    .end local v8    # "iconId":I
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ResolveInfo;->getComponentInfoForIconUnity()Landroid/content/pm/ComponentInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 170
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v9, "listDrawable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v14, 0x0

    .line 172
    .local v14, "providerClient":Landroid/content/ContentProviderClient;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v3, "bitmapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v16, "resNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v15, "resIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v19, "package_item_info_list"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 178
    const-string/jumbo v19, "package_name_list"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    const-string v19, "icon_id_list"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v14

    .line 181
    const-string v19, "IconAdpater"

    const-string v20, "getBatchIconFromCache"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v18

    .line 182
    .local v18, "resultBundle":Landroid/os/Bundle;
    const-string v19, "bitmap_list"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 185
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    .line 186
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 187
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ResolveInfo;->getComponentInfoForIconUnity()Landroid/content/pm/ComponentInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 189
    .restart local v13    # "packageName":Ljava/lang/String;
    invoke-static {v13}, Landroid/app/NubiaThemeHelper;->getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 190
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 191
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 193
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static {v2}, Landroid/app/NubiaThemeHelper;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 194
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 199
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v18    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Landroid/os/RemoteException;
    if-eqz v14, :cond_4

    .line 201
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z

    .line 203
    :cond_4
    const-string v19, "IconUnity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getBatchLoadIconForResolve RemoteException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_4
    return-object v9

    .line 198
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v18    # "resultBundle":Landroid/os/Bundle;
    :cond_5
    :try_start_1
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 204
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v18    # "resultBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .line 205
    .local v6, "e":Ljava/lang/Exception;
    const-string v19, "IconUnity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getBatchLoadIconForResolve Exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static getDrawable(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "iconId"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/NubiaThemeHelper;->getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 67
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 66
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/NubiaThemeHelper;->getIconFromApp(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    .line 67
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static getFancyDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "fancyDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v2, "cn.nubia.calendar.preset"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    new-instance v1, Lnubia/fancydrawable/DateDrawable;

    .end local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Lnubia/fancydrawable/DateDrawable;-><init>()V

    .line 245
    .restart local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v1

    .line 236
    :cond_1
    const-string v2, "cn.nubia.deskclock.preset"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    new-instance v1, Lnubia/fancydrawable/TimeDrawable;

    .end local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Lnubia/fancydrawable/TimeDrawable;-><init>()V

    .restart local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 238
    :cond_2
    const-string v2, "cn.nubia.weather"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lnubia/os/IconUnityUtil;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    new-instance v1, Lnubia/fancydrawable/WeatherDrawable;

    .end local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1}, Lnubia/fancydrawable/WeatherDrawable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 241
    .end local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 243
    .restart local v1    # "fancyDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIconFromApp(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "iconId"    # I

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 82
    .local v5, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "package_item_info"

    check-cast p0, Landroid/os/Parcelable;

    .end local p0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {v0, v7, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    const-string v7, "application_info"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string/jumbo v7, "package_name"

    invoke-virtual {v0, v7, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v7, "icon_id"

    invoke-virtual {v0, v7, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 88
    const-string v7, "IconAdpater"

    const-string v8, "getIconDrawableFromChache"

    invoke-virtual {v5, v7, v8, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 89
    .local v6, "resultBundle":Landroid/os/Bundle;
    const-string v7, "bitmap"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 90
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 91
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4}, Landroid/app/NubiaThemeHelper;->copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 93
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Landroid/os/RemoteException;
    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    .line 98
    :cond_1
    const-string v7, "IconUnity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIconFromApp RemoteException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "IconUnity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIconFromApp Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changed"    # I
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 263
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lnubia/content/res/IconCustomizer;->clearCache()V

    .line 269
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0}, Lnubia/content/res/ExtraConfiguration;->needReloadFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Landroid/graphics/Typeface;->reload()V

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "changed"    # I
    .param p1, "cfg"    # Landroid/content/res/Configuration;
    .param p2, "cxt"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 290
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {p0, p1}, Landroid/app/NubiaThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .param p0, "changed"    # I

    .prologue
    .line 303
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 307
    if-eqz p0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 309
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x1

    .line 315
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 308
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isPackageCloned(Ljava/lang/String;)Z
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v3, 0x0

    .line 213
    .local v3, "isCloned":Z
    :try_start_0
    const-string v7, "com.cmx.cmplus.SmartContainerManagerNative"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 215
    .local v6, "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "get"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 216
    .local v1, "get":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 217
    .local v5, "smartContainer":Ljava/lang/Object;
    const-string v7, "com.cmx.cmplus.ISmartContainerManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 219
    .local v2, "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "isPackageCloned"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 221
    .local v4, "isPackageCloned":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 222
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 228
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "isPackageCloned":Ljava/lang/reflect/Method;
    .end local v5    # "smartContainer":Ljava/lang/Object;
    .end local v6    # "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "changed"    # I
    .param p2, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 340
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lnubia/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lnubia/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/NubiaThemeHelper;->parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "requireUnit"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 405
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 407
    .local v8, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 410
    .local v6, "len":I
    if-gtz v6, :cond_0

    .line 411
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 468
    :goto_0
    return-object v9

    .line 415
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 416
    .local v0, "buf":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 417
    aget-char v9, v0, v5

    const/16 v10, 0xff

    if-le v9, v10, :cond_1

    .line 418
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 416
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 423
    :cond_2
    aget-char v9, v0, v11

    const/16 v10, 0x30

    if-ge v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x39

    if-le v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    .line 424
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 428
    :cond_3
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 429
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 430
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "f_str":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "end":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 441
    .local v3, "f":F
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    .line 443
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v2, v8, v9}, Landroid/app/NubiaThemeHelper;->parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 444
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v9, v9, v11

    invoke-static {v8, v3, v9}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    .line 445
    iget v9, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 436
    .end local v3    # "f":F
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 447
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "f":F
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 451
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 454
    if-eqz v8, :cond_7

    .line 455
    if-nez p1, :cond_6

    .line 456
    const/4 v9, 0x4

    iput v9, v8, Landroid/util/TypedValue;->type:I

    .line 457
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    iput v9, v8, Landroid/util/TypedValue;->data:I

    .line 463
    :goto_2
    iget v9, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    .line 460
    :cond_6
    sget-object v9, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    aget-object v9, v9, v12

    sget-object v10, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v9, v8, v10}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 461
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v9, v9, v11

    invoke-static {v8, v3, v9}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    goto :goto_2

    .line 468
    .end local v2    # "end":Ljava/lang/String;
    .end local v3    # "f":F
    .end local v4    # "f_str":Ljava/lang/String;
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "outScale"    # [F

    .prologue
    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 515
    sget-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    .local v0, "arr$":[Landroid/app/NubiaThemeHelper$UnitEntry;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 516
    .local v3, "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    iget-object v4, v3, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    invoke-static {v3, p1, p2}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 518
    const/4 v4, 0x1

    .line 522
    .end local v3    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :goto_1
    return v4

    .line 515
    .restart local v3    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v3    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
