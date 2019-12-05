.class Lnubia/widget/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/DatePickerDialog;->setupNubiaSwitch()V
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
    .line 267
    iput-object p1, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 271
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # setter for: Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z
    invoke-static {v6, p2}, Lnubia/widget/DatePickerDialog;->access$702(Lnubia/widget/DatePickerDialog;Z)Z

    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "solarToLunar":Ljava/lang/String;
    const/4 v3, 0x0

    .line 274
    .local v3, "lunarToSolar":Ljava/lang/String;
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lnubia/widget/DatePickerView;->getYear()I

    move-result v7

    # setter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$302(Lnubia/widget/DatePickerDialog;I)I

    .line 275
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lnubia/widget/DatePickerView;->getMonth()I

    move-result v7

    # setter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$502(Lnubia/widget/DatePickerDialog;I)I

    .line 276
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lnubia/widget/DatePickerView;->getDayOfMonth()I

    move-result v7

    # setter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$602(Lnubia/widget/DatePickerDialog;I)I

    .line 277
    const/4 v6, 0x1

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$700(Lnubia/widget/DatePickerDialog;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 278
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 280
    :try_start_0
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)I

    move-result v7

    iget-object v8, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v8}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v9}, Lnubia/widget/DatePickerDialog;->access$600(Lnubia/widget/DatePickerDialog;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v7

    # setter for: Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$1102(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$1100(Lnubia/widget/DatePickerDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnubia/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # invokes: Lnubia/widget/DatePickerDialog;->resolveLunarDate(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lnubia/widget/DatePickerDialog;->access$1200(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :goto_0
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # invokes: Lnubia/widget/DatePickerDialog;->updateLunarBySolar()V
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$1300(Lnubia/widget/DatePickerDialog;)V

    .line 288
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnubia/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 289
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/WheelView;->invalidate()V

    .line 290
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/WheelView;->invalidate()V

    .line 337
    :goto_1
    return-void

    .line 292
    :cond_0
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 294
    :try_start_1
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)I

    move-result v6

    invoke-static {v6}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 295
    .local v2, "leapMonth":I
    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 296
    .local v0, "hasLeapMonth":Z
    :goto_2
    const/4 v1, 0x0

    .line 297
    .local v1, "isCurMonthLeap":Z
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "values":[Ljava/lang/String;
    const/4 v6, 0x1

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v7

    aget-object v7, v5, v7

    sget-object v8, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 301
    const/4 v1, 0x1

    .line 304
    :cond_1
    if-eqz v0, :cond_5

    .line 305
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v6

    if-ge v6, v2, :cond_2

    .line 306
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    const/4 v7, 0x1

    # += operator for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$512(Lnubia/widget/DatePickerDialog;I)I

    .line 312
    :cond_2
    :goto_3
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurryear:I
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)I

    move-result v7

    iget-object v8, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v8}, Lnubia/widget/DatePickerDialog;->access$500(Lnubia/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mCurrday:I
    invoke-static {v9}, Lnubia/widget/DatePickerDialog;->access$600(Lnubia/widget/DatePickerDialog;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v7, v8, v9}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v7

    # setter for: Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$1102(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$1100(Lnubia/widget/DatePickerDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lnubia/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 316
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # invokes: Lnubia/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    invoke-static {v6, v3}, Lnubia/widget/DatePickerDialog;->access$1400(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v5    # "values":[Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarYear:I
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$1500(Lnubia/widget/DatePickerDialog;)I

    move-result v7

    iget-object v8, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarMonth:I
    invoke-static {v8}, Lnubia/widget/DatePickerDialog;->access$1600(Lnubia/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarDay:I
    invoke-static {v9}, Lnubia/widget/DatePickerDialog;->access$1700(Lnubia/widget/DatePickerDialog;)I

    move-result v9

    # invokes: Lnubia/widget/DatePickerDialog;->setSolarTitle(III)V
    invoke-static {v6, v7, v8, v9}, Lnubia/widget/DatePickerDialog;->access$1000(Lnubia/widget/DatePickerDialog;III)V

    .line 321
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getYearWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 322
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 323
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 325
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarYear:I
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$1500(Lnubia/widget/DatePickerDialog;)I

    move-result v6

    const/16 v7, 0x7f5

    if-le v6, v7, :cond_6

    .line 326
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    const/16 v7, 0x7f5

    # setter for: Lnubia/widget/DatePickerDialog;->mSolarYear:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$1502(Lnubia/widget/DatePickerDialog;I)I

    .line 331
    :cond_3
    :goto_5
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    iget-object v7, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarYear:I
    invoke-static {v7}, Lnubia/widget/DatePickerDialog;->access$1500(Lnubia/widget/DatePickerDialog;)I

    move-result v7

    iget-object v8, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarMonth:I
    invoke-static {v8}, Lnubia/widget/DatePickerDialog;->access$1600(Lnubia/widget/DatePickerDialog;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarDay:I
    invoke-static {v9}, Lnubia/widget/DatePickerDialog;->access$1700(Lnubia/widget/DatePickerDialog;)I

    move-result v9

    iget-object v10, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    invoke-static {v10}, Lnubia/widget/DatePickerDialog;->access$1800(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 333
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lnubia/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 334
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/WheelView;->invalidate()V

    .line 335
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/WheelView;->invalidate()V

    goto/16 :goto_1

    .line 295
    .restart local v2    # "leapMonth":I
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 309
    .restart local v0    # "hasLeapMonth":Z
    .restart local v1    # "isCurMonthLeap":Z
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    const/4 v7, 0x1

    # += operator for: Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$512(Lnubia/widget/DatePickerDialog;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 317
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v5    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_4

    .line 327
    :cond_6
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mSolarYear:I
    invoke-static {v6}, Lnubia/widget/DatePickerDialog;->access$1500(Lnubia/widget/DatePickerDialog;)I

    move-result v6

    const/16 v7, 0x7b2

    if-ge v6, v7, :cond_3

    .line 328
    iget-object v6, p0, Lnubia/widget/DatePickerDialog$2;->this$0:Lnubia/widget/DatePickerDialog;

    const/16 v7, 0x7b2

    # setter for: Lnubia/widget/DatePickerDialog;->mSolarYear:I
    invoke-static {v6, v7}, Lnubia/widget/DatePickerDialog;->access$1502(Lnubia/widget/DatePickerDialog;I)I

    goto :goto_5

    .line 285
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method
