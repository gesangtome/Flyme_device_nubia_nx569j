.class Lnubia/widget/DatePickerView$1;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lnubia/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/DatePickerView;


# direct methods
.method constructor <init>(Lnubia/widget/DatePickerView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnubia/widget/WheelView;II)V
    .locals 2
    .param p1, "wheelView"    # Lnubia/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    iget-boolean v0, v0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    # setter for: Lnubia/widget/DatePickerView;->mYear:I
    invoke-static {v0, p3}, Lnubia/widget/DatePickerView;->access$002(Lnubia/widget/DatePickerView;I)I

    .line 119
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->adjustMonthDisplayerValues()V

    .line 120
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->adjustDayDisplayerValues()V

    .line 121
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    # setter for: Lnubia/widget/DatePickerView;->mYear:I
    invoke-static {v0, p3}, Lnubia/widget/DatePickerView;->access$002(Lnubia/widget/DatePickerView;I)I

    .line 124
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->adjustMaxDay()V

    .line 125
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 126
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    goto :goto_0
.end method
