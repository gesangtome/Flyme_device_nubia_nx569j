.class public Lnubia/widget/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/DatePickerView$SavedState;,
        Lnubia/widget/DatePickerView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2


# instance fields
.field public hasLeapMonth:Z

.field public isLeapMonth:Z

.field public isLunarMode:Z

.field public leapMonth:I

.field private mDay:I

.field private mDayLabel:Landroid/widget/TextView;

.field private mDayView:Lnubia/widget/WheelView;

.field private mIsCN:Z

.field private mIs_JA_KO:Z

.field private mMaxDayOfMonth:I

.field private mMaxMonthOfYear:I

.field private mMonth:I

.field private mMonthLabel:Landroid/widget/TextView;

.field private mMonthView:Lnubia/widget/WheelView;

.field private mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mYear:I

.field private mYearLabel:Landroid/widget/TextView;

.field private mYearView:Lnubia/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 30
    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    iput v0, p0, Lnubia/widget/DatePickerView;->leapMonth:I

    .line 32
    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->isLeapMonth:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 30
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    const/4 v7, 0x0

    iput v7, p0, Lnubia/widget/DatePickerView;->leapMonth:I

    .line 32
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->isLeapMonth:Z

    .line 67
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30a0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 70
    .local v5, "middleZoneColor":I
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 73
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x3030010

    const/4 v8, 0x1

    invoke-virtual {v4, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->setBackgroundColor(I)V

    .line 76
    const v7, 0x30d003f

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    .line 77
    const v7, 0x30d0040

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    .line 78
    const v7, 0x30d0041

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->mIsCN:Z

    .line 90
    :goto_0
    const-string v7, "ja"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ko"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    :cond_0
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->mIs_JA_KO:Z

    .line 100
    :goto_1
    iget-boolean v7, p0, Lnubia/widget/DatePickerView;->mIsCN:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lnubia/widget/DatePickerView;->mIs_JA_KO:Z

    if-eqz v7, :cond_4

    .line 101
    :cond_1
    const v7, 0x30d0005

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    .line 102
    const v7, 0x30d0004

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    .line 103
    const v7, 0x30d0003

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    .line 110
    :goto_2
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    const/16 v8, 0x7b2

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 111
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    const/16 v8, 0x7f5

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 112
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    new-instance v8, Lnubia/widget/DatePickerView$1;

    invoke-direct {v8, p0}, Lnubia/widget/DatePickerView$1;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 131
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    .line 132
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 133
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "months":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 136
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 137
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 87
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v3    # "i":I
    .end local v6    # "months":[Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->mIsCN:Z

    goto/16 :goto_0

    .line 97
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnubia/widget/DatePickerView;->mIs_JA_KO:Z

    goto :goto_1

    .line 105
    :cond_4
    const v7, 0x30d0005

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    .line 106
    const v7, 0x30d0004

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    .line 107
    const v7, 0x30d0003

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    goto :goto_2

    .line 139
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v3    # "i":I
    .restart local v6    # "months":[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 140
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 147
    .end local v3    # "i":I
    :goto_4
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    new-instance v8, Lnubia/widget/DatePickerView$2;

    invoke-direct {v8, p0}, Lnubia/widget/DatePickerView$2;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 165
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    .line 166
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    new-instance v8, Lnubia/widget/DatePickerView$3;

    invoke-direct {v8, p0}, Lnubia/widget/DatePickerView$3;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 176
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 178
    return-void

    .line 142
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_6
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 143
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 144
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    sget-object v8, Lnubia/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    .line 30
    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    iput v0, p0, Lnubia/widget/DatePickerView;->leapMonth:I

    .line 32
    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->isLeapMonth:Z

    .line 63
    return-void
.end method

.method static synthetic access$002(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lnubia/widget/DatePickerView;->mDay:I

    return p1
.end method

.method private static getCurrentYear()I
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final adjustDayDisplayerValues()V
    .locals 6

    .prologue
    .line 228
    iget-object v4, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v4}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "values":[Ljava/lang/String;
    iget v4, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-static {v4}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 230
    .local v2, "leapMonth":I
    const/4 v0, 0x0

    .line 231
    .local v0, "days":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 233
    .local v1, "isCurMonthLeap":Z
    iget v4, p0, Lnubia/widget/DatePickerView;->mMonth:I

    aget-object v4, v3, v4

    sget-object v5, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 234
    const/4 v1, 0x1

    .line 235
    iget v4, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v5, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-static {v4, v5, v1}, Lnubia/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    array-length v4, v0

    iput v4, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 247
    iget-object v4, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 249
    iget-object v4, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v5, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 250
    iget-object v4, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v4, v0}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 252
    iget v4, p0, Lnubia/widget/DatePickerView;->mDay:I

    iget v5, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_0

    .line 253
    iget v4, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 254
    :cond_0
    iget-object v4, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v5, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-virtual {v4, v5}, Lnubia/widget/WheelView;->setValue(I)V

    .line 255
    return-void

    .line 236
    :cond_1
    if-lez v2, :cond_2

    iget v4, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v5, v2, 0x1

    if-lt v4, v5, :cond_2

    .line 237
    iget v4, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v5, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-static {v4, v5, v1}, Lnubia/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    if-lez v2, :cond_3

    iget v4, p0, Lnubia/widget/DatePickerView;->mMonth:I

    if-ge v4, v2, :cond_3

    .line 239
    iget v4, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v5, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5, v1}, Lnubia/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_3
    iget v4, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v5, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5, v1}, Lnubia/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final adjustMaxDay()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 204
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 206
    const/4 v1, 0x2

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 207
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 208
    iget v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 209
    iget v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 211
    :cond_0
    return-void
.end method

.method public final adjustMonthDisplayerValues()V
    .locals 4

    .prologue
    .line 214
    iget v2, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-static {v2}, Lnubia/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "months":[Ljava/lang/String;
    array-length v2, v1

    iput v2, p0, Lnubia/widget/DatePickerView;->mMaxMonthOfYear:I

    .line 216
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 218
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 219
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v2, v1}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 220
    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mMaxMonthOfYear:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    .line 221
    iget v2, p0, Lnubia/widget/DatePickerView;->mMaxMonthOfYear:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 223
    :cond_0
    iget v2, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-static {v2}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 224
    .local v0, "leapMonth":I
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    iget v3, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setValue(I)V

    .line 225
    return-void
.end method

.method public final getDayOfMonth()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lnubia/widget/DatePickerView;->mDay:I

    return v0
.end method

.method public final getDayWheelView()Lnubia/widget/WheelView;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    return-object v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public final getMonthWheelView()Lnubia/widget/WheelView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    return v0
.end method

.method public final getYearWheelView()Lnubia/widget/WheelView;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    return-object v0
.end method

.method public final notifyDateChanged()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lnubia/widget/DatePickerView$OnDateChangeListener;->onDateChanged(Lnubia/widget/DatePickerView;III)V

    .line 261
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->invalidate()V

    .line 262
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->invalidate()V

    .line 263
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->invalidate()V

    .line 265
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 197
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 198
    .local v7, "top":I
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 199
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lnubia/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 351
    move-object v0, p1

    check-cast v0, Lnubia/widget/DatePickerView$SavedState;

    .line 352
    .local v0, "ss":Lnubia/widget/DatePickerView$SavedState;
    invoke-virtual {v0}, Lnubia/widget/DatePickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 353
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sYear:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 354
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 355
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sDay:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 356
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 357
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 346
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lnubia/widget/DatePickerView$SavedState;

    iget v2, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v4, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-direct {v1, v0, v2, v3, v4}, Lnubia/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v1
.end method

.method public setDayLabelVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 384
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangeListener"    # Lnubia/widget/DatePickerView$OnDateChangeListener;

    .prologue
    .line 269
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 270
    iput p2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 271
    iput p3, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 272
    iput-object p4, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    .line 273
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 274
    return-void
.end method

.method public final updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 181
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lnubia/widget/DatePickerView;->mDay:I

    if-eq v0, p3, :cond_1

    .line 182
    :cond_0
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 183
    iput p2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 184
    iput p3, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 185
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 186
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 188
    :cond_1
    return-void
.end method

.method public final updateDaySpinners()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 322
    iget-boolean v1, p0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    if-ne v1, v3, :cond_1

    .line 323
    iget-object v1, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v1}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 324
    iget v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 326
    iget v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 327
    iget v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 330
    :cond_0
    iget-object v1, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v2, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-virtual {v1, v2}, Lnubia/widget/WheelView;->setValue(I)V

    .line 341
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 333
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 334
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 335
    const/4 v1, 0x2

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 336
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 337
    iget-object v1, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v1, v3}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 338
    iget-object v1, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v2, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    invoke-virtual {v1, v2}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 339
    iget-object v1, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v2, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-virtual {v1, v2}, Lnubia/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public final updateSpinners()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 280
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 281
    iput-boolean v2, p0, Lnubia/widget/DatePickerView;->isLeapMonth:Z

    .line 282
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 285
    :cond_0
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    .line 286
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateDaySpinners()V

    .line 288
    iget-boolean v0, p0, Lnubia/widget/DatePickerView;->isLunarMode:Z

    if-ne v0, v2, :cond_5

    .line 289
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-static {v0}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerView;->leapMonth:I

    .line 291
    iget v0, p0, Lnubia/widget/DatePickerView;->leapMonth:I

    if-lez v0, :cond_4

    .line 292
    iget-boolean v0, p0, Lnubia/widget/DatePickerView;->isLeapMonth:Z

    if-eqz v0, :cond_3

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/DatePickerView;->isLeapMonth:Z

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/DatePickerView;->mMaxMonthOfYear:I

    .line 303
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v1, p0, Lnubia/widget/DatePickerView;->mMaxMonthOfYear:I

    if-le v0, v1, :cond_2

    .line 304
    iget v0, p0, Lnubia/widget/DatePickerView;->mMaxMonthOfYear:I

    iput v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 307
    :cond_2
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    .line 319
    :goto_1
    return-void

    .line 294
    :cond_3
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v1, p0, Lnubia/widget/DatePickerView;->leapMonth:I

    if-gt v0, v1, :cond_1

    .line 295
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    goto :goto_0

    .line 298
    :cond_4
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    goto :goto_0

    .line 309
    :cond_5
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v0, v2}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 310
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v0, v3}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 312
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    if-lt v0, v3, :cond_6

    .line 313
    iput v3, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 316
    :cond_6
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    goto :goto_1
.end method
