.class public Lnubia/widget/NubiaCapsuleButton;
.super Landroid/widget/LinearLayout;
.source "NubiaCapsuleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    }
.end annotation


# static fields
.field public static final LEFT_BUTTON:I = 0x1

.field private static final MAX_CAPSULE_NUMS:I = 0x4

.field public static final MID1_BUTTON:I = 0x2

.field public static final MID2_BUTTON:I = 0x3

.field private static final MIN_CAPSULE_NUMS:I = 0x2

.field public static final RIGHT_BUTTON:I = 0x4


# instance fields
.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundMid1:Landroid/graphics/drawable/Drawable;

.field private mBackgroundMid2:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mCapsuleNums:I

.field private mItems:[Ljava/lang/String;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mMid1Button:Landroid/widget/Button;

.field private mMid1ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mMid2Button:Landroid/widget/Button;

.field private mMid2ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mNormalTextColor:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private mRightButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mSelectedTextColor:I

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaCapsuleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const v0, 0x301004e

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaCapsuleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaCapsuleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    iput v3, p0, Lnubia/widget/NubiaCapsuleButton;->mCapsuleNums:I

    .line 158
    new-instance v1, Lnubia/widget/NubiaCapsuleButton$1;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCapsuleButton$1;-><init>(Lnubia/widget/NubiaCapsuleButton;)V

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 71
    sget-object v1, Lcn/nubia/internal/R$styleable;->CapsuleButton:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundMid1:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundMid2:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 83
    const/high16 v1, 0x30a0000

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnubia/widget/NubiaCapsuleButton;->mSelectedTextColor:I

    .line 87
    const v1, 0x30a0002

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lnubia/widget/NubiaCapsuleButton;->mNormalTextColor:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    aput v5, v3, v5

    aput-object v3, v2, v6

    new-array v3, v7, [I

    iget v4, p0, Lnubia/widget/NubiaCapsuleButton;->mSelectedTextColor:I

    aput v4, v3, v5

    iget v4, p0, Lnubia/widget/NubiaCapsuleButton;->mNormalTextColor:I

    aput v4, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    .line 96
    invoke-direct {p0}, Lnubia/widget/NubiaCapsuleButton;->initView()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaCapsuleButton;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    invoke-direct {p0}, Lnubia/widget/NubiaCapsuleButton;->clearSelected()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCapsuleButton;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method private clearSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 180
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 182
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 183
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-virtual {p0}, Lnubia/widget/NubiaCapsuleButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x303000e

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "buttonContent":Landroid/view/View;
    const v1, 0x30d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    .line 103
    const v1, 0x30d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    .line 104
    const v1, 0x30d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    .line 105
    const v1, 0x30d003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lnubia/widget/NubiaCapsuleButton;->setInitTextColor()V

    .line 113
    invoke-direct {p0}, Lnubia/widget/NubiaCapsuleButton;->setInitBackground()V

    .line 115
    invoke-direct {p0}, Lnubia/widget/NubiaCapsuleButton;->clearSelected()V

    .line 116
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 117
    return-void
.end method

.method private setInitBackground()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundMid1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundMid1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundMid2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_0
    return-void
.end method

.method private setInitTextColor()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 220
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public setCapsuleNums(I)V
    .locals 2
    .param p1, "nums"    # I

    .prologue
    const/16 v1, 0x8

    .line 120
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 121
    iput p1, p0, Lnubia/widget/NubiaCapsuleButton;->mCapsuleNums:I

    .line 122
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInitSelected(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-direct {p0}, Lnubia/widget/NubiaCapsuleButton;->clearSelected()V

    .line 187
    iget v0, p0, Lnubia/widget/NubiaCapsuleButton;->mCapsuleNums:I

    if-gt p1, v0, :cond_0

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 193
    :pswitch_1
    const/4 v0, 0x2

    iget v1, p0, Lnubia/widget/NubiaCapsuleButton;->mCapsuleNums:I

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 201
    :pswitch_2
    const/4 v0, 0x3

    iget v1, p0, Lnubia/widget/NubiaCapsuleButton;->mCapsuleNums:I

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setItemTitles(I)V
    .locals 1
    .param p1, "itemsId"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lnubia/widget/NubiaCapsuleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaCapsuleButton;->setItemTitles([Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setItemTitles([Ljava/lang/String;)V
    .locals 6
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 144
    iput-object p1, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    array-length v0, v1

    .line 146
    .local v0, "length":I
    if-le v0, v4, :cond_0

    .line 147
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    if-le v0, v5, :cond_1

    .line 151
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 154
    iget-object v1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v2, p0, Lnubia/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    return-void
.end method

.method public setOnClickListener(Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .prologue
    .line 132
    iput-object p1, p0, Lnubia/widget/NubiaCapsuleButton;->mLeftButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 133
    iput-object p1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid1ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 134
    iput-object p1, p0, Lnubia/widget/NubiaCapsuleButton;->mMid2ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 135
    iput-object p1, p0, Lnubia/widget/NubiaCapsuleButton;->mRightButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 136
    return-void
.end method
