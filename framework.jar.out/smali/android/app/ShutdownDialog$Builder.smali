.class public Landroid/app/ShutdownDialog$Builder;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ShutdownDialog;
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
    .line 252
    const v0, 0x103047c

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103047c

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    .line 271
    iput p2, p0, Landroid/app/ShutdownDialog$Builder;->mTheme:I

    .line 272
    return-void
.end method


# virtual methods
.method public create()Landroid/app/ShutdownDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 582
    new-instance v0, Landroid/app/ShutdownDialog;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 583
    .local v0, "dialog":Landroid/app/ShutdownDialog;
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 586
    :cond_0
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 589
    :cond_1
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 590
    const/4 v1, -0x1

    iget-object v2, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    # invokes: Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 593
    :cond_2
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 594
    const/4 v1, -0x2

    iget-object v2, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    # invokes: Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 599
    :cond_3
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setView(Landroid/view/View;)V

    .line 603
    :cond_4
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 604
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_5

    .line 605
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setCanceledOnTouchOutside(Z)V

    .line 607
    :cond_5
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 608
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 609
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_6

    .line 610
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 612
    :cond_6
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 445
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 446
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 324
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 356
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 357
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 562
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 563
    return-object p0
.end method

.method public setMessage(I)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 334
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 335
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 345
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 346
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 414
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 415
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 416
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 433
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 434
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 435
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 468
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 469
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 480
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 481
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 492
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 493
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 375
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 376
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 377
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 394
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 395
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 396
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 571
    return-object p0
.end method

.method public setTitle(I)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 294
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 295
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 305
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 306
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 508
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 509
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 510
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 542
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 543
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 544
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 545
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 546
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 547
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 548
    return-object p0
.end method

.method public show()Landroid/app/ShutdownDialog;
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/app/ShutdownDialog$Builder;->create()Landroid/app/ShutdownDialog;

    move-result-object v0

    .line 621
    .local v0, "dialog":Landroid/app/ShutdownDialog;
    invoke-virtual {v0}, Landroid/app/ShutdownDialog;->show()V

    .line 622
    return-object v0
.end method
