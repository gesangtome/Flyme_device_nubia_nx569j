.class public Lnubia/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lnubia/widget/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lnubia/widget/FloatingActionButton$1;

    invoke-direct {v1, p0}, Lnubia/widget/FloatingActionButton$1;-><init>(Lnubia/widget/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/FloatingActionButton;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/FloatingActionButton;

    .prologue
    .line 14
    invoke-direct {p0}, Lnubia/widget/FloatingActionButton;->setShader()V

    return-void
.end method

.method private setShader()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lnubia/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30900a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnubia/widget/FloatingActionButton;->setTranslationZ(F)V

    .line 37
    new-instance v0, Lnubia/widget/FloatingActionButton$2;

    invoke-direct {v0, p0}, Lnubia/widget/FloatingActionButton$2;-><init>(Lnubia/widget/FloatingActionButton;)V

    invoke-virtual {p0, v0}, Lnubia/widget/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 43
    return-void
.end method
