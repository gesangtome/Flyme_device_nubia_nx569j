.class Lnubia/widget/WheelView$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lnubia/widget/WheelView$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field mZeroDigit:C


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    .line 691
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 694
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 695
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lnubia/widget/WheelView$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 696
    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 719
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static getZeroDigit(Ljava/util/Locale;)C
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 715
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lnubia/widget/WheelView$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 700
    invoke-static {p1}, Lnubia/widget/WheelView$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mZeroDigit:C

    .line 701
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 704
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 705
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-char v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mZeroDigit:C

    invoke-static {v0}, Lnubia/widget/WheelView$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 706
    invoke-direct {p0, v0}, Lnubia/widget/WheelView$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 708
    :cond_0
    iget-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 709
    iget-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 710
    iget-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    const-string v2, "%02d"

    iget-object v3, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 711
    iget-object v1, p0, Lnubia/widget/WheelView$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
