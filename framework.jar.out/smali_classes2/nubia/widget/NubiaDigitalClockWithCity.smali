.class public Lnubia/widget/NubiaDigitalClockWithCity;
.super Landroid/widget/FrameLayout;
.source "NubiaDigitalClockWithCity.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;
    }
.end annotation


# instance fields
.field private m12HourFormat:Ljava/lang/String;

.field private m24HourFormat:Ljava/lang/String;

.field private mAmString:Ljava/lang/String;

.field private mAmpmString:Ljava/lang/String;

.field private mAmpmView:Landroid/widget/TextView;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCityView:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHourFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24Hour:Z

.field private mPmString:Ljava/lang/String;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimeZone:Ljava/lang/String;

.field private mWeekFormat:Ljava/lang/String;

.field private mWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaDigitalClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaDigitalClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v17, Lnubia/widget/NubiaDigitalClockWithCity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnubia/widget/NubiaDigitalClockWithCity$1;-><init>(Lnubia/widget/NubiaDigitalClockWithCity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    const-string v17, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 94
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x3030003

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    const v17, 0x30d0010

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    .line 99
    const-string v17, "wang"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mTimeView init "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v19, "fonts/nubia_bold.ttf"

    invoke-static/range {v18 .. v19}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    const v17, 0x30d0014

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    .line 103
    const v17, 0x30d0011

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    .line 104
    const v17, 0x30d0012

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    .line 105
    const v17, 0x30d0013

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDigitalClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    .line 107
    sget-object v17, Lcn/nubia/internal/R$styleable;->ClockWidgetDigitalClockWithCity:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 111
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 115
    .local v8, "ampmTextSize":F
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 119
    .local v16, "timeTextSize":F
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 123
    .local v10, "cityTextSize":F
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 128
    .local v12, "dateTextSize":F
    float-to-int v0, v8

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    :cond_0
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    :cond_1
    float-to-int v0, v10

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    :cond_2
    float-to-int v0, v12

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    :cond_3
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 146
    .local v7, "ampmTextColor":I
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 150
    .local v15, "timeTextColor":I
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 154
    .local v9, "cityTextColor":I
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 159
    .local v11, "dateTextColor":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_7

    .line 164
    const-string v17, "wang"

    const-string v18, "cityTextColor != Color.WHITE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 182
    :goto_1
    new-instance v17, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v17 .. v17}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "ampmArray":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mAmString:Ljava/lang/String;

    .line 184
    const/16 v17, 0x1

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mPmString:Ljava/lang/String;

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 187
    .local v14, "res":Landroid/content/res/Resources;
    const v17, 0x30c001d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mDateFormat:Ljava/lang/String;

    .line 189
    const v17, 0x30c001e

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->m12HourFormat:Ljava/lang/String;

    .line 191
    const v17, 0x30c001f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->m24HourFormat:Ljava/lang/String;

    .line 193
    const v17, 0x30c0020

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekFormat:Ljava/lang/String;

    .line 196
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    .line 197
    return-void

    .line 167
    .end local v6    # "ampmArray":[Ljava/lang/String;
    .end local v14    # "res":Landroid/content/res/Resources;
    :cond_7
    const-string v17, "wang"

    const-string v18, "cityTextColor == Color.WHITE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    goto :goto_1
.end method

.method static synthetic access$002(Lnubia/widget/NubiaDigitalClockWithCity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 29
    iput-object p1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lnubia/widget/NubiaDigitalClockWithCity;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;

    .prologue
    .line 29
    invoke-direct {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lnubia/widget/NubiaDigitalClockWithCity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;

    .prologue
    .line 29
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lnubia/widget/NubiaDigitalClockWithCity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaDigitalClockWithCity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    return p1
.end method

.method private onTimeChanged()V
    .locals 8

    .prologue
    .line 244
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 245
    iget-boolean v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    if-eqz v4, :cond_1

    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->m24HourFormat:Ljava/lang/String;

    .line 246
    .local v2, "timeFormat":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    .local v1, "time":Ljava/lang/CharSequence;
    const-string v4, "wang"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTimeView use = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const-string v4, "wll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAmpmView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 255
    iget-boolean v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :cond_0
    :goto_1
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateFormat:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    .local v0, "date":Ljava/lang/CharSequence;
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekFormat:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 267
    .local v3, "week":Ljava/lang/CharSequence;
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void

    .line 245
    .end local v0    # "date":Ljava/lang/CharSequence;
    .end local v1    # "time":Ljava/lang/CharSequence;
    .end local v2    # "timeFormat":Ljava/lang/CharSequence;
    .end local v3    # "week":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->m12HourFormat:Ljava/lang/String;

    goto :goto_0

    .line 258
    .restart local v1    # "time":Ljava/lang/CharSequence;
    .restart local v2    # "timeFormat":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmString:Ljava/lang/String;

    :goto_2
    iput-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmString:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    iget-object v5, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 259
    :cond_3
    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mPmString:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 211
    iget-boolean v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    if-nez v1, :cond_0

    .line 212
    iput-boolean v5, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 222
    new-instance v1, Lnubia/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;-><init>(Lnubia/widget/NubiaDigitalClockWithCity;)V

    iput-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    .line 223
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    .line 229
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 235
    iget-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    invoke-virtual {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAttached:Z

    .line 241
    :cond_0
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLightClock(Z)V
    .locals 4
    .param p1, "isLight"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v3, 0x3b

    const/16 v2, 0xff

    .line 294
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    if-eqz p1, :cond_2

    .line 298
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 288
    invoke-direct {p0}, Lnubia/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    goto :goto_0
.end method
