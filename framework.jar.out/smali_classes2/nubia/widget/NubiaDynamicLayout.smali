.class public Lnubia/widget/NubiaDynamicLayout;
.super Landroid/widget/RelativeLayout;
.source "NubiaDynamicLayout.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaDynamicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaDynamicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaDynamicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaDynamicLayout;->mTextColor:I

    .line 21
    invoke-direct {p0, p1}, Lnubia/widget/NubiaDynamicLayout;->initView(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const v0, 0x3030014

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v0, 0x30d004e

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaDynamicLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    .line 40
    const v0, 0x30d004d

    invoke-virtual {p0, v0}, Lnubia/widget/NubiaDynamicLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 41
    return-void
.end method

.method private setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 59
    iput p1, p0, Lnubia/widget/NubiaDynamicLayout;->mTextColor:I

    .line 60
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 68
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 49
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lnubia/widget/NubiaDynamicLayout;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lnubia/widget/NubiaDynamicLayout;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lnubia/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    iget v1, p0, Lnubia/widget/NubiaDynamicLayout;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 56
    :cond_0
    return-void
.end method
