.class public Lnubia/widget/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;,
        Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;,
        Lnubia/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static mIsCN:Z


# instance fields
.field private isCurrentMonthLeap:Z

.field private final mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

.field private mCurrday:I

.field private mCurrmonth:I

.field private mCurryear:I

.field private final mDatePicker:Lnubia/widget/DatePickerView;

.field private mFormatdateString:Ljava/lang/String;

.field private mLoadDayVlaue:I

.field private mLoadMonthVlaue:I

.field private mLoadYearVlaue:I

.field private mLunarDateLayout:Landroid/view/View;

.field private mLunarDay:I

.field private mLunarDayLabel:Ljava/lang/String;

.field private mLunarLabel:Landroid/widget/TextView;

.field private mLunarMonth:I

.field private mLunarMonthLabel:Ljava/lang/String;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mNubiaSwitch:Lnubia/widget/NubiaSwitch;

.field private mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

.field private mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

.field private mSolarDay:I

.field private mSolarMonth:I

.field private mSolarYear:I

.field private mSwtichEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILnubia/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lnubia/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-boolean v5, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 63
    iput-boolean v5, p0, Lnubia/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 82
    invoke-virtual {p0, v3}, Lnubia/widget/DatePickerDialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {p0, v3}, Lnubia/widget/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    iput-object p3, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    .line 86
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    .local v1, "themeContext":Landroid/content/Context;
    invoke-direct {p0, p1}, Lnubia/widget/DatePickerDialog;->getCurrentLanguage(Landroid/content/Context;)V

    .line 88
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030011

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lnubia/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 95
    const v3, 0x30d0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    .line 96
    const v3, 0x30d0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/DatePickerView;

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    .line 98
    const v3, 0x30d0044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const v4, 0x30c0067

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    const v3, 0x30d0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/NubiaSwitch;

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    .line 103
    sget-boolean v3, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0, v5}, Lnubia/widget/DatePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 107
    :cond_0
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    new-instance v4, Lnubia/widget/DatePickerDialog$1;

    invoke-direct {v4, p0}, Lnubia/widget/DatePickerDialog$1;-><init>(Lnubia/widget/DatePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    if-nez v3, :cond_1

    .line 116
    new-instance v3, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-direct {v3, p0, v6}, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    .line 119
    :cond_1
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->getTextRes()V

    .line 120
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->setupNubiaSwitch()V

    .line 122
    iput p4, p0, Lnubia/widget/DatePickerDialog;->mLoadYearVlaue:I

    .line 123
    add-int/lit8 v3, p5, 0x1

    iput v3, p0, Lnubia/widget/DatePickerDialog;->mLoadMonthVlaue:I

    .line 124
    iput p6, p0, Lnubia/widget/DatePickerDialog;->mLoadDayVlaue:I

    .line 125
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->setup()V

    .line 126
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    if-nez v3, :cond_2

    .line 127
    new-instance v3, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 129
    :cond_2
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lnubia/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lnubia/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    sget-boolean v3, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getSwitchStateFromSP()Z

    move-result v3

    iput-boolean v3, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 135
    iget-boolean v3, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eqz v3, :cond_3

    .line 136
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    invoke-virtual {v3}, Lnubia/widget/NubiaSwitch;->toggle()V

    .line 139
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnubia/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lnubia/widget/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 75
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnubia/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILnubia/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/DatePickerDialog;)Lnubia/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$1000(Lnubia/widget/DatePickerDialog;III)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lnubia/widget/DatePickerDialog;->setSolarTitle(III)V

    return-void
.end method

.method static synthetic access$1100(Lnubia/widget/DatePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnubia/widget/DatePickerDialog;->resolveLunarDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lnubia/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->updateLunarBySolar()V

    return-void
.end method

.method static synthetic access$1400(Lnubia/widget/DatePickerDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnubia/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lnubia/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mSolarYear:I

    return v0
.end method

.method static synthetic access$1502(Lnubia/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lnubia/widget/DatePickerDialog;->mSolarYear:I

    return p1
.end method

.method static synthetic access$1600(Lnubia/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mSolarMonth:I

    return v0
.end method

.method static synthetic access$1700(Lnubia/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mSolarDay:I

    return v0
.end method

.method static synthetic access$1800(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lnubia/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->saveSwitchState()V

    return-void
.end method

.method static synthetic access$2000(Lnubia/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method static synthetic access$300(Lnubia/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    return v0
.end method

.method static synthetic access$302(Lnubia/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    return p1
.end method

.method static synthetic access$400(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    return-object v0
.end method

.method static synthetic access$500(Lnubia/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    return v0
.end method

.method static synthetic access$502(Lnubia/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    return p1
.end method

.method static synthetic access$512(Lnubia/widget/DatePickerDialog;I)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    add-int/2addr v0, p1

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    return v0
.end method

.method static synthetic access$600(Lnubia/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mCurrday:I

    return v0
.end method

.method static synthetic access$602(Lnubia/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lnubia/widget/DatePickerDialog;->mCurrday:I

    return p1
.end method

.method static synthetic access$700(Lnubia/widget/DatePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lnubia/widget/DatePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lnubia/widget/DatePickerDialog;III)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lnubia/widget/DatePickerDialog;->setLunarTitleByValues(III)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    return v0
.end method

.method private getCurrentLanguage(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x1

    sput-boolean v1, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    goto :goto_0
.end method

.method private getTextRes()V
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnubia/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 570
    sget-object v0, Lnubia/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/DatePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 571
    sget-object v0, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/DatePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 572
    sget-object v0, Lnubia/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/DatePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 573
    return-void
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

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 441
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mLunarYear:I

    .line 442
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mLunarMonth:I

    .line 443
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mLunarDay:I

    .line 455
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mLunarYear:I

    .line 451
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mLunarMonth:I

    .line 453
    const/16 v0, 0x9

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mLunarDay:I

    goto :goto_0
.end method

.method private resolveSolarDate(Ljava/lang/String;)V
    .locals 3
    .param p1, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mSolarYear:I

    .line 459
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mSolarMonth:I

    .line 460
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerDialog;->mSolarDay:I

    .line 461
    return-void
.end method

.method private saveSwitchState()V
    .locals 5

    .prologue
    .line 535
    sget-boolean v2, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    if-nez v2, :cond_0

    .line 543
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "datePickerSwitch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 540
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "switchState"

    iget-boolean v3, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setLunarTitleByLunarMonth(IIIZ)V
    .locals 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "curMonthIsLeap"    # Z

    .prologue
    .line 410
    const-string v3, ""

    .line 411
    .local v3, "monthString":Ljava/lang/String;
    invoke-static {p1}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 413
    .local v0, "leapMonth":I
    if-lez v0, :cond_1

    .line 414
    if-ne p2, v0, :cond_0

    if-eqz p4, :cond_0

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p2, v6}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    :goto_0
    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "weekday":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {p3, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "lunarDay":Ljava/lang/String;
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c007d

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnubia/widget/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    return-void

    .line 418
    .end local v1    # "lunarDay":Ljava/lang/String;
    .end local v2    # "lunarTitle":Ljava/lang/String;
    .end local v4    # "weekday":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    invoke-static {p2, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 421
    :cond_1
    const/4 v5, 0x1

    invoke-static {p2, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setLunarTitleByValues(III)V
    .locals 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 381
    const-string v3, ""

    .line 382
    .local v3, "monthString":Ljava/lang/String;
    invoke-static {p1}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 384
    .local v0, "leapMonth":I
    if-lez v0, :cond_2

    .line 385
    add-int/lit8 v0, v0, 0x1

    .line 386
    if-ne p2, v0, :cond_0

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p2, -0x1

    invoke-static {v6, v10}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    :goto_0
    invoke-static {p1, p2, p3}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    .line 401
    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "weekday":Ljava/lang/String;
    invoke-static {p3, v11}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "lunarDay":Ljava/lang/String;
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c007d

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v3, v7, v10

    aput-object v1, v7, v11

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnubia/widget/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    return-void

    .line 389
    .end local v1    # "lunarDay":Ljava/lang/String;
    .end local v2    # "lunarTitle":Ljava/lang/String;
    .end local v4    # "weekday":Ljava/lang/String;
    :cond_0
    if-le p2, v0, :cond_1

    .line 390
    add-int/lit8 v5, p2, -0x1

    invoke-static {v5, v10}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 394
    :cond_1
    invoke-static {p2, v10}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 397
    :cond_2
    invoke-static {p2, v10}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setSolarTitle(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 431
    invoke-static {p1, p2, p3}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnubia/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "weekday":Ljava/lang/String;
    sget-object v3, Lnubia/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    add-int/lit8 v4, p2, -0x1

    aget-object v0, v3, v4

    .line 434
    .local v0, "monthStr":Ljava/lang/String;
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c007c

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "solarTitle":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/widget/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method

.method private setup()V
    .locals 5

    .prologue
    .line 156
    sget-boolean v0, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-nez v0, :cond_1

    .line 157
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lnubia/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lnubia/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lnubia/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 158
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget v1, p0, Lnubia/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lnubia/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object v4, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-boolean v0, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_0

    .line 161
    iget v0, p0, Lnubia/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lnubia/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lnubia/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lnubia/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 162
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget v1, p0, Lnubia/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lnubia/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object v4, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    goto :goto_0
.end method

.method private setupNubiaSwitch()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    new-instance v1, Lnubia/widget/DatePickerDialog$2;

    invoke-direct {v1, p0}, Lnubia/widget/DatePickerDialog$2;-><init>(Lnubia/widget/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private tryNotifyDateSet()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 172
    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v6, :cond_2

    .line 173
    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->clearFocus()V

    .line 175
    iget-boolean v6, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eqz v6, :cond_5

    .line 176
    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getYear()I

    move-result v6

    iput v6, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    .line 177
    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getMonth()I

    move-result v6

    iput v6, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    .line 178
    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getDayOfMonth()I

    move-result v6

    iput v6, p0, Lnubia/widget/DatePickerDialog;->mCurrday:I

    .line 179
    const/4 v3, 0x0

    .line 181
    .local v3, "lunarToSolar":Ljava/lang/String;
    :try_start_0
    iget v6, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v6}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 182
    .local v2, "leapMonth":I
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 183
    .local v0, "hasLeapMonth":Z
    :goto_0
    const/4 v1, 0x0

    .line 184
    .local v1, "isCurMonthLeap":Z
    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v6}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "values":[Ljava/lang/String;
    iget v6, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    aget-object v6, v4, v6

    sget-object v7, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 188
    const/4 v1, 0x1

    .line 191
    :cond_0
    if-eqz v0, :cond_4

    .line 192
    iget v5, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    if-ge v5, v2, :cond_1

    .line 193
    iget v5, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    .line 199
    :cond_1
    :goto_1
    iget v5, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    iget v6, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    iget v7, p0, Lnubia/widget/DatePickerDialog;->mCurrday:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    .line 201
    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5, v1}, Lnubia/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-direct {p0, v3}, Lnubia/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v4    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget v7, p0, Lnubia/widget/DatePickerDialog;->mSolarYear:I

    iget v8, p0, Lnubia/widget/DatePickerDialog;->mSolarMonth:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lnubia/widget/DatePickerDialog;->mSolarDay:I

    invoke-interface {v5, v6, v7, v8, v9}, Lnubia/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lnubia/widget/DatePickerView;III)V

    .line 215
    .end local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .restart local v2    # "leapMonth":I
    .restart local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 182
    goto :goto_0

    .line 196
    .restart local v0    # "hasLeapMonth":Z
    .restart local v1    # "isCurMonthLeap":Z
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v5, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 204
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 209
    .end local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    iget-object v6, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget-object v7, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v7}, Lnubia/widget/DatePickerView;->getYear()I

    move-result v7

    iget-object v8, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v8}, Lnubia/widget/DatePickerView;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v9}, Lnubia/widget/DatePickerView;->getDayOfMonth()I

    move-result v9

    invoke-interface {v5, v6, v7, v8, v9}, Lnubia/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lnubia/widget/DatePickerView;III)V

    goto :goto_3
.end method

.method private updateLunarBySolar()V
    .locals 8

    .prologue
    const/16 v7, 0x7f5

    const/16 v4, 0x7b2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "curMonthIsLeap":Z
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLunarYear:I

    if-ge v3, v4, :cond_1

    .line 345
    iput v4, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    .line 352
    :goto_0
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLunarMonth:I

    iput v3, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    .line 353
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLunarDay:I

    iput v3, p0, Lnubia/widget/DatePickerDialog;->mCurrday:I

    .line 355
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 356
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v3, v3, -0x14

    iput v3, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    .line 357
    const/4 v0, 0x1

    .line 360
    :cond_0
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getYearWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 361
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v3}, Lnubia/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "months":[Ljava/lang/String;
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 364
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 365
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 367
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    iget v4, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    invoke-static {v3, v4, v0}, Lnubia/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "days":[Ljava/lang/String;
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 371
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 372
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getDayWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget v4, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    iget v5, p0, Lnubia/widget/DatePickerDialog;->mLunarMonth:I

    iget v6, p0, Lnubia/widget/DatePickerDialog;->mCurrday:I

    iget-object v7, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v3, v4, v5, v6, v7}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 376
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLunarYear:I

    iget v4, p0, Lnubia/widget/DatePickerDialog;->mCurrmonth:I

    iget v5, p0, Lnubia/widget/DatePickerDialog;->mLunarDay:I

    invoke-direct {p0, v3, v4, v5, v0}, Lnubia/widget/DatePickerDialog;->setLunarTitleByLunarMonth(IIIZ)V

    .line 378
    return-void

    .line 346
    .end local v1    # "days":[Ljava/lang/String;
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLunarYear:I

    if-le v3, v7, :cond_2

    .line 347
    iput v7, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    goto/16 :goto_0

    .line 349
    :cond_2
    iget v3, p0, Lnubia/widget/DatePickerDialog;->mLunarYear:I

    iput v3, p0, Lnubia/widget/DatePickerDialog;->mCurryear:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lnubia/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDatePicker()Lnubia/widget/DatePickerView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    return-object v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 11
    .param p1, "isLuanrMode"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 486
    iput-boolean v4, p0, Lnubia/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 487
    const-string v3, ""

    .line 488
    .local v3, "date":Ljava/lang/String;
    iget-object v9, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v9}, Lnubia/widget/DatePickerView;->getYear()I

    move-result v2

    .line 489
    .local v2, "curYear":I
    iget-object v9, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v9}, Lnubia/widget/DatePickerView;->getMonth()I

    move-result v1

    .line 490
    .local v1, "curMonth":I
    iget-object v9, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v9}, Lnubia/widget/DatePickerView;->getDayOfMonth()I

    move-result v0

    .line 492
    .local v0, "curDay":I
    if-eqz p1, :cond_4

    .line 493
    invoke-static {v2}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v6

    .line 494
    .local v6, "leapMonth":I
    if-nez v6, :cond_2

    .line 495
    .local v4, "hasLeapMonth":Z
    :goto_0
    const/4 v5, 0x0

    .line 496
    .local v5, "isCurMonthLeap":Z
    iget-object v9, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v9}, Lnubia/widget/DatePickerView;->getMonthWheelView()Lnubia/widget/WheelView;

    move-result-object v9

    invoke-virtual {v9}, Lnubia/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v7

    .line 499
    .local v7, "values":[Ljava/lang/String;
    aget-object v9, v7, v1

    sget-object v10, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v8, :cond_0

    .line 500
    const/4 v5, 0x1

    .line 501
    iput-boolean v5, p0, Lnubia/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 504
    :cond_0
    if-eqz v4, :cond_3

    .line 506
    if-ge v1, v6, :cond_1

    .line 507
    add-int/lit8 v1, v1, 0x1

    .line 513
    :cond_1
    :goto_1
    add-int/lit8 v8, v0, 0x1

    invoke-static {v2, v1, v8}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    .line 515
    .end local v4    # "hasLeapMonth":Z
    .end local v5    # "isCurMonthLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "values":[Ljava/lang/String;
    :goto_2
    return-object v8

    .restart local v6    # "leapMonth":I
    :cond_2
    move v4, v8

    .line 494
    goto :goto_0

    .line 510
    .restart local v4    # "hasLeapMonth":Z
    .restart local v5    # "isCurMonthLeap":Z
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    .end local v4    # "hasLeapMonth":Z
    .end local v5    # "isCurMonthLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_4
    invoke-static {v2, v1, v0}, Lnubia/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    return v0
.end method

.method public getSwitchStateFromSP()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 529
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "datePickerSwitch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 531
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
    .line 231
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 232
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    const-string v1, "PICKER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/DatePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v2}, Lnubia/widget/DatePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 220
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchState(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 546
    sget-boolean v0, Lnubia/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-boolean v0, p0, Lnubia/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eq v0, p1, :cond_0

    .line 552
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mNubiaSwitch:Lnubia/widget/NubiaSwitch;

    invoke-virtual {v0}, Lnubia/widget/NubiaSwitch;->toggle()V

    goto :goto_0
.end method

.method public setYearMinMaxValue(II)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 562
    .local v2, "years":[Ljava/lang/String;
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getYearWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getYearWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 564
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getYearWheelView()Lnubia/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 565
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v0, p1, p2, p3}, Lnubia/widget/DatePickerView;->updateDate(III)V

    .line 169
    return-void
.end method
