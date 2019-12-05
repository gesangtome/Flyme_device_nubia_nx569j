.class public Lnubia/widget/NubiaCenterAlertDialog$Builder;
.super Ljava/lang/Object;
.source "NubiaCenterAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaCenterAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/internal/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnubia/widget/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lnubia/widget/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    .line 363
    iput p2, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->mTheme:I

    .line 364
    return-void
.end method


# virtual methods
.method public create()Lnubia/widget/NubiaCenterAlertDialog;
    .locals 4

    .prologue
    .line 940
    new-instance v0, Lnubia/widget/NubiaCenterAlertDialog;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnubia/widget/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 941
    .local v0, "dialog":Lnubia/widget/NubiaCenterAlertDialog;
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    # getter for: Lnubia/widget/NubiaCenterAlertDialog;->mAlert:Lnubia/widget/NubiaCenterAlertController;
    invoke-static {v0}, Lnubia/widget/NubiaCenterAlertDialog;->access$000(Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 942
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog;->setCancelable(Z)V

    .line 943
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 944
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 946
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 947
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 948
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 951
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 633
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 634
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 635
    return-object p0
.end method

.method public setCancelable(Z)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 556
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 557
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 653
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 655
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 410
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 411
    return-object p0
.end method

.method public setIcon(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 443
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 452
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 453
    return-object p0
.end method

.method public setIconAttribute(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 466
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 467
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 468
    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 469
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 920
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 921
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 605
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 606
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 607
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 617
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 618
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 619
    return-object p0
.end method

.method public setMessage(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 421
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 430
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 431
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 678
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 679
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 680
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 681
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 682
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 732
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 733
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 734
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 737
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 704
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 705
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 706
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 707
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 708
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 506
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 507
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 508
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 519
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 520
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 521
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 532
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 533
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 534
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 545
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 546
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 547
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 574
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 575
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 584
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 585
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 843
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 844
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 594
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 595
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 480
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 481
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 482
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 493
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 494
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 495
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 928
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 929
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 757
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 758
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 759
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 760
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 761
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 782
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 783
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 784
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 785
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 787
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 827
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 828
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 829
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 830
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 831
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 805
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 806
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 807
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 808
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 809
    return-object p0
.end method

.method public setTitle(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 385
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 394
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 395
    return-object p0
.end method

.method public setView(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 856
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 857
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 858
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 859
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 871
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 872
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 873
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 874
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lnubia/widget/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 901
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 902
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 903
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 904
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 905
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 906
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 907
    iget-object v0, p0, Lnubia/widget/NubiaCenterAlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 908
    return-object p0
.end method

.method public show()Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->create()Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    .line 960
    .local v0, "dialog":Lnubia/widget/NubiaCenterAlertDialog;
    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->show()V

    .line 961
    return-object v0
.end method
