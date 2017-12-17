.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
<<<<<<< VENDOR #Conflict 0
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
=======
        Lcom/android/internal/app/AlertController$FlymeInjector;,
        Lcom/android/internal/app/AlertController$ButtonHandler;,
>>>>>>> BOSP #Conflict 0
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field public mAlertExt:Lcom/android/internal/app/AlertControllerExt;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mBackAnimView:Landroid/view/View;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mNubiaDialog:Lnubia/widget/IDialog;

.field private mNubiaLeftButtonBgID:I

.field private mNubiaMiddleButtonBgID:I

.field private mNubiaRightButtonBgID:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslatePadding:F

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 110
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 131
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 141
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 198
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 200
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 201
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 203
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, #android:attr@alertDialogStyle#t

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, #android:layout@alert_dialog#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 208
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 210
    const/16 v1, 0xc

    const v2, #android:layout@select_dialog#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 213
    const/16 v1, 0xd

    const v2, #android:layout@select_dialog_multichoice#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 216
    const/16 v1, 0xe

    const v2, #android:layout@select_dialog_singlechoice#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 219
    const/16 v1, 0xf

    const v2, #android:layout@select_dialog_item#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 223
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnubia/widget/NubiaDialog;

    invoke-direct {v1, p1}, Lnubia/widget/NubiaDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 225
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v1}, Lnubia/widget/IDialog;->resetAlertDialogLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 227
    const v1, 0x30200cf

    const v2, 0x30200d9

    const v3, 0x30200e3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setNubiaButtonBackground(III)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p0 .. p3}, Lcom/android/internal/app/AlertController$FlymeInjector;->initFlymeExtFields(Lcom/android/internal/app/AlertController;Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-void

    :cond_1
    new-instance v1, Lnubia/widget/ProtoDialog;

    invoke-direct {v1, p1}, Lnubia/widget/ProtoDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    :goto_0
    return v2

    .line 241
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 242
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 245
    check-cast v1, Landroid/view/ViewGroup;

    .line 246
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 247
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 248
    add-int/lit8 v0, v0, -0x1

    .line 249
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 250
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 255
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 885
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 887
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 888
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@leftSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@rightSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 894
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 895
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 897
    :cond_1
    return-void
.end method

.method private hideNubiaContentTitleDivider()V
    .locals 3

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x30d0030

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1418
    .local v0, "nubiaDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1419
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    :cond_0
    return-void
.end method

.method private isNubiaCenterDialog()Z
    .locals 2

    .prologue
    .line 1362
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    const v1, 0x303000d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 811
    if-eqz p1, :cond_0

    .line 812
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 814
    :cond_0
    if-eqz p2, :cond_1

    .line 815
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 812
    goto :goto_0

    :cond_3
    move v1, v2

    .line 815
    goto :goto_1
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaRightButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1456
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaLeftButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1457
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaMiddleButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaRightButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaLeftButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 491
    if-nez p1, :cond_1

    .line 493
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 494
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 497
    check-cast v1, Landroid/view/ViewGroup;

    .line 513
    :goto_0
    return-object v1

    .line 501
    :cond_1
    if-eqz p2, :cond_2

    .line 502
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 503
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 504
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 510
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    move-object v1, p1

    .line 513
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 269
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 275
    :goto_0
    return v0

    .line 271
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 272
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 275
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 25
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 901
    const/4 v11, 0x0

    .line 902
    .local v11, "fullDark":I
    const/16 v20, 0x0

    .line 903
    .local v20, "topDark":I
    const/4 v8, 0x0

    .line 904
    .local v8, "centerDark":I
    const/4 v5, 0x0

    .line 905
    .local v5, "bottomDark":I
    const/4 v10, 0x0

    .line 906
    .local v10, "fullBright":I
    const/16 v19, 0x0

    .line 907
    .local v19, "topBright":I
    const/4 v7, 0x0

    .line 908
    .local v7, "centerBright":I
    const/4 v4, 0x0

    .line 909
    .local v4, "bottomBright":I
    const/4 v6, 0x0

    .line 913
    .local v6, "bottomMedium":I
    const/16 v23, 0x12

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .local v16, "needsDefaultBackgrounds":Z
    if-eqz v16, :cond_0

    const v11, #android:drawable@popup_full_dark#t

    const v20, #android:drawable@popup_top_dark#t

    const v8, #android:drawable@popup_center_dark#t

    const v5, #android:drawable@popup_bottom_dark#t

    const v10, #android:drawable@popup_full_bright#t

    const v19, #android:drawable@popup_top_bright#t

    const v7, #android:drawable@popup_center_bright#t

    const v4, #android:drawable@popup_bottom_bright#t

    const v6, #android:drawable@popup_bottom_medium#t

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v19

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v20

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v7}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v7

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v8}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v8

    .line 957
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v22, v0

    .line 958
    .local v22, "views":[Landroid/view/View;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v14, v0, [Z

    .line 959
    .local v14, "light":[Z
    const/4 v13, 0x0

    .line 960
    .local v13, "lastView":Landroid/view/View;
    const/4 v12, 0x0

    .line 962
    .local v12, "lastLight":Z
    const/16 v17, 0x0

    .line 963
    .local v17, "pos":I
    if-eqz p6, :cond_1

    .line 964
    aput-object p2, v22, v17

    .line 965
    const/16 v23, 0x0

    aput-boolean v23, v14, v17

    .line 966
    add-int/lit8 v17, v17, 0x1

    .line 974
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v22, v17

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    :goto_0
    aput-boolean v23, v14, v17

    .line 976
    add-int/lit8 v17, v17, 0x1

    .line 978
    if-eqz p7, :cond_3

    .line 979
    aput-object p4, v22, v17

    .line 980
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v23, v0

    aput-boolean v23, v14, v17

    .line 981
    add-int/lit8 v17, v17, 0x1

    .line 984
    :cond_3
    if-eqz p8, :cond_4

    .line 985
    aput-object p5, v22, v17

    .line 986
    const/16 v23, 0x1

    aput-boolean v23, v14, v17

    .line 989
    :cond_4
    const/16 v18, 0x0

    .line 990
    .local v18, "setView":Z
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 991
    aget-object v21, v22, v17

    .line 992
    .local v21, "v":Landroid/view/View;
    if-nez v21, :cond_6

    .line 990
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 975
    .end local v18    # "setView":Z
    .end local v21    # "v":Landroid/view/View;
    :cond_5
    const/16 v23, 0x0

    goto :goto_0

    .line 996
    .restart local v18    # "setView":Z
    .restart local v21    # "v":Landroid/view/View;
    :cond_6
    if-eqz v13, :cond_7

    .line 997
    if-nez v18, :cond_9

    .line 998
    if-eqz v12, :cond_8

    move/from16 v23, v19

    :goto_3
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1002
    :goto_4
    const/16 v18, 0x1

    .line 1005
    :cond_7
    move-object/from16 v13, v21

    .line 1006
    aget-boolean v12, v14, v17

    goto :goto_2

    :cond_8
    move/from16 v23, v20

    .line 998
    goto :goto_3

    .line 1000
    :cond_9
    if-eqz v12, :cond_a

    move/from16 v23, v7

    :goto_5
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v23, v8

    goto :goto_5

    .line 1009
    .end local v21    # "v":Landroid/view/View;
    :cond_b
    if-eqz v13, :cond_c

    .line 1010
    if-eqz v18, :cond_10

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v4}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v4

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v6}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v6

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v5}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v5

    .line 1035
    if-eqz v12, :cond_f

    if-eqz p8, :cond_e

    move/from16 v23, v6

    :goto_6
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1057
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1058
    .local v15, "listView":Landroid/widget/ListView;
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1060
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1061
    .local v9, "checkedItem":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v9, v0, :cond_d

    .line 1062
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v9, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1063
    invoke-virtual {v15, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 1066
    .end local v9    # "checkedItem":I
    :cond_d
    return-void

    .end local v15    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v23, v4

    .line 1035
    goto :goto_6

    :cond_f
    move/from16 v23, v5

    goto :goto_6

    .line 1048
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v10}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v10

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v11}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v11

    .line 1053
    if-eqz v12, :cond_11

    move/from16 v23, v10

    :goto_8
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v23, v11

    goto :goto_8
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 820
    const/4 v2, 0x1

    .line 821
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 822
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 823
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v4, 0x0

    .line 824
    .local v4, "whichButtons":I
    const v5, #android:id@button1#t

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 825
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 828
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 835
    :goto_0
    const v5, #android:id@button2#t

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 836
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 839
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 847
    :goto_1
    const v5, #android:id@button3#t

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 848
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 851
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 859
    :goto_2
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v5}, Lnubia/widget/IDialog;->isResetDialogButtonStyle()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->resetDialogButtonStyle()V

    .line 864
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 869
    if-ne v4, v2, :cond_7

    .line 870
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 878
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 879
    .local v3, "hasButtons":Z
    :cond_2
    if-nez v3, :cond_3

    .line 880
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 882
    :cond_3
    return-void

    .line 830
    .end local v3    # "hasButtons":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 832
    or-int/2addr v4, v2

    goto :goto_0

    .line 841
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 844
    or-int/2addr v4, v0

    goto :goto_1

    .line 853
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 856
    or-int/2addr v4, v1

    goto :goto_2

    .line 871
    :cond_7
    if-ne v4, v0, :cond_8

    .line 872
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 873
    :cond_8
    if-ne v4, v1, :cond_1

    .line 874
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 769
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v2}, Lnubia/widget/IDialog;->getScrollViewId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 772
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 780
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v2}, Lnubia/widget/IDialog;->getMessageId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 784
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 808
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 791
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 794
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 795
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 796
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 797
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 798
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 801
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->showNubiaCenterTitleDivider()V

    goto :goto_0

    .line 805
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 641
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 642
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 650
    .local v1, "customView":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 651
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 652
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 656
    :cond_2
    if-eqz v2, :cond_7

    .line 663
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v5}, Lnubia/widget/IDialog;->getCustomId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 666
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_3

    .line 669
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 673
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 674
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 679
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    return-void

    .line 643
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "hasCustomView":Z
    :cond_5
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_6

    .line 644
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 645
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 646
    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 647
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 677
    .restart local v2    # "hasCustomView":Z
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, #android:id@parentPanel#t

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 463
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 475
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 478
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 682
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 684
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 687
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getTitleTemplateId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 699
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 759
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@icon#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 703
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 704
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 712
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getAlertTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 716
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 722
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 735
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->adjustCenterDialogTitle()V

    goto :goto_0

    .line 723
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 724
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 728
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 732
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 746
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getTitleTemplateId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 749
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->adjustCenterDialogContent()V

    .line 755
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->hideNubiaContentTitleDivider()V

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 28

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lnubia/widget/IDialog;->getParentPanelId()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 531
    .local v22, "parentPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getTopPanelId()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 533
    .local v19, "defaultTopPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getContentPanelId()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 535
    .local v18, "defaultContentPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getButtonPanelId()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 548
    .local v17, "defaultButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getCustomPanelId()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 551
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getTopPanelId()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 565
    .local v16, "customTopPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getContentPanelId()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 567
    .local v15, "customContentPanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->getButtonPanelId()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 572
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 573
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 574
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 576
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 577
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 578
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 580
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/4 v11, 0x1

    .line 582
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_7

    const/4 v10, 0x1

    .line 584
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_8

    const/4 v12, 0x1

    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    if-eqz v7, :cond_0

    const v4, #android:id@textSpacerNoButtons#t

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .end local v23    # "spacer":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->hideNubiaButtonBackground()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 602
    :cond_1
    if-eqz v10, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_2

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 610
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_3

    if-eqz v11, :cond_9

    .line 611
    :cond_3
    const v4, #android:id@titleDivider#t

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 616
    .local v20, "divider":Landroid/view/View;
    :goto_3
    if-eqz v20, :cond_4

    .line 617
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 622
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v11, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 624
    .local v13, "content":Landroid/view/View;
    :goto_4
    if-eqz v13, :cond_5

    .line 625
    if-eqz v10, :cond_b

    const/4 v4, 0x1

    move/from16 v24, v4

    :goto_5
    if-eqz v12, :cond_c

    const/4 v4, 0x2

    :goto_6
    or-int v21, v24, v4

    .line 627
    .local v21, "indicators":I
    const/4 v4, 0x3

    move/from16 v0, v21

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 632
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/16 v24, 0x0

    sget-object v25, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v26, #android:attr@alertDialogStyle#t

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/AlertController$FlymeInjector;->syncViewAndData(Lcom/android/internal/app/AlertController;)V

    return-void

    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 582
    .restart local v11    # "hasCustomPanel":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 584
    .restart local v10    # "hasTopPanel":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 613
    .restart local v12    # "hasButtonPanel":Z
    :cond_9
    const v4, #android:id@titleDividerTop#t

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "divider":Landroid/view/View;
    goto :goto_3

    .line 623
    .end local v20    # "divider":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_4

    .line 625
    .restart local v13    # "content":Landroid/view/View;
    :cond_b
    const/4 v4, 0x0

    move/from16 v24, v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 192
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 193
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, #android:^attr-private@alertDialogCenterButtons#t

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 194
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showNubiaCenterTitleDivider()V
    .locals 3

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x30d0039

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1410
    .local v0, "nubiaDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustCenterDialogContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1366
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->isNubiaCenterDialog()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1370
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x30d0031

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1373
    .local v0, "contentPanel":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1376
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1378
    .local v2, "verMragin":I
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1379
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected adjustCenterDialogTitle()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1384
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->isNubiaCenterDialog()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x30d002d

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1389
    .local v3, "nubia_topPanel":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x30d0031

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1391
    .local v0, "contentPanel":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x30d0034

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1393
    .local v1, "customPanel":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v5, v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v5, v8, :cond_0

    if-eqz v3, :cond_0

    .line 1396
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1399
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3090053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1401
    .local v4, "verMragin":I
    invoke-virtual {v2, v7, v4, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1402
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_0

    .line 445
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 423
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 424
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 425
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected hideNubiaButtonBackground()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1425
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x30d0037

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1427
    .local v1, "nubiaButtonPanel":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x30d0036

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1429
    .local v0, "nubiaBoldDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    :cond_0
    if-eqz v1, :cond_1

    .line 1433
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    :cond_1
    return-void
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 261
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 262
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 265
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetNubiaAlertDialogLayout()V
    .locals 1

    .prologue
    .line 1438
    const v0, 0x303000c

    iput v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 1439
    const v0, 0x303002e

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 1440
    const v0, 0x3030030

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1441
    const v0, 0x3030031

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1442
    const v0, 0x303002f

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 1443
    return-void
.end method

.method public setAlertDialogLayout(I)V
    .locals 0
    .param p1, "layoutRes"    # I

    .prologue
    .line 1358
    iput p1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 1359
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 353
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 357
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 361
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 377
    :goto_0
    return-void

    .line 365
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 366
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 370
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 371
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 336
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 290
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 387
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 389
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 390
    if-eqz p1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 407
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 408
    if-eqz p1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 430
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    return-void
.end method

.method protected setNubiaButtonBackground(III)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "mid"    # I
    .param p3, "right"    # I

    .prologue
    .line 1446
    iput p1, p0, Lcom/android/internal/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1447
    iput p2, p0, Lcom/android/internal/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1448
    iput p3, p0, Lcom/android/internal/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1449
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 304
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 306
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 312
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 313
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 314
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 315
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 325
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 326
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 327
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 328
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 329
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    return-object v0
.end method
