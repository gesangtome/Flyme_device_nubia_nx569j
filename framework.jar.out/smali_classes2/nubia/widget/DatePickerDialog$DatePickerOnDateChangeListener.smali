.class Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lnubia/widget/DatePickerView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnDateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lnubia/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p2, "x1"    # Lnubia/widget/DatePickerDialog$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lnubia/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lnubia/widget/DatePickerView;III)V
    .locals 6
    .param p1, "view"    # Lnubia/widget/DatePickerView;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 241
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/DatePickerView;->getYear()I

    move-result v1

    # setter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v0, v1}, Lnubia/widget/DatePickerDialog;->access$302(Lnubia/widget/DatePickerDialog;I)I

    .line 242
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/DatePickerView;->getMonth()I

    move-result v1

    # setter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v0, v1}, Lnubia/widget/DatePickerDialog;->access$502(Lnubia/widget/DatePickerDialog;I)I

    .line 243
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/DatePickerView;->getDayOfMonth()I

    move-result v1

    # setter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v0, v1}, Lnubia/widget/DatePickerDialog;->access$602(Lnubia/widget/DatePickerDialog;I)I

    .line 245
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$700(Lnubia/widget/DatePickerDialog;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 246
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v0

    iput-boolean v4, v0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 247
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v2}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v3}, Lnubia/widget/DatePickerDialog;->access$600(Lnubia/widget/DatePickerDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    # invokes: Lnubia/widget/DatePickerDialog;->setLunarTitleByValues(III)V
    invoke-static {v0, v1, v2, v3}, Lnubia/widget/DatePickerDialog;->access$800(Lnubia/widget/DatePickerDialog;III)V

    .line 248
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lnubia/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    # getter for: Lnubia/widget/DatePickerDialog;->mIsCN:Z
    invoke-static {}, Lnubia/widget/DatePickerDialog;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v0

    iput-boolean v5, v0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 252
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v2}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v3}, Lnubia/widget/DatePickerDialog;->access$600(Lnubia/widget/DatePickerDialog;)I

    move-result v3

    # invokes: Lnubia/widget/DatePickerDialog;->setSolarTitle(III)V
    invoke-static {v0, v1, v2, v3}, Lnubia/widget/DatePickerDialog;->access$1000(Lnubia/widget/DatePickerDialog;III)V

    .line 253
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnubia/widget/DatePickerView;->setDayLabelVisible(Z)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v2}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v3}, Lnubia/widget/DatePickerDialog;->access$600(Lnubia/widget/DatePickerDialog;)I

    move-result v3

    # invokes: Lnubia/widget/DatePickerDialog;->setSolarTitle(III)V
    invoke-static {v0, v1, v2, v3}, Lnubia/widget/DatePickerDialog;->access$1000(Lnubia/widget/DatePickerDialog;III)V

    goto :goto_0
.end method
