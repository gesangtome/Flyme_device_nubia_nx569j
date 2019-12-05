.class public Lnubia/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field public static final BLUR_RADIUS_100:I = 0x5a

.field public static final BLUR_RADIUS_25:I = 0x5a

.field public static final BLUR_RADIUS_DEFAULT:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BlurUtil"

.field private static final mSurpportBlurRadius:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    .line 27
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void

    .line 22
    :array_0
    .array-data 4
        0x5a
        0xa
        0x5a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # I

    .prologue
    .line 139
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 140
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    const/16 v1, 0x5a

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/WallpaperManager;->clipBlurWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static doArcBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x1

    .line 150
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 152
    .local v2, "bmpWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 153
    .local v1, "bmpHeight":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 155
    const v4, 0x424242

    .line 156
    .local v4, "color":I
    const v9, 0x424242

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x3090025

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 160
    .local v0, "arcHeight":F
    mul-int v9, v2, v2

    int-to-float v9, v9

    const/high16 v10, 0x3e000000    # 0.125f

    mul-float/2addr v9, v10

    div-float/2addr v9, v0

    add-float v8, v9, v0

    .line 161
    .local v8, "radius":F
    int-to-float v9, v2

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .line 162
    .local v5, "cx":F
    int-to-float v9, v1

    add-float/2addr v9, v8

    sub-float v6, v9, v0

    .line 163
    .local v6, "cy":F
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 164
    invoke-virtual {v3, v5, v6, v8, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    return-object p1
.end method

.method public static doBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 132
    int-to-float v0, p2

    invoke-static {p1, v0}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "radius"    # F
    .param p3, "color"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "bitmapSub":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-ne v5, v4, :cond_1

    .line 104
    :cond_0
    const-string v4, "BlurUtil"

    const-string v5, "doBlur ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-object v3

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v2, v4

    .line 109
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v1, v4

    .line 110
    .local v1, "height":I
    div-float/2addr p2, p1

    .line 112
    if-le v2, v5, :cond_2

    if-gt v1, v5, :cond_3

    .line 114
    :cond_2
    const-string v4, "BlurUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GaussianBlurEffect error width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {p0, v2, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    invoke-static {v0, p2, p3}, Lnubia/util/BlurUtil;->getBlurEffect(Landroid/graphics/Bitmap;FI)V

    move-object v3, v0

    .line 120
    goto :goto_0
.end method

.method public static doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
    .param p2, "color"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 92
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {p0, v1, v2, p2}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    :goto_1
    return-object v1

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native getBlurEffect(Landroid/graphics/Bitmap;FI)V
.end method

.method private static getInnerRadiusByBlurRadius(I)F
    .locals 3
    .param p0, "radius"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 71
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p0, v1, :cond_0

    .line 72
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    .line 76
    :goto_1
    return v1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/16 v1, 0x5a

    invoke-static {v1}, Lnubia/util/BlurUtil;->getInnerRadiusByBlurRadius(I)F

    move-result v1

    goto :goto_1
.end method

.method public static getInnerScaleByBlurRadius(I)F
    .locals 3
    .param p0, "radius"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p0, v1, :cond_0

    .line 62
    sget-object v1, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    .line 66
    :goto_1
    return v1

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/16 v1, 0x5a

    invoke-static {v1}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v1

    goto :goto_1
.end method

.method private static getSurpportBlurRadius()[I
    .locals 5

    .prologue
    .line 36
    sget-object v3, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v1, v3

    .line 37
    .local v1, "length":I
    new-array v2, v1, [I

    .line 39
    .local v2, "radiusArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    sget-object v3, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v2, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v2
.end method

.method private static isSurpportBlurRadius(I)Z
    .locals 3
    .param p0, "radius"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 48
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne p0, v2, :cond_1

    .line 49
    const/4 v1, 0x1

    .line 53
    :cond_0
    return v1

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
