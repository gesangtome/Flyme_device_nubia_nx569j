.class Lnubia/widget/NubiaDialogActivity$ScreenInfo;
.super Ljava/lang/Object;
.source "NubiaDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenInfo"
.end annotation


# instance fields
.field private mIsLandscape:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field final synthetic this$0:Lnubia/widget/NubiaDialogActivity;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaDialogActivity;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    iput-object p1, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->this$0:Lnubia/widget/NubiaDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 244
    .local v0, "metric":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 246
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 248
    invoke-virtual {p1}, Lnubia/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mIsLandscape:Z

    .line 250
    iget-boolean v2, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mIsLandscape:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v2, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mScreenWidth:I

    .line 252
    iget-boolean v2, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mIsLandscape:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_2
    iput v2, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mScreenHeight:I

    .line 254
    return-void

    .line 248
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 250
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    .line 252
    :cond_2
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2
.end method

.method static synthetic access$100(Lnubia/widget/NubiaDialogActivity$ScreenInfo;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    .prologue
    .line 237
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->isLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaDialogActivity$ScreenInfo;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaDialogActivity$ScreenInfo;

    .prologue
    .line 237
    invoke-direct {p0}, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method private getScreenHeight()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mScreenHeight:I

    return v0
.end method

.method private getScreenWidth()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mScreenWidth:I

    return v0
.end method

.method private isLandscape()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lnubia/widget/NubiaDialogActivity$ScreenInfo;->mIsLandscape:Z

    return v0
.end method
