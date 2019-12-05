.class public Lnubia/widget/NubiaCharacterListView;
.super Landroid/view/View;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaCharacterListView$MyAdapter;,
        Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private final BOUNDS_FULL:I

.field private final BOUNDS_HALF:I

.field private final BOUNDS_MINI:I

.field private final FAVORITE_CHAR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isChinese:Z

.field private mAdapter:Lnubia/widget/NubiaCharacterListView$MyAdapter;

.field private mChoose:I

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDiplayHeightPixels:I

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavFlag:Z

.field private mFlag:Z

.field protected mFullSet:[Ljava/lang/String;

.field private mHalfSet:[Ljava/lang/String;

.field private mHander:Landroid/os/Handler;

.field protected mHasFavFullSet:[Ljava/lang/String;

.field private mHighLightCharacterList:[Ljava/lang/String;

.field private mIsInCharcterListView:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mListView:Lnubia/widget/MyListView;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMiniSet:[Ljava/lang/String;

.field private mNullSet:[Ljava/lang/String;

.field mOnTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

.field private mPaintTextSize:F

.field private mPaintTxt:Landroid/graphics/Paint;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupXLoc:I

.field private mPreHeight:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSingleLetterHeight:F

.field private mTitle:Landroid/widget/TextView;

.field private mWindow:Landroid/view/WindowManager;

.field private mXPos:F

.field private mYPos:F

.field private temp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "*"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 34
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v5

    const-string v1, "D"

    aput-object v1, v0, v6

    const-string v1, "E"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 40
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "\u2022"

    aput-object v1, v0, v4

    const-string v1, "D"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "G"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "J"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHalfSet:[Ljava/lang/String;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "D"

    aput-object v1, v0, v4

    const-string v1, "G"

    aput-object v1, v0, v5

    const-string v1, "J"

    aput-object v1, v0, v6

    const-string v1, "M"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "P"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mMiniSet:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 61
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_FULL:I

    .line 62
    const/16 v0, 0x258

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_HALF:I

    .line 63
    const/16 v0, 0xfa

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_MINI:I

    .line 64
    iput v3, p0, Lnubia/widget/NubiaCharacterListView;->mPreHeight:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 84
    iput-boolean v3, p0, Lnubia/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 99
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "*"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 34
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v5

    const-string v1, "D"

    aput-object v1, v0, v6

    const-string v1, "E"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 40
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "\u2022"

    aput-object v1, v0, v4

    const-string v1, "D"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "G"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "J"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHalfSet:[Ljava/lang/String;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "D"

    aput-object v1, v0, v4

    const-string v1, "G"

    aput-object v1, v0, v5

    const-string v1, "J"

    aput-object v1, v0, v6

    const-string v1, "M"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "P"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mMiniSet:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 61
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_FULL:I

    .line 62
    const/16 v0, 0x258

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_HALF:I

    .line 63
    const/16 v0, 0xfa

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_MINI:I

    .line 64
    iput v3, p0, Lnubia/widget/NubiaCharacterListView;->mPreHeight:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 84
    iput-boolean v3, p0, Lnubia/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 94
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const-string v0, "*"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 34
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v5

    const-string v1, "D"

    aput-object v1, v0, v6

    const-string v1, "E"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 40
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "\u2022"

    aput-object v1, v0, v4

    const-string v1, "D"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "G"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "J"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHalfSet:[Ljava/lang/String;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "D"

    aput-object v1, v0, v4

    const-string v1, "G"

    aput-object v1, v0, v5

    const-string v1, "J"

    aput-object v1, v0, v6

    const-string v1, "M"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "P"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mMiniSet:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 61
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_FULL:I

    .line 62
    const/16 v0, 0x258

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_HALF:I

    .line 63
    const/16 v0, 0xfa

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS_MINI:I

    .line 64
    iput v3, p0, Lnubia/widget/NubiaCharacterListView;->mPreHeight:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 84
    iput-boolean v3, p0, Lnubia/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 89
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/widget/NubiaCharacterListView;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lnubia/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    return v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaCharacterListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lnubia/widget/NubiaCharacterListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lnubia/widget/NubiaCharacterListView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hideFloatingView()V

    return-void
.end method

.method static synthetic access$600(Lnubia/widget/NubiaCharacterListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 32
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawFav(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawableResID"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    return-void
.end method

.method private drawFavorite(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 170
    const v0, 0x30200c7

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaCharacterListView;->drawFav(Landroid/graphics/Canvas;I)V

    .line 171
    return-void
.end method

.method private hideFloatingView()V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    return-void
.end method

.method private hidePopupWindow()V
    .locals 4

    .prologue
    .line 432
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnubia/widget/NubiaCharacterListView$1;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$1;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x3030016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "popupContent":Landroid/view/View;
    const/high16 v2, 0x30d0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 107
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 109
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 110
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x309007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    .line 113
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mDiplayHeightPixels:I

    .line 115
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "launguage":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    .line 118
    iget-boolean v2, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    .line 120
    new-instance v2, Lnubia/widget/NubiaCharacterListView$MyAdapter;

    iget-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p1, v3}, Lnubia/widget/NubiaCharacterListView$MyAdapter;-><init>(Lnubia/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mAdapter:Lnubia/widget/NubiaCharacterListView$MyAdapter;

    .line 121
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V

    .line 122
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    return-void
.end method

.method private initFloatView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x8

    .line 454
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 456
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 457
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 458
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 459
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30900a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 461
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30900a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 463
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 464
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x213

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 465
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 466
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 467
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 469
    const v0, 0x3030015

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    .line 471
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lnubia/widget/NubiaCharacterListView$2;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$2;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 483
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x30d0050

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnubia/widget/MyListView;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mListView:Lnubia/widget/MyListView;

    .line 484
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x30d004f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    .line 486
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mListView:Lnubia/widget/MyListView;

    new-instance v1, Lnubia/widget/NubiaCharacterListView$3;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$3;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Lnubia/widget/MyListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 502
    new-instance v0, Lnubia/widget/NubiaCharacterListView$4;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaCharacterListView$4;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    .line 509
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mListView:Lnubia/widget/MyListView;

    new-instance v1, Lnubia/widget/NubiaCharacterListView$5;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$5;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Lnubia/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 517
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 518
    return-void
.end method

.method private isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "highLightCharacterList"    # [Ljava/lang/String;
    .param p2, "currentCharacter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 400
    if-nez p1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v4

    .line 404
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 405
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    const/4 v4, 0x1

    goto :goto_0

    .line 404
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private show(Ljava/lang/String;)V
    .locals 6
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 371
    iget-boolean v2, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    .line 372
    .local v1, "showText":Landroid/widget/TextView;
    :goto_0
    iget-boolean v2, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30200c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 379
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_2
    return-void

    .line 371
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    goto :goto_0

    .line 372
    .restart local v1    # "showText":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30200c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 381
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private showFloatingView(Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 522
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mAdapter:Lnubia/widget/NubiaCharacterListView$MyAdapter;

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCharacterListView$MyAdapter;->setListView(Ljava/util/ArrayList;)V

    .line 523
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mListView:Lnubia/widget/MyListView;

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mAdapter:Lnubia/widget/NubiaCharacterListView$MyAdapter;

    invoke-virtual {v0, v1}, Lnubia/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 524
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->show(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 526
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private showPopupWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->show(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x800003

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x800005

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 256
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 257
    .local v4, "y":F
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 258
    .local v3, "oldChoose":I
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 260
    .local v2, "listener":Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 262
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return v7

    .line 264
    :pswitch_0
    iput-boolean v7, p0, Lnubia/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 266
    iput-boolean v7, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    .line 267
    if-eq v3, v1, :cond_2

    if-eqz v2, :cond_2

    .line 268
    if-ltz v1, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 273
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_3

    .line 274
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 280
    :goto_1
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v7, v5, :cond_2

    .line 281
    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 285
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showFloatingView(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 290
    if-ltz v1, :cond_0

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {p0, v5, v6}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 298
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_6

    .line 299
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 305
    :cond_5
    :goto_2
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    .line 306
    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 307
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 301
    :cond_6
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showFloatingView(Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :pswitch_2
    iput-boolean v8, p0, Lnubia/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 315
    iput-boolean v8, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    .line 316
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_8

    .line 317
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 321
    :goto_3
    if-eqz v2, :cond_7

    .line 322
    invoke-interface {v2, v9}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 324
    :cond_7
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 319
    :cond_8
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hideFloatingView()V

    goto :goto_3

    .line 328
    :pswitch_3
    iput-boolean v8, p0, Lnubia/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 329
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_a

    .line 330
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 335
    :goto_4
    if-eqz v2, :cond_9

    .line 336
    invoke-interface {v2, v9}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 338
    :cond_9
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 332
    :cond_a
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hideFloatingView()V

    goto :goto_4

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLetter(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v8, 0x30a0015

    .line 186
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lnubia/widget/NubiaCharacterListView;->makeLettersFitSplitScreen(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget v5, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    iget-boolean v4, p0, Lnubia/widget/NubiaCharacterListView;->mFavFlag:Z

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    iput-object v4, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 194
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v4

    iput v4, p0, Lnubia/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 196
    iget-boolean v4, p0, Lnubia/widget/NubiaCharacterListView;->mFavFlag:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 197
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawFavorite(Landroid/graphics/Canvas;)V

    .line 195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 202
    .local v2, "releaseTextColor":I
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lnubia/widget/NubiaCharacterListView;->mXPos:F

    .line 204
    iget v4, p0, Lnubia/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    add-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lnubia/widget/NubiaCharacterListView;->mYPos:F

    .line 205
    iget-boolean v4, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {p0, v5, v6}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 208
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 210
    .local v0, "highlightTextColor":I
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    .end local v0    # "highlightTextColor":I
    :cond_4
    iget v4, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    if-ne v1, v4, :cond_5

    .line 213
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 215
    .local v3, "selectedTextColor":I
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    .end local v3    # "selectedTextColor":I
    :cond_5
    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget v5, p0, Lnubia/widget/NubiaCharacterListView;->mXPos:F

    iget v6, p0, Lnubia/widget/NubiaCharacterListView;->mYPos:F

    iget-object v7, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getFavoriteLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "*"

    return-object v0
.end method

.method public getSingleHeight()F
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public hideCharList()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 537
    :cond_0
    return-void
.end method

.method protected makeLettersFitSplitScreen(I)Z
    .locals 7
    .param p1, "currentHeight"    # I

    .prologue
    const v6, 0x309007d

    const/16 v5, 0xfa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mDiplayHeightPixels:I

    if-gt p1, v3, :cond_0

    if-ge p1, v5, :cond_2

    :cond_0
    move v1, v2

    .line 159
    :cond_1
    :goto_0
    return v1

    .line 134
    :cond_2
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mPreHeight:I

    if-eq v3, p1, :cond_1

    .line 138
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    if-ltz v3, :cond_4

    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    iget-object v4, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 139
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v0, v2, v3

    .line 143
    .local v0, "preString":Ljava/lang/String;
    :goto_1
    const/16 v2, 0x32a

    if-lt p1, v2, :cond_5

    .line 144
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTextSize:F

    .line 156
    :cond_3
    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 157
    invoke-virtual {p0, v0}, Lnubia/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    .line 158
    iput p1, p0, Lnubia/widget/NubiaCharacterListView;->mPreHeight:I

    goto :goto_0

    .line 141
    .end local v0    # "preString":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v3, v2

    .restart local v0    # "preString":Ljava/lang/String;
    goto :goto_1

    .line 147
    :cond_5
    const/16 v2, 0x258

    if-lt p1, v2, :cond_6

    .line 148
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mHalfSet:[Ljava/lang/String;

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTextSize:F

    goto :goto_2

    .line 151
    :cond_6
    if-lt p1, v5, :cond_3

    .line 152
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mMiniSet:[Ljava/lang/String;

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x309007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTextSize:F

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 423
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 427
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 429
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawLetter(Landroid/graphics/Canvas;)V

    .line 246
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 234
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 237
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    :cond_1
    return-void
.end method

.method public setCurrentLetter(Ljava/lang/String;)V
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 348
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 354
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    :cond_3
    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 364
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 360
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setFavFlag()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 175
    return-void
.end method

.method public setHighLightCharacterList([Ljava/lang/String;)V
    .locals 0
    .param p1, "characterList"    # [Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setLableNamesMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    .line 128
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .prologue
    .line 446
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 447
    return-void
.end method
