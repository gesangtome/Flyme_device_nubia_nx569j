.class public Lnubia/widget/NubiaCenterAlertDialog;
.super Landroid/app/Dialog;
.source "NubiaCenterAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaCenterAlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final LAYOUT_HINT_NONE:I = 0x0

.field public static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field private mAlert:Lnubia/widget/NubiaCenterAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnubia/widget/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lnubia/widget/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    .line 83
    invoke-static {p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 84
    new-instance v0, Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lnubia/widget/NubiaCenterAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    .line 85
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 86
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnubia/widget/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 90
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 92
    invoke-virtual {p0, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setCancelable(Z)V

    .line 93
    invoke-virtual {p0, p3}, Lnubia/widget/NubiaCenterAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    new-instance v0, Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lnubia/widget/NubiaCenterAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    .line 95
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertController;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCenterAlertDialog;

    .prologue
    .line 49
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    return-object v0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 328
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 329
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnubia/widget/NubiaCenterAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 333
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x30e0061

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 335
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 99
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 105
    .end local p1    # "resid":I
    :goto_0
    return p1

    .line 102
    .restart local p1    # "resid":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 305
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertController;->installContent()V

    .line 306
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 310
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lnubia/widget/NubiaCenterAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 316
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1, p2}, Lnubia/widget/NubiaCenterAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 204
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lnubia/widget/NubiaCenterAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lnubia/widget/NubiaCenterAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 191
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 246
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 223
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 272
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setButtonPanelLayoutHint(I)V

    .line 177
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setIcon(I)V

    .line 281
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 284
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 293
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 294
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 295
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lnubia/widget/NubiaCenterAlertController;->setIcon(I)V

    .line 296
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setInverseBackgroundForced(Z)V

    .line 300
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaCenterAlertController;->setView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnubia/widget/NubiaCenterAlertController;->setView(Landroid/view/View;IIII)V

    .line 169
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 323
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/widget/NubiaCenterAlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 324
    return-void
.end method
