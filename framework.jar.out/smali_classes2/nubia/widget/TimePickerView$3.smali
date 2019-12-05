.class Lnubia/widget/TimePickerView$3;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Lnubia/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/TimePickerView;


# direct methods
.method constructor <init>(Lnubia/widget/TimePickerView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lnubia/widget/TimePickerView$3;->this$0:Lnubia/widget/TimePickerView;

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
    .line 106
    iget-object v1, p0, Lnubia/widget/TimePickerView$3;->this$0:Lnubia/widget/TimePickerView;

    iget-object v0, p0, Lnubia/widget/TimePickerView$3;->this$0:Lnubia/widget/TimePickerView;

    # getter for: Lnubia/widget/TimePickerView;->mIsAm:Z
    invoke-static {v0}, Lnubia/widget/TimePickerView;->access$100(Lnubia/widget/TimePickerView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lnubia/widget/TimePickerView;->mIsAm:Z
    invoke-static {v1, v0}, Lnubia/widget/TimePickerView;->access$102(Lnubia/widget/TimePickerView;Z)Z

    .line 107
    iget-object v0, p0, Lnubia/widget/TimePickerView$3;->this$0:Lnubia/widget/TimePickerView;

    # invokes: Lnubia/widget/TimePickerView;->updateAmPmControl()V
    invoke-static {v0}, Lnubia/widget/TimePickerView;->access$200(Lnubia/widget/TimePickerView;)V

    .line 108
    iget-object v0, p0, Lnubia/widget/TimePickerView$3;->this$0:Lnubia/widget/TimePickerView;

    # invokes: Lnubia/widget/TimePickerView;->onTimeChanged()V
    invoke-static {v0}, Lnubia/widget/TimePickerView;->access$000(Lnubia/widget/TimePickerView;)V

    .line 109
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
