.class public abstract Lnubia/widget/NubiaDialogActivity;
.super Landroid/app/Activity;
.source "NubiaDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaDialogActivity$ScreenInfo;,
        Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mLandThemeId:I

.field private mListener:Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;

.field private mOk:Landroid/widget/TextView;

.field private mPortThemeId:I

.field private mScreenInfo:Lnubia/widget/NubiaDialogActivity$ScreenInfo;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const v0, 0x30e0063

    iput v0, p0, Lnubia/widget/NubiaDialogActivity;->mLandThemeId:I

    .line 27
    const v0, 0x30e0062

    iput v0, p0, Lnubia/widget/NubiaDialogActivity;->mPortThemeId:I

    .line 237
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaDialogActivity;)Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaDialogActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mListener:Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 217
    const v3, 0x30d0046

    invoke-virtual {p0, v3}, Lnubia/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 219
    .local v1, "panel":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 221
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lnubia/widget/NubiaDialogActivity;->mScreenInfo:Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    # invokes: Lnubia/widget/NubiaDialogActivity$ScreenInfo;->isLandscape()Z
    invoke-static {v3}, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->access$100(Lnubia/widget/NubiaDialogActivity$ScreenInfo;)Z

    move-result v0

    .line 226
    .local v0, "bIsLandscape":Z
    if-eqz v2, :cond_2

    .line 227
    if-eqz v0, :cond_3

    iget-object v3, p0, Lnubia/widget/NubiaDialogActivity;->mScreenInfo:Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    # invokes: Lnubia/widget/NubiaDialogActivity$ScreenInfo;->getScreenWidth()I
    invoke-static {v3}, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->access$200(Lnubia/widget/NubiaDialogActivity$ScreenInfo;)I

    move-result v3

    iget v5, p0, Lnubia/widget/NubiaDialogActivity;->mStatusBarHeight:I

    sub-int/2addr v3, v5

    :goto_0
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 229
    if-eqz v0, :cond_1

    iget-object v3, p0, Lnubia/widget/NubiaDialogActivity;->mScreenInfo:Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    # invokes: Lnubia/widget/NubiaDialogActivity$ScreenInfo;->getScreenWidth()I
    invoke-static {v3}, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->access$200(Lnubia/widget/NubiaDialogActivity$ScreenInfo;)I

    move-result v4

    :cond_1
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 233
    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 234
    return-void

    :cond_3
    move v3, v4

    .line 227
    goto :goto_0
.end method

.method private initDialogView()V
    .locals 2

    .prologue
    .line 137
    const v0, 0x3030012

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    const v0, 0x30d004a

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    .line 139
    const v0, 0x30d0047

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mCancel:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lnubia/widget/NubiaDialogActivity$2;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaDialogActivity$2;-><init>(Lnubia/widget/NubiaDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x30d0048

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    new-instance v1, Lnubia/widget/NubiaDialogActivity$3;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaDialogActivity$3;-><init>(Lnubia/widget/NubiaDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private prepareContentChange()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p0}, Lnubia/widget/NubiaDialogActivity;->resetScreenInfo(Landroid/content/Context;)V

    .line 96
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity;->adjustLayout()V

    .line 97
    return-void
.end method

.method private resetScreenInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    new-instance v0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    invoke-direct {v0, p0, p1}, Lnubia/widget/NubiaDialogActivity$ScreenInfo;-><init>(Lnubia/widget/NubiaDialogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mScreenInfo:Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    .line 273
    return-void
.end method

.method private setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "layoutResID"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 163
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 168
    invoke-virtual {p0}, Lnubia/widget/NubiaDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    if-eqz p3, :cond_2

    .line 174
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setDialogActivityTheme()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lnubia/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 87
    .local v0, "isLand":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 88
    iget v1, p0, Lnubia/widget/NubiaDialogActivity;->mLandThemeId:I

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaDialogActivity;->setTheme(I)V

    .line 92
    :goto_1
    return-void

    .line 85
    .end local v0    # "isLand":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    .restart local v0    # "isLand":Z
    :cond_1
    iget v1, p0, Lnubia/widget/NubiaDialogActivity;->mPortThemeId:I

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaDialogActivity;->setTheme(I)V

    goto :goto_1
.end method

.method private setStatusBarHeight()V
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p0}, Lnubia/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "statusResId":I
    if-lez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lnubia/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/NubiaDialogActivity;->mStatusBarHeight:I

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 134
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 199
    const v0, 0x3040008

    const v1, 0x3040009

    invoke-super {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 202
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity;->setDialogActivityTheme()V

    .line 71
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity;->initDialogView()V

    .line 72
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity;->setStatusBarHeight()V

    .line 73
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity;->prepareContentChange()V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v0}, Lnubia/widget/NubiaDialogActivity;->setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnubia/widget/NubiaDialogActivity;->setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lnubia/widget/NubiaDialogActivity;->setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method public setNegativeButtonEnabled(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isDisabled"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 53
    const v0, 0x30d0048

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    new-instance v1, Lnubia/widget/NubiaDialogActivity$1;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaDialogActivity$1;-><init>(Lnubia/widget/NubiaDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 65
    return-void
.end method

.method public setOnButtonClickListener(Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;

    .prologue
    .line 43
    iput-object p1, p0, Lnubia/widget/NubiaDialogActivity;->mListener:Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;

    .line 44
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 102
    return-void
.end method

.method public setThemes(II)V
    .locals 0
    .param p1, "landThemeId"    # I
    .param p2, "portThemeId"    # I

    .prologue
    .line 47
    iput p1, p0, Lnubia/widget/NubiaDialogActivity;->mLandThemeId:I

    .line 48
    iput p2, p0, Lnubia/widget/NubiaDialogActivity;->mPortThemeId:I

    .line 49
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    const v1, 0x30d0049

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    return-void
.end method
