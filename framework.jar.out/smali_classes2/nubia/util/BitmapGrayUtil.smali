.class public Lnubia/util/BitmapGrayUtil;
.super Ljava/lang/Object;
.source "BitmapGrayUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapGrayUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getBitmapColorCast(Landroid/graphics/Bitmap;II)I
.end method

.method private static native getBitmapGray(Landroid/graphics/Bitmap;)I
.end method

.method public static getColorCast(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    const/4 v0, 0x1

    const/16 v1, 0x50

    const/16 v2, 0x1e

    invoke-static {p0, v0, v1, v2}, Lnubia/util/BitmapGrayUtil;->getColorCast(Landroid/graphics/Bitmap;III)I

    move-result v0

    return v0
.end method

.method public static getColorCast(Landroid/graphics/Bitmap;I)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I

    .prologue
    .line 58
    const/16 v0, 0x50

    const/16 v1, 0x1e

    invoke-static {p0, p1, v0, v1}, Lnubia/util/BitmapGrayUtil;->getColorCast(Landroid/graphics/Bitmap;III)I

    move-result v0

    return v0
.end method

.method public static getColorCast(Landroid/graphics/Bitmap;III)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I
    .param p2, "SValue"    # I
    .param p3, "BValue"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 70
    const/4 v1, -0x1

    .line 71
    .local v1, "colorCast":I
    const/4 v0, 0x0

    .line 72
    .local v0, "bitmapSub":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v6, v5, :cond_1

    .line 73
    :cond_0
    const-string v5, "BitmapGrayUtil"

    const-string v6, "getColorCast error ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return v4

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v3, v5, p1

    .line 78
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v2, v5, p1

    .line 80
    .local v2, "height":I
    if-le v3, v6, :cond_2

    if-gt v2, v6, :cond_3

    .line 82
    :cond_2
    const-string v5, "BitmapGrayUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getColorCast error width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_3
    if-ne p1, v6, :cond_4

    .line 87
    invoke-static {p0, p2, p3}, Lnubia/util/BitmapGrayUtil;->getBitmapColorCast(Landroid/graphics/Bitmap;II)I

    move-result v1

    :goto_1
    move v4, v1

    .line 93
    goto :goto_0

    .line 89
    :cond_4
    invoke-static {p0, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    invoke-static {v0, p2, p3}, Lnubia/util/BitmapGrayUtil;->getBitmapColorCast(Landroid/graphics/Bitmap;II)I

    move-result v1

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public static getGray(Landroid/graphics/Bitmap;I)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "gray":I
    const/4 v0, 0x0

    .line 33
    .local v0, "bitmapSub":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v6, v5, :cond_1

    .line 34
    :cond_0
    const-string v5, "BitmapGrayUtil"

    const-string v6, "BitmapGrayUtil error ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return v4

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v3, v5, p1

    .line 39
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v2, v5, p1

    .line 41
    .local v2, "height":I
    if-le v3, v6, :cond_2

    if-gt v2, v6, :cond_3

    .line 43
    :cond_2
    const-string v5, "BitmapGrayUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapGrayUtil error width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p0, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lnubia/util/BitmapGrayUtil;->getBitmapGray(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move v4, v1

    .line 50
    goto :goto_0
.end method
