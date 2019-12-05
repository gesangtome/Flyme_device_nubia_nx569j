.class Lnubia/widget/NubiaLunarTimePickerView$2;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerView.java"

# interfaces
.implements Lnubia/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaLunarTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaLunarTimePickerView;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaLunarTimePickerView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerView$2;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

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
    .line 144
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerView$2;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

    # getter for: Lnubia/widget/NubiaLunarTimePickerView;->mIs24HourView:Z
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerView;->access$800(Lnubia/widget/NubiaLunarTimePickerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerView$2;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

    const/16 v0, 0xc

    if-le p3, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    # setter for: Lnubia/widget/NubiaLunarTimePickerView;->mIsAm:Z
    invoke-static {v1, v0}, Lnubia/widget/NubiaLunarTimePickerView;->access$902(Lnubia/widget/NubiaLunarTimePickerView;Z)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerView$2;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

    # getter for: Lnubia/widget/NubiaLunarTimePickerView;->mHourView:Lnubia/widget/WheelView;
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerView;->access$1000(Lnubia/widget/NubiaLunarTimePickerView;)Lnubia/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnubia/widget/WheelView;->setValue(I)V

    .line 148
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerView$2;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

    # invokes: Lnubia/widget/NubiaLunarTimePickerView;->onTimeChanged()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerView;->access$1100(Lnubia/widget/NubiaLunarTimePickerView;)V

    .line 149
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
