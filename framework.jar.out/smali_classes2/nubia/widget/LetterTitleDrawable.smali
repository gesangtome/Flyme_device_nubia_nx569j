.class public Lnubia/widget/LetterTitleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/LetterTitleDrawable$1;,
        Lnubia/widget/LetterTitleDrawable$LetterTile;
    }
.end annotation


# static fields
.field public static final CARD_RES_TYPE_LARGE:I = 0x1

.field public static final CARD_RES_TYPE_NORMAL:I = 0x0

.field public static final CARD_RES_TYPE_SMALL:I = 0x2

.field private static final DIGITS_MAX_SHOW_COUNT:I = 0x3

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;


# instance fields
.field private mCardId:I

.field private mCardResType:I

.field private mContactType:I

.field private mDisplayName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mIsCircle:Z

.field private mOffset:F

.field private mPaint:Landroid/graphics/Paint;

.field private mResources:Landroid/content/res/Resources;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "cardId"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 62
    iput v1, p0, Lnubia/widget/LetterTitleDrawable;->mContactType:I

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/LetterTitleDrawable;->mIsCircle:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    .line 71
    iput-object p1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    .line 72
    iput p2, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 76
    new-instance v0, Lnubia/widget/LetterTitleDrawable$LetterTile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;-><init>(Landroid/content/res/Resources;Lnubia/widget/LetterTitleDrawable$1;)V

    sput-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    .line 77
    return-void
.end method

.method private configDrawLetterCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "minDimension"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    const/4 v3, 0x1

    .line 138
    .local v3, "drawLetterCount":I
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->initOnlyOneChar()V

    .line 139
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->configDrawPaint()V

    .line 141
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v9

    .line 142
    .local v9, "textWidth":F
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    .line 143
    .local v8, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v0, v1

    iget v1, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 144
    .local v7, "baseY":I
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v7

    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method private configDrawPaint()V
    .locals 3

    .prologue
    .line 149
    iget v0, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    const v2, 0x3090099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    :goto_0
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    return-void

    .line 152
    :cond_0
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    const v2, 0x3090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 96
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    .local v0, "destRect":Landroid/graphics/Rect;
    iget v2, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 103
    .local v1, "halfLength":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 115
    sget-object v4, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 117
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 120
    .local v2, "minDimension":I
    iget-object v4, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v4, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lnubia/widget/LetterTitleDrawable;->getDefImgResId(C)I

    move-result v1

    .line 122
    .local v1, "defImgResId":I
    invoke-direct {p0, p1, v0, v1}, Lnubia/widget/LetterTitleDrawable;->mergeDefaultImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 123
    iget-object v4, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnubia/widget/LetterTitleDrawable;->isChinese(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-direct {p0, p1, v0, v2}, Lnubia/widget/LetterTitleDrawable;->configDrawLetterCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 129
    .end local v1    # "defImgResId":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->getCardImageResID()I

    move-result v3

    .line 130
    .local v3, "resId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 131
    invoke-direct {p0, p1, v0, v3}, Lnubia/widget/LetterTitleDrawable;->mergeCardTag(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 133
    :cond_1
    return-void

    .line 126
    .end local v3    # "resId":I
    :cond_2
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->getDefImgResId()I

    move-result v4

    invoke-direct {p0, p1, v0, v4}, Lnubia/widget/LetterTitleDrawable;->mergeDefaultImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method private getCardImageResID()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 200
    const/4 v0, -0x1

    .line 201
    .local v0, "result":I
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->shouldDisplayMulti()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-eqz v1, :cond_0

    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-ne v2, v1, :cond_1

    .line 203
    :cond_0
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    if-nez v1, :cond_2

    const v0, 0x302007c

    .line 216
    :cond_1
    :goto_0
    return v0

    .line 203
    :cond_2
    const v0, 0x302007d

    goto :goto_0

    .line 207
    :cond_3
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-nez v1, :cond_4

    .line 208
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    if-nez v1, :cond_5

    const v0, 0x3020078

    .line 211
    :cond_4
    :goto_1
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-ne v2, v1, :cond_1

    .line 212
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    if-nez v1, :cond_6

    const v0, 0x302007a

    :goto_2
    goto :goto_0

    .line 208
    :cond_5
    const v0, 0x3020079

    goto :goto_1

    .line 212
    :cond_6
    const v0, 0x302007b

    goto :goto_2
.end method

.method private getDefImgResId()I
    .locals 3

    .prologue
    .line 233
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 234
    const v0, 0x302006c

    .line 238
    .local v0, "resId":I
    :goto_0
    return v0

    .line 236
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x302006b

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method private getDefImgResId(C)I
    .locals 3
    .param p1, "firstName"    # C

    .prologue
    .line 221
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 222
    invoke-static {p1}, Lnubia/widget/LetterTitleDrawable;->isChinese(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x302006a

    .line 228
    .local v0, "resId":I
    :goto_0
    return v0

    .line 222
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x302006c

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {p1}, Lnubia/widget/LetterTitleDrawable;->isChinese(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x3020069

    .restart local v0    # "resId":I
    :goto_1
    goto :goto_0

    .end local v0    # "resId":I
    :cond_2
    const v0, 0x302006b

    goto :goto_1
.end method

.method private static getFirstChineseCharPosition(Ljava/lang/String;)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v3, -0x1

    .line 292
    .local v3, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 293
    .local v1, "ch":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 294
    aget-char v0, v1, v2

    .line 295
    .local v0, "c":C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable;->isChinese(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    move v3, v2

    .line 300
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 293
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getLastChineseCharPosition(Ljava/lang/String;)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v3, -0x1

    .line 279
    .local v3, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 280
    .local v1, "ch":[C
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 281
    aget-char v0, v1, v2

    .line 282
    .local v0, "c":C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable;->isChinese(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    move v3, v2

    .line 287
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 280
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getShowDigitsCharAndCount()I
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "drawLetterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 170
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v2, v1

    .line 172
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 174
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 178
    :cond_1
    return v0

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 250
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method private hasIccCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lnubia/widget/LetterTitleDrawable;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initOnlyOneChar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable;->getFirstChineseCharPosition(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "lastChineseCharPos":I
    if-ltz v0, :cond_0

    .line 159
    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v3

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v3

    goto :goto_0
.end method

.method private static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 270
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 271
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isEnglishLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 304
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnglishName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x1

    .line 256
    .local v0, "bRet":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 257
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 258
    .local v2, "temp":C
    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable;->isEnglishLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 266
    .end local v2    # "temp":C
    :cond_2
    return v0
.end method

.method private mergeCardTag(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resId"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, "card":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    const/4 v0, 0x0

    .line 187
    return-void
.end method

.method private mergeDefaultImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "defaultImage":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 193
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 194
    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    :cond_0
    return-void
.end method

.method private shouldDisplayMulti()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, v1}, Lnubia/widget/LetterTitleDrawable;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lnubia/widget/LetterTitleDrawable;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 82
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lnubia/widget/LetterTitleDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    .line 85
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    return-void
.end method

.method public setCardResType(I)V
    .locals 0
    .param p1, "cardResType"    # I

    .prologue
    .line 365
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    .line 366
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 314
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 315
    return-void
.end method

.method public setContactDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    .line 353
    iput-object p2, p0, Lnubia/widget/LetterTitleDrawable;->mIdentifier:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setContactType(I)V
    .locals 0
    .param p1, "contactType"    # I

    .prologue
    .line 357
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mContactType:I

    .line 358
    return-void
.end method

.method public setIsCircular(Z)V
    .locals 0
    .param p1, "isCircle"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lnubia/widget/LetterTitleDrawable;->mIsCircle:Z

    .line 362
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 348
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    .line 349
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 330
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    .line 331
    return-void
.end method
