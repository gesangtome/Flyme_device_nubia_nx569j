.class public Lnubia/widget/NubiaLunarTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "NubiaLunarTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;,
        Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;,
        Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2


# instance fields
.field private isCurrentMonthLeap:Z

.field private final mCallBack:Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

.field private mFlag:Z

.field private mHour:I

.field private mIsCN:Z

.field private mLunarDay:I

.field private mLunarDayLabel:Ljava/lang/String;

.field private mLunarLabel:Landroid/widget/TextView;

.field private mLunarMonth:I

.field private mLunarMonthLabel:Ljava/lang/String;

.field private mLunarStringArray:[Ljava/lang/String;

.field private mLunarTimeLayout:Landroid/view/View;

.field private final mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mMin:I

.field private mMonthDay:Ljava/lang/String;

.field private mNubiaSwitch:Lnubia/widget/NubiaSwitch;

.field private mOnClickListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

.field private mOnTimeChangeListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

.field private mRetDay:I

.field private mRetMonth:I

.field private mRetYear:I

.field private mSolarDay:I

.field private mSolarMonth:I

.field private mSolarStringArray:[Ljava/lang/String;

.field private mSolarYear:I

.field private mSwitchEnabled:Z

.field private mUSStringArray:[Ljava/lang/String;

.field private mWeekDay:Ljava/lang/String;

.field private mYYYY:I

.field private mYearMonthDay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "hourOfDay"    # I
    .param p8, "minute"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    .line 62
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 94
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lnubia/widget/NubiaLunarTimePickerDialog;->setCancelable(Z)V

    .line 95
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lnubia/widget/NubiaLunarTimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 98
    .local v3, "themeContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v6, "zh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    const/4 v6, 0x1

    iput-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    .line 107
    :goto_0
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    if-nez v6, :cond_0

    .line 108
    new-instance v6, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;-><init>(Lnubia/widget/NubiaLunarTimePickerDialog;Lnubia/widget/NubiaLunarTimePickerDialog$1;)V

    iput-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    .line 111
    :cond_0
    const/4 v6, -0x1

    const v7, 0x1040013

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lnubia/widget/NubiaLunarTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const/4 v6, -0x2

    const/high16 v7, 0x1040000

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lnubia/widget/NubiaLunarTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 115
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 117
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x3030018

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 119
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->setView(Landroid/view/View;)V

    .line 121
    iput-object p3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mCallBack:Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    .line 122
    const v6, 0x30d0053

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnubia/widget/NubiaLunarTimePickerView;

    iput-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    .line 124
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnubia/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 125
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnubia/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 127
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    if-nez v6, :cond_1

    .line 128
    new-instance v6, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lnubia/widget/NubiaLunarTimePickerDialog;Lnubia/widget/NubiaLunarTimePickerDialog$1;)V

    iput-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    .line 131
    :cond_1
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    iget-object v7, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lnubia/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-virtual {v6, v7}, Lnubia/widget/NubiaLunarTimePickerView;->setOnTimeChangedListener(Lnubia/widget/NubiaLunarTimePickerView$OnTimeChangeListener;)V

    .line 132
    const v6, 0x30d0044

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 133
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const v7, 0x30c0067

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getTextRes()V

    .line 135
    const v6, 0x30d0045

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnubia/widget/NubiaSwitch;

    iput-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    .line 136
    const v6, 0x30d0054

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    .line 138
    iget-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-nez v6, :cond_2

    .line 139
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnubia/widget/NubiaLunarTimePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 142
    :cond_2
    move/from16 v0, p7

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 143
    move/from16 v0, p8

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMin:I

    .line 144
    add-int/lit8 p5, p5, 0x1

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge p5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge p6, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "yearMonthDay":Ljava/lang/String;
    invoke-direct {p0, v5}, Lnubia/widget/NubiaLunarTimePickerDialog;->initData(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->initTitle()V

    .line 151
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setupNubiaSwitch()V

    .line 153
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    new-instance v7, Lnubia/widget/NubiaLunarTimePickerDialog$1;

    invoke-direct {v7, p0}, Lnubia/widget/NubiaLunarTimePickerDialog$1;-><init>(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    iget v7, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v6, v7}, Lnubia/widget/NubiaLunarTimePickerView;->update(I)V

    .line 162
    iget-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v6, :cond_3

    .line 163
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getSwitchStateFromSP()Z

    move-result v6

    iput-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    .line 164
    iget-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    if-eqz v6, :cond_3

    .line 165
    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    invoke-virtual {v6}, Lnubia/widget/NubiaSwitch;->toggle()V

    .line 168
    :cond_3
    return-void

    .line 104
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "yearMonthDay":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    goto/16 :goto_0

    .line 145
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "view":Landroid/view/View;
    :cond_5
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "hourOfDay"    # I
    .param p7, "minute"    # I

    .prologue
    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lnubia/widget/NubiaLunarTimePickerDialog;-><init>(Landroid/content/Context;ILnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V

    .line 83
    return-void
.end method

.method static synthetic access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    return-object v0
.end method

.method static synthetic access$1100(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lnubia/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lnubia/widget/NubiaLunarTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lnubia/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lnubia/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    return-void
.end method

.method static synthetic access$1500(Lnubia/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lnubia/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateLunar()V

    return-void
.end method

.method static synthetic access$1700(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateSolar()V

    return-void
.end method

.method static synthetic access$1800(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateSolarTitle()V

    return-void
.end method

.method static synthetic access$1900(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method static synthetic access$200(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$302(Lnubia/widget/NubiaLunarTimePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMin:I

    return p1
.end method

.method static synthetic access$400(Lnubia/widget/NubiaLunarTimePickerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnubia/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    return-void
.end method

.method static synthetic access$500(Lnubia/widget/NubiaLunarTimePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    return v0
.end method

.method static synthetic access$502(Lnubia/widget/NubiaLunarTimePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    return p1
.end method

.method static synthetic access$600(Lnubia/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lnubia/widget/NubiaLunarTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateLunarTitle()V

    return-void
.end method

.method static synthetic access$800(Lnubia/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    return v0
.end method

.method static synthetic access$900(Lnubia/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lnubia/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    return-object p1
.end method

.method private adjustHourOfDay(I)V
    .locals 1
    .param p1, "hourOfDay"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    .line 282
    add-int/lit8 p1, p1, -0xc

    .line 285
    :cond_0
    if-nez p1, :cond_1

    .line 286
    const/16 p1, 0xc

    .line 290
    :cond_1
    iput p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 291
    return-void
.end method

.method private adjustYearLunarToSolar()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 459
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 461
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4, v5, v6}, Lnubia/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "mmdd":Ljava/lang/String;
    const/4 v0, 0x0

    .line 465
    .local v0, "isLeapMonth":Z
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 467
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 470
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "lunarYMD":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0}, Lnubia/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "solarDate":Ljava/lang/String;
    invoke-direct {p0, v3}, Lnubia/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v3    # "solarDate":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    if-eq v4, v5, :cond_1

    .line 479
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    iput v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 481
    :cond_1
    return-void

    .line 475
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private adjustYearSolarToLunar()V
    .locals 6

    .prologue
    .line 387
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lnubia/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 389
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 390
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "mmdd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "solarYMD":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lnubia/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "lunarDate":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->resolveLunarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "lunarDate":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    if-eq v3, v4, :cond_0

    .line 400
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    iput v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 402
    :cond_0
    return-void

    .line 396
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getAmPm()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 223
    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lnubia/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v2

    if-ne v4, v2, :cond_1

    .line 224
    const-string v0, ""

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "amUpper":Ljava/lang/String;
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "pmUpper":Ljava/lang/String;
    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lnubia/widget/NubiaLunarTimePickerView;->getmIsAm()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 232
    iget-boolean v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v2, :cond_0

    sget-object v0, Lnubia/widget/LunarUtil;->am:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    iget-boolean v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v2, :cond_3

    sget-object v1, Lnubia/widget/LunarUtil;->pm:Ljava/lang/String;

    .end local v1    # "pmUpper":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getTextRes()V
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnubia/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 679
    sget-object v0, Lnubia/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 680
    sget-object v0, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 681
    sget-object v0, Lnubia/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 682
    return-void
.end method

.method private initData(Ljava/lang/String;)V
    .locals 7
    .param p1, "yearMonthDay"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 189
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "yyyy":I
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "mm":I
    const/16 v4, 0x8

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "dd":I
    iput v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 194
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYearMonthDay:Ljava/lang/String;

    .line 195
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 196
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->initDisplayedValues()V

    .line 197
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v1, v0, v4}, Lnubia/widget/LunarUtil;->solarSumDays(III)I

    move-result v2

    .line 198
    .local v2, "sumDay":I
    invoke-static {}, Lnubia/widget/LunarUtil;->clearSum()V

    .line 199
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lnubia/widget/WheelView;->setValue(I)V

    .line 200
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 201
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYearMonthDay:Ljava/lang/String;

    invoke-static {v4}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 203
    iget-boolean v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    goto :goto_0
.end method

.method private initDisplayedValues()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lnubia/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lnubia/widget/LunarUtil;->timePickerUSMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 183
    sget-object v0, Lnubia/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    sget-object v1, Lnubia/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    goto :goto_0
.end method

.method private resolveLunarDate(Ljava/lang/String;)V
    .locals 6
    .param p1, "lunarDate"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 341
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    .line 342
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 343
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    .line 346
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 347
    const/16 v0, 0x9

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    goto :goto_0
.end method

.method private resolveSolarDate(Ljava/lang/String;)V
    .locals 3
    .param p1, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    .line 353
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    .line 354
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    .line 355
    return-void
.end method

.method private saveSwitchState()V
    .locals 5

    .prologue
    .line 667
    iget-boolean v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-nez v2, :cond_0

    .line 675
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "lunarTimePickerSwitch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 672
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 673
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "switchState"

    iget-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setLunarTitle()V
    .locals 6

    .prologue
    .line 429
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c007e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v5}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMin:I

    invoke-direct {p0, v5}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method private setRetDateTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 602
    const-string v1, ""

    .line 604
    .local v1, "mmdd":Ljava/lang/String;
    iget-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    if-eqz v3, :cond_1

    .line 605
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lnubia/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 607
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3, v4, v5}, Lnubia/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 610
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    sget-object v4, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v6, v3, :cond_0

    .line 611
    iput-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 612
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 619
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "lunarDate":Ljava/lang/String;
    iget-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    invoke-static {v0, v3}, Lnubia/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v0    # "lunarDate":Ljava/lang/String;
    .end local v2    # "solarDate":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    iput v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    .line 644
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetMonth:I

    .line 645
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    iput v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetDay:I

    .line 646
    return-void

    .line 614
    :cond_0
    iput-boolean v7, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 615
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 626
    :cond_1
    iget-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v3, :cond_2

    .line 627
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lnubia/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 629
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 630
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 639
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    .restart local v2    # "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    .end local v2    # "solarDate":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lnubia/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 635
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 636
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-boolean v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 623
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private setSolarTitle()V
    .locals 6

    .prologue
    .line 495
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c007e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v5}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMin:I

    invoke-direct {p0, v5}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "solarTitle":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method private setTwoDigital(I)Ljava/lang/String;
    .locals 2
    .param p1, "digital"    # I

    .prologue
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private setupNubiaSwitch()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    new-instance v1, Lnubia/widget/NubiaLunarTimePickerDialog$2;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaLunarTimePickerDialog$2;-><init>(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private tryNotifyTimeSet()V
    .locals 7

    .prologue
    const/16 v2, 0x7f5

    const/16 v1, 0x7b2

    .line 241
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    if-le v0, v2, :cond_2

    .line 242
    iput v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    .line 246
    :cond_0
    :goto_0
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->saveSwitchState()V

    .line 248
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mCallBack:Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->clearFocus()V

    .line 250
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setRetDateTime()V

    .line 251
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mCallBack:Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    iget v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetMonth:I

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetDay:I

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v5

    iget-object v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v6}, Lnubia/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lnubia/widget/NubiaLunarTimePickerDialog$onTimeSetListener;->onTimeSet(Lnubia/widget/NubiaLunarTimePickerView;IIIII)V

    .line 256
    :cond_1
    return-void

    .line 243
    :cond_2
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    if-ge v0, v1, :cond_0

    .line 244
    iput v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    goto :goto_0
.end method

.method private updateLunar()V
    .locals 8

    .prologue
    .line 358
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->adjustYearSolarToLunar()V

    .line 359
    const/4 v2, 0x0

    .line 361
    .local v2, "isLeapMonth":Z
    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_0

    .line 362
    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    add-int/lit8 v5, v5, -0x14

    iput v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 363
    const/4 v2, 0x1

    .line 366
    :cond_0
    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v5}, Lnubia/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    .line 367
    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "day":I
    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v5}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 371
    .local v3, "leapMonth":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2

    sget-object v5, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "mmdd_lun":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 376
    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    add-int/lit8 v0, v1, 0x1

    .line 382
    :cond_1
    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    iget v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v5, v6}, Lnubia/widget/NubiaLunarTimePickerView;->update(I)V

    .line 383
    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lnubia/widget/WheelView;->setValue(I)V

    .line 384
    return-void

    .line 371
    .end local v1    # "i":I
    .end local v4    # "mmdd_lun":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 375
    .restart local v1    # "i":I
    .restart local v4    # "mmdd_lun":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateLunarTitle()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 404
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    .line 405
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 407
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4, v5, v6}, Lnubia/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "mmdd":Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, "isLeapMonth":Z
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 412
    const/4 v0, 0x1

    .line 413
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 416
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "lunarYMD":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0}, Lnubia/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "solarDate":Ljava/lang/String;
    invoke-static {v3}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v3    # "solarDate":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 425
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setLunarTitle()V

    .line 426
    return-void

    .line 421
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateSolar()V
    .locals 5

    .prologue
    .line 437
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->adjustYearLunarToSolar()V

    .line 439
    iget v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lnubia/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 440
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lnubia/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "day":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    invoke-direct {p0, v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    invoke-direct {p0, v4}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnubia/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "mmdd_sol":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 448
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    add-int/lit8 v0, v1, 0x1

    .line 454
    :cond_0
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Lnubia/widget/NubiaLunarTimePickerView;->update(I)V

    .line 455
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setValue(I)V

    .line 456
    return-void

    .line 447
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateSolarTitle()V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 487
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v1, v2, v3}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 490
    iget v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 491
    invoke-direct {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    .line 492
    return-void
.end method

.method private updateTimePickerArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 684
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 686
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 687
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 688
    return-void
.end method


# virtual methods
.method public getCurrentAmPm()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 542
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lnubia/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v3

    if-ne v3, v1, :cond_3

    .line 543
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lnubia/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v0

    .line 545
    .local v0, "hour":I
    if-nez v0, :cond_0

    .line 546
    const/16 v0, 0x18

    .line 548
    :cond_0
    const/16 v3, 0xc

    if-le v0, v3, :cond_2

    .line 554
    .end local v0    # "hour":I
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "hour":I
    :cond_2
    move v1, v2

    .line 548
    goto :goto_0

    .line 550
    .end local v0    # "hour":I
    :cond_3
    iget-object v3, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lnubia/widget/NubiaLunarTimePickerView;->getmIsAm()Z

    move-result v3

    if-ne v3, v1, :cond_1

    move v1, v2

    .line 551
    goto :goto_0
.end method

.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 9
    .param p1, "isLuanrMode"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 560
    const-string v3, ""

    .line 561
    .local v3, "mmdd":Ljava/lang/String;
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v0

    .line 563
    .local v0, "hh":I
    const/16 v4, 0xc

    if-le v0, v4, :cond_0

    .line 564
    add-int/lit8 v0, v0, -0xc

    .line 567
    :cond_0
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lnubia/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v2

    .line 568
    .local v2, "mm":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lnubia/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 571
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 573
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4, v5, v6}, Lnubia/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 576
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    sget-object v5, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 577
    iput-boolean v7, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 578
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 598
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 580
    :cond_1
    iput-boolean v8, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 581
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 584
    :cond_2
    iget-boolean v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v4, :cond_3

    .line 585
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 587
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 588
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v4, v5, v6}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 591
    :cond_3
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lnubia/widget/NubiaLunarTimePickerView;->getMonthDayView()Lnubia/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lnubia/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 593
    iget v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 594
    iget-object v4, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-boolean v6, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v4, v5, v6}, Lnubia/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return v0
.end method

.method public getSwitchStateFromSP()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    invoke-virtual {p0}, Lnubia/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lunarTimePickerSwitch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "switchState"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    const-string v1, "PICKER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaLunarTimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 269
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lnubia/widget/NubiaLunarTimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 261
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 87
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 88
    return-void
.end method
