.class Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lnubia/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lnubia/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p2, "x1"    # Lnubia/widget/DatePickerDialog$1;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lnubia/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 467
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 468
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lnubia/widget/DatePickerDialog;

    # invokes: Lnubia/widget/DatePickerDialog;->saveSwitchState()V
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$1900(Lnubia/widget/DatePickerDialog;)V

    .line 469
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lnubia/widget/DatePickerDialog;

    # invokes: Lnubia/widget/DatePickerDialog;->tryNotifyDateSet()V
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$2000(Lnubia/widget/DatePickerDialog;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 471
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
