.class Lnubia/widget/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILnubia/widget/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/DatePickerDialog;


# direct methods
.method constructor <init>(Lnubia/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lnubia/widget/DatePickerDialog$1;->this$0:Lnubia/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$1;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$000(Lnubia/widget/DatePickerDialog;)Lnubia/widget/NubiaSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaSwitch;->toggle()V

    .line 112
    return-void
.end method
