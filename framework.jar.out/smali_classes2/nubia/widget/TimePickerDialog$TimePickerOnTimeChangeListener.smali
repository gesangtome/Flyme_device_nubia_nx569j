.class Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Lnubia/widget/TimePickerView$OnTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/TimePickerDialog;


# direct methods
.method private constructor <init>(Lnubia/widget/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/TimePickerDialog;Lnubia/widget/TimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/TimePickerDialog;
    .param p2, "x1"    # Lnubia/widget/TimePickerDialog$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lnubia/widget/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lnubia/widget/TimePickerView;II)V
    .locals 0
    .param p1, "view"    # Lnubia/widget/TimePickerView;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 109
    return-void
.end method
