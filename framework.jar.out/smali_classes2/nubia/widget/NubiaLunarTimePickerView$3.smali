.class Lnubia/widget/NubiaLunarTimePickerView$3;
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
    .line 158
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerView$3;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

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
    .line 162
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerView$3;->this$0:Lnubia/widget/NubiaLunarTimePickerView;

    # invokes: Lnubia/widget/NubiaLunarTimePickerView;->onTimeChanged()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerView;->access$1100(Lnubia/widget/NubiaLunarTimePickerView;)V

    .line 163
    return-void
.end method
