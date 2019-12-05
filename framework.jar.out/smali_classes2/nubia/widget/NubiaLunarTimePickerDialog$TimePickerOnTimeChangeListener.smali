.class Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerDialog.java"

# interfaces
.implements Lnubia/widget/NubiaLunarTimePickerView$OnTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaLunarTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaLunarTimePickerDialog;


# direct methods
.method private constructor <init>(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/NubiaLunarTimePickerDialog;Lnubia/widget/NubiaLunarTimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p2, "x1"    # Lnubia/widget/NubiaLunarTimePickerDialog$1;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lnubia/widget/NubiaLunarTimePickerView;IIII)V
    .locals 5
    .param p1, "view"    # Lnubia/widget/NubiaLunarTimePickerView;
    .param p2, "year"    # I
    .param p3, "monthDay"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMin:I
    invoke-static {v0, p5}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$302(Lnubia/widget/NubiaLunarTimePickerDialog;I)I

    .line 300
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V
    invoke-static {v0, p4}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$400(Lnubia/widget/NubiaLunarTimePickerDialog;I)V

    .line 301
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I
    invoke-static {v0, p2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$502(Lnubia/widget/NubiaLunarTimePickerDialog;I)I

    .line 303
    const/4 v0, 0x1

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$600(Lnubia/widget/NubiaLunarTimePickerDialog;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->updateLunarTitle()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$700(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    .line 336
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$800(Lnubia/widget/NubiaLunarTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$902(Lnubia/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$900(Lnubia/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1102(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$500(Lnubia/widget/NubiaLunarTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1202(Lnubia/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 312
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$500(Lnubia/widget/NubiaLunarTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;
    invoke-static {v3}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$900(Lnubia/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z
    invoke-static {v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1200(Lnubia/widget/NubiaLunarTimePickerDialog;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1302(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1400(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    goto/16 :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1502(Lnubia/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1500(Lnubia/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1102(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I
    invoke-static {v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$500(Lnubia/widget/NubiaLunarTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1202(Lnubia/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 323
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$500(Lnubia/widget/NubiaLunarTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;
    invoke-static {v3}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1500(Lnubia/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z
    invoke-static {v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1200(Lnubia/widget/NubiaLunarTimePickerDialog;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1302(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v3}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1102(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    sget-object v1, Lnubia/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    sget-object v2, Lnubia/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    invoke-static {v3}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1300(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1302(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1400(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    goto/16 :goto_0
.end method
