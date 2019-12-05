.class Lnubia/widget/LetterTitleDrawable$LetterTile;
.super Ljava/lang/Object;
.source "LetterTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/LetterTitleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTile"
.end annotation


# instance fields
.field private mDefaultColor:I

.field private mLetterToTileRatio:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mShowChar:[C

.field private mTileFontColor:I


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C

    .line 40
    iput v1, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mDefaultColor:I

    .line 41
    iput v1, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mTileFontColor:I

    .line 42
    const v0, 0x3090081

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mLetterToTileRatio:F

    .line 44
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lnubia/widget/LetterTitleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Lnubia/widget/LetterTitleDrawable$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnubia/widget/LetterTitleDrawable$LetterTile;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C

    return-object v0
.end method
