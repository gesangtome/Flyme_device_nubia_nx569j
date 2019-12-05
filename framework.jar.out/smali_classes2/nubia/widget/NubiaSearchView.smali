.class public Lnubia/widget/NubiaSearchView;
.super Landroid/widget/LinearLayout;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaSearchView$OnCloseListener;,
        Lnubia/widget/NubiaSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NubiaSearchView"

.field public static final MAX:I = 0x63


# instance fields
.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private final mQueryTextView:Landroid/widget/EditText;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/widget/ImageView;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private final mSubmitButton:Landroid/widget/ImageView;

.field private mSubmitButtonEnabled:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTotalTextView:Landroid/widget/TextView;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 146
    const v0, 0x301000b

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    new-instance v8, Lnubia/widget/NubiaSearchView$1;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$1;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v8, Lnubia/widget/NubiaSearchView$2;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$2;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 588
    new-instance v8, Lnubia/widget/NubiaSearchView$4;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$4;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 601
    new-instance v8, Lnubia/widget/NubiaSearchView$5;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$5;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 769
    new-instance v8, Lnubia/widget/NubiaSearchView$6;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaSearchView$6;-><init>(Lnubia/widget/NubiaSearchView;)V

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 156
    sget-object v8, Lcn/nubia/internal/R$styleable;->NubiaSearchView:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 160
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    const v9, 0x303002d

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 162
    .local v5, "layoutResId":I
    const/4 v8, 0x1

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 164
    const v8, 0x30d0074

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    .line 166
    const v8, 0x30d0071

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    .line 167
    const v8, 0x30d0073

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchPlate:Landroid/view/View;

    .line 168
    const v8, 0x30d0077

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    .line 169
    const v8, 0x30d0070

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 170
    const v8, 0x30d0078

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    .line 171
    const v8, 0x30d0076

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 172
    const v8, 0x30d0072

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 174
    const v8, 0x30d0075

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    .line 177
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lnubia/widget/NubiaSearchView;->mSearchIconResId:I

    .line 183
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget v9, p0, Lnubia/widget/NubiaSearchView;->mSearchIconResId:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lnubia/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 199
    iget-object v8, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    new-instance v9, Lnubia/widget/NubiaSearchView$3;

    invoke-direct {v9, p0}, Lnubia/widget/NubiaSearchView$3;-><init>(Lnubia/widget/NubiaSearchView;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 211
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 213
    .local v6, "maxWidth":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 214
    invoke-virtual {p0, v6}, Lnubia/widget/NubiaSearchView;->setMaxWidth(I)V

    .line 217
    :cond_0
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 219
    .local v7, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 220
    invoke-virtual {p0, v7}, Lnubia/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 223
    :cond_1
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 225
    .local v2, "imeOptions":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 226
    invoke-virtual {p0, v2}, Lnubia/widget/NubiaSearchView;->setImeOptions(I)V

    .line 229
    :cond_2
    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 231
    .local v4, "inputType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 232
    invoke-virtual {p0, v4}, Lnubia/widget/NubiaSearchView;->setInputType(I)V

    .line 235
    :cond_3
    const/4 v1, 0x1

    .line 236
    .local v1, "focusable":Z
    const/16 v8, 0xb

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 238
    invoke-virtual {p0, v1}, Lnubia/widget/NubiaSearchView;->setFocusable(Z)V

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    iget-boolean v8, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v8}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 243
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateQueryHint()V

    .line 244
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$400(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$600(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lnubia/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;

    .prologue
    .line 51
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Lnubia/widget/NubiaSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lnubia/widget/NubiaSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 669
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 670
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    iget-boolean v1, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

    invoke-interface {v1}, Lnubia/widget/NubiaSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->clearFocus()V

    .line 677
    invoke-direct {p0, v3}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 681
    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 683
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 684
    invoke-direct {p0, v3}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 690
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 691
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 692
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 695
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 3

    .prologue
    .line 613
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 614
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 615
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnubia/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 618
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 621
    :cond_1
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    .line 632
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 633
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lnubia/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 635
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateQueryTextAppearence(Z)V

    .line 636
    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateSubmitButton(Z)V

    .line 637
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateCloseButton()V

    .line 638
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateSubmitArea()V

    .line 639
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnubia/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 643
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnubia/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 644
    return-void

    .line 634
    .end local v0    # "hasText":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 575
    if-eqz p1, :cond_1

    .line 576
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 582
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 756
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 760
    return-void

    .line 758
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 551
    .local v0, "hasText":Z
    :goto_0
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    if-nez v0, :cond_0

    .line 553
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 555
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_3

    sget-object v1, Lnubia/widget/NubiaSearchView;->ENABLED_STATE_SET:[I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 557
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v1

    .line 548
    goto :goto_0

    .line 551
    .restart local v0    # "hasText":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 555
    :cond_3
    sget-object v1, Lnubia/widget/NubiaSearchView;->EMPTY_STATE_SET:[I

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 2

    .prologue
    .line 564
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    .line 565
    .local v0, "focused":Z
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->invalidate()V

    .line 566
    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateQueryTextAppearence(Z)V
    .locals 3
    .param p1, "hasText"    # Z

    .prologue
    .line 785
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 786
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 540
    const/16 v0, 0x8

    .line 541
    .local v0, "visibility":I
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 545
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 531
    const/16 v0, 0x8

    .line 532
    .local v0, "visibility":I
    iget-boolean v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 536
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    return-void
.end method

.method private updateTotalTextView(I)V
    .locals 7
    .param p1, "total"    # I

    .prologue
    const v6, 0x30c002f

    const/16 v4, 0x63

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 654
    if-le p1, v4, :cond_2

    .line 655
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    :cond_0
    :goto_0
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    :cond_1
    return-void

    .line 658
    :cond_2
    if-ltz p1, :cond_0

    .line 659
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewsVisibility(Z)V
    .locals 5
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 513
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mIconified:Z

    .line 515
    if-eqz p1, :cond_0

    move v1, v2

    .line 517
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v4, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 519
    .local v0, "hasText":Z
    :goto_1
    iget-object v4, p0, Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateSubmitButton(Z)V

    .line 521
    iget-object v4, p0, Lnubia/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 522
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateCloseButton()V

    .line 523
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateSubmitArea()V

    .line 524
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    .line 515
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    .line 517
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v3, v2

    .line 521
    goto :goto_2
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mClearingFocus:Z

    .line 299
    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 300
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 301
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 302
    iput-boolean v1, p0, Lnubia/widget/NubiaSearchView;->mClearingFocus:Z

    .line 303
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 375
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lnubia/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 718
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->clearFocus()V

    .line 719
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 720
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lnubia/widget/NubiaSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 721
    iput-boolean v2, p0, Lnubia/widget/NubiaSearchView;->mExpandedInActionView:Z

    .line 722
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 729
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mExpandedInActionView:Z

    .line 733
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaSearchView;->mCollapsedImeOptions:I

    .line 734
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lnubia/widget/NubiaSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 736
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 571
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 572
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 742
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 743
    const-class v0, Lnubia/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 744
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 748
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 749
    const-class v0, Lnubia/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 750
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 472
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 505
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 478
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 480
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 502
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 503
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 484
    :sswitch_0
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 485
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 487
    :cond_2
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 489
    goto :goto_1

    .line 493
    :sswitch_1
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 494
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 499
    :sswitch_2
    iget v2, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 480
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 702
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->postUpdateFocusedState()V

    .line 703
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 709
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->postUpdateFocusedState()V

    .line 710
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-boolean v2, p0, Lnubia/widget/NubiaSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 285
    iget-object v2, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 287
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, v1}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 292
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onCloseClicked()V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 386
    iget-boolean v0, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mIconifiedByDefault:Z

    .line 389
    invoke-direct {p0, p1}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 390
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 251
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 265
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 457
    iput p1, p0, Lnubia/widget/NubiaSearchView;->mMaxWidth:I

    .line 458
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->requestLayout()V

    .line 459
    return-void
.end method

.method public setOnCloseListener(Lnubia/widget/NubiaSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/widget/NubiaSearchView$OnCloseListener;

    .prologue
    .line 316
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnCloseListener:Lnubia/widget/NubiaSearchView$OnCloseListener;

    .line 317
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 323
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 324
    return-void
.end method

.method public setOnQueryTextListener(Lnubia/widget/NubiaSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    .prologue
    .line 309
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnQueryChangeListener:Lnubia/widget/NubiaSearchView$OnQueryTextListener;

    .line 310
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 333
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 334
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lnubia/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 351
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 354
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->onSubmitQuery()V

    .line 357
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 364
    iput-object p1, p0, Lnubia/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 365
    invoke-direct {p0}, Lnubia/widget/NubiaSearchView;->updateQueryHint()V

    .line 366
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mQueryRefinement:Z

    .line 443
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lnubia/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    .line 425
    invoke-virtual {p0}, Lnubia/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 426
    return-void
.end method

.method public setTotalTextHint(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lnubia/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 651
    return-void
.end method
