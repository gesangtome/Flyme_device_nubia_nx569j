.class public Lnubia/widget/NubiaCenterAlertController;
.super Lcom/android/internal/app/AlertController;
.source "NubiaCenterAlertController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 14
    invoke-super {p0}, Lcom/android/internal/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 15
    const v0, 0x30200b4

    const v1, 0x30200b9

    const v2, 0x30200be

    invoke-super {p0, v0, v1, v2}, Lcom/android/internal/app/AlertController;->setNubiaButtonBackground(III)V

    .line 19
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertController;->resetNubiaAlertDialogLayout()V

    .line 20
    return-void
.end method


# virtual methods
.method protected resetNubiaAlertDialogLayout()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x303000d

    invoke-super {p0, v0}, Lcom/android/internal/app/AlertController;->setAlertDialogLayout(I)V

    .line 27
    return-void
.end method
