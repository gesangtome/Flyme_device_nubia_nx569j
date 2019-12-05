.class Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/TimePickerDialog;


# direct methods
.method private constructor <init>(Lnubia/widget/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;->this$0:Lnubia/widget/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/TimePickerDialog;Lnubia/widget/TimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/TimePickerDialog;
    .param p2, "x1"    # Lnubia/widget/TimePickerDialog$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;-><init>(Lnubia/widget/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 117
    iget-object v0, p0, Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;->this$0:Lnubia/widget/TimePickerDialog;

    # invokes: Lnubia/widget/TimePickerDialog;->tryNotifyTimeSet()V
    invoke-static {v0}, Lnubia/widget/TimePickerDialog;->access$200(Lnubia/widget/TimePickerDialog;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
