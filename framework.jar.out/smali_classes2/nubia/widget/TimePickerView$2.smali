.class Lnubia/widget/TimePickerView$2;
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
    .line 87
    iput-object p1, p0, Lnubia/widget/TimePickerView$2;->this$0:Lnubia/widget/TimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnubia/widget/WheelView;II)V
    .locals 1
    .param p1, "wheelView"    # Lnubia/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lnubia/widget/TimePickerView$2;->this$0:Lnubia/widget/TimePickerView;

    # invokes: Lnubia/widget/TimePickerView;->onTimeChanged()V
    invoke-static {v0}, Lnubia/widget/TimePickerView;->access$000(Lnubia/widget/TimePickerView;)V

    .line 93
    return-void
.end method
