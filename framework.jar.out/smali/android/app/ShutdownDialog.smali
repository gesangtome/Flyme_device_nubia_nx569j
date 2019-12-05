.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ShutdownDialog$Builder;,
        Landroid/app/ShutdownDialog$ButtonHandler;
    }
.end annotation


# instance fields
.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mHandler:Landroid/os/Handler;

.field private mbutton_cancel:Landroid/widget/TextView;

.field private mbutton_ok:Landroid/widget/TextView;

.field private mdialog_View:Landroid/view/View;

.field private mtext_message:Landroid/widget/TextView;

.field private mtext_title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/app/ShutdownDialog$1;

    invoke-direct {v0, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Landroid/app/ShutdownDialog$ButtonHandler;

    invoke-direct {v0, p0}, Landroid/app/ShutdownDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x303003b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mdialog_View:Landroid/view/View;

    .line 112
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x30d0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_ok:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x30d0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_cancel:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x30d008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mtext_title:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x30d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/ShutdownDialog;->mtext_message:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_ok:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_cancel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Landroid/app/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShutdownDialog;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_ok:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShutdownDialog;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShutdownDialog;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_cancel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ShutdownDialog;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShutdownDialog;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShutdownDialog;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ShutdownDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "x4"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method private setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 196
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_0
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_ok:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iput-object p4, p0, Landroid/app/ShutdownDialog;->mButtonPositiveMessage:Landroid/os/Message;

    .line 214
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 205
    :pswitch_2
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mbutton_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iput-object p4, p0, Landroid/app/ShutdownDialog;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 126
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 128
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x302004a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 130
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mdialog_View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 137
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 233
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 191
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 242
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mtext_message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 162
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mtext_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 158
    return-void
.end method
