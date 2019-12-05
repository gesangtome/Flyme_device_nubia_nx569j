.class public Lcom/android/server/NubiaBasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "NubiaBasePermissionDialog.java"


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x20000

    const/4 v8, 0x2

    .line 37
    const v6, 0x30e0005

    invoke-direct {p0, p1, v6}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 90
    new-instance v6, Lcom/android/server/NubiaBasePermissionDialog$1;

    invoke-direct {v6, p0}, Lcom/android/server/NubiaBasePermissionDialog$1;-><init>(Lcom/android/server/NubiaBasePermissionDialog;)V

    iput-object v6, p0, Lcom/android/server/NubiaBasePermissionDialog;->mHandler:Landroid/os/Handler;

    .line 99
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z

    .line 38
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 44
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    .local v2, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 47
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .local v4, "width":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 50
    .local v1, "height":I
    if-ge v4, v1, :cond_0

    move v3, v4

    .line 51
    .local v3, "min":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "Permission Dialog"

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v6, -0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    const/16 v6, 0x51

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    const v6, 0x3f19999a    # 0.6f

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 57
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    return-void

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "min":I
    :cond_0
    move v3, v1

    .line 50
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/NubiaBasePermissionDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaBasePermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/NubiaBasePermissionDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaBasePermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/NubiaBasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    :cond_0
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 81
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    :cond_1
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 85
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 62
    invoke-direct {p0, v2}, Lcom/android/server/NubiaBasePermissionDialog;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/server/NubiaBasePermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaBasePermissionDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method
