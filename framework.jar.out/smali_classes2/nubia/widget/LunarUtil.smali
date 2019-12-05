.class public Lnubia/widget/LunarUtil;
.super Ljava/lang/Object;
.source "LunarUtil.java"


# static fields
.field public static final ADD_20_IF_LEAPMONTH:I = 0x14

.field public static DAY:Ljava/lang/String; = null

.field public static EIGHT:Ljava/lang/String; = null

.field public static FIVE:Ljava/lang/String; = null

.field public static FOUR:Ljava/lang/String; = null

.field public static final IS_DAY:I = 0x2

.field public static final IS_MONTH:I = 0x1

.field public static final IS_YEAR:I = 0x0

.field public static LEAP:Ljava/lang/String; = null

.field public static LUNAR_ELEVENTH_MONTH:Ljava/lang/String; = null

.field public static LUNAR_FIRST_DAY:Ljava/lang/String; = null

.field public static LUNAR_FIRST_MONTH:Ljava/lang/String; = null

.field private static final LUNAR_INFO:[I

.field public static LUNAR_TWELVETH_MONTH:Ljava/lang/String; = null

.field public static LUNAR_TWENTHIETH_DAY:Ljava/lang/String; = null

.field private static final MAX_YEAR:I = 0x802

.field private static final MIN_YEAR:I = 0x76c

.field public static MONTH:Ljava/lang/String; = null

.field public static final MONTHS_LONG:[Ljava/lang/String;

.field public static final MONTHS_SHORT:[Ljava/lang/String;

.field public static NINE:Ljava/lang/String; = null

.field public static ONE:Ljava/lang/String; = null

.field public static SEVEN:Ljava/lang/String; = null

.field public static SIX:Ljava/lang/String; = null

.field private static final START_DATE:Ljava/lang/String; = "19000130"

.field public static TEN:Ljava/lang/String;

.field public static THREE:Ljava/lang/String;

.field public static TWO:Ljava/lang/String;

.field public static final WEEKDAYS_LONG:[Ljava/lang/String;

.field public static final WEEKDAYS_SHORT:[Ljava/lang/String;

.field public static YEAR:Ljava/lang/String;

.field public static ZERO:Ljava/lang/String;

.field public static am:Ljava/lang/String;

.field public static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isLeapYear:Z

.field static months:[I

.field public static pm:Ljava/lang/String;

.field static sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/16 v1, 0xc

    .line 10
    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    .line 33
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lnubia/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    .line 34
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lnubia/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lnubia/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    .line 36
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lnubia/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnubia/widget/LunarUtil;->arrayList:Ljava/util/ArrayList;

    .line 419
    const/4 v0, 0x0

    sput v0, Lnubia/widget/LunarUtil;->sum:I

    .line 420
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnubia/widget/LunarUtil;->months:[I

    return-void

    .line 10
    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    .line 420
    :array_1
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLunarDate(IIIZ)V
    .locals 3
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 126
    const/16 v1, 0x76c

    if-lt p0, v1, :cond_0

    const/16 v1, 0x802

    if-le p0, v1, :cond_1

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "lunar year error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    if-lt p1, v2, :cond_2

    const/16 v1, 0xc

    if-le p1, v1, :cond_3

    .line 130
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "lunar month error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_3
    if-lt p2, v2, :cond_4

    const/16 v1, 0x1e

    if-le p2, v1, :cond_5

    .line 133
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "lunar day error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_5
    invoke-static {p0}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 137
    .local v0, "leap":I
    if-ne p3, v2, :cond_6

    if-eq p1, v0, :cond_6

    .line 138
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "leap month error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_6
    return-void
.end method

.method public static clearSum()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    sput v0, Lnubia/widget/LunarUtil;->sum:I

    .line 435
    return-void
.end method

.method public static computeWeekday(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 399
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, "c":I
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 401
    .local v4, "y":I
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 402
    .local v2, "m":I
    const/16 v5, 0x8

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 403
    .local v1, "d":I
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 404
    add-int/lit8 v4, v4, -0x1

    .line 405
    if-gez v4, :cond_0

    .line 406
    add-int/lit8 v0, v0, -0x1

    .line 407
    const/16 v4, 0x63

    .line 409
    :cond_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/16 v2, 0xd

    .line 411
    :cond_1
    :goto_0
    div-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v4

    div-int/lit8 v6, v0, 0x4

    add-int/2addr v5, v6

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x1a

    div-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 413
    .local v3, "temp":I
    rem-int/lit8 v3, v3, 0x7

    .line 414
    if-gez v3, :cond_2

    .line 415
    add-int/lit8 v3, v3, 0x7

    .line 416
    :cond_2
    sget-object v5, Lnubia/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    aget-object v5, v5, v3

    return-object v5

    .line 409
    .end local v3    # "temp":I
    :cond_3
    const/16 v2, 0xe

    goto :goto_0
.end method

.method private static daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 6
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long v0, v2, v4

    .line 120
    .local v0, "between_days":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "md_str"    # Ljava/lang/String;
    .param p1, "md_arr"    # [Ljava/lang/String;
    .param p2, "lunYear"    # I

    .prologue
    const/16 v9, 0xa

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "day":I
    const/4 v3, 0x1

    .line 464
    .local v3, "j":I
    const/4 v2, 0x0

    .line 465
    .local v2, "isLeap":Z
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 466
    .local v5, "mmdd":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 467
    aget-object v6, p1, v1

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 468
    add-int/lit8 v0, v1, 0x1

    .line 472
    :cond_0
    if-nez v0, :cond_2

    .line 473
    const/4 v6, 0x0

    .line 502
    :goto_1
    return-object v6

    .line 466
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_2
    invoke-static {p2}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v4

    .line 476
    .local v4, "leapMonth":I
    const/4 v3, 0x1

    :goto_2
    const/16 v6, 0xc

    if-gt v3, v6, :cond_5

    .line 477
    if-ge v3, v4, :cond_3

    .line 478
    :try_start_0
    invoke-static {p2, v3}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_5

    .line 479
    invoke-static {p2, v3}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int/2addr v0, v6

    .line 476
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 482
    :cond_3
    if-ne v3, v4, :cond_6

    .line 483
    invoke-static {p2, v3}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_5

    .line 484
    invoke-static {p2, v3}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int/2addr v0, v6

    .line 485
    invoke-static {p2}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_4

    .line 486
    invoke-static {p2}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_3

    .line 488
    :cond_4
    const/4 v2, 0x1

    .line 502
    :cond_5
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_7

    const-string v6, "0"

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v3, v9, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v0, v9, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 494
    :cond_6
    :try_start_1
    invoke-static {p2, v3}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    sub-int v6, v0, v6

    if-lez v6, :cond_5

    .line 495
    invoke-static {p2, v3}, Lnubia/widget/LunarUtil;->getMonthDays(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_3

    .line 502
    :cond_7
    const-string v6, ""

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 500
    :catch_0
    move-exception v6

    goto/16 :goto_4
.end method

.method public static daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "md_str"    # Ljava/lang/String;
    .param p1, "md_arr"    # [Ljava/lang/String;
    .param p2, "isSolarLeapYear"    # Z

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "day":I
    const/4 v3, 0x0

    .line 441
    .local v3, "j":I
    const/4 v5, 0x0

    .line 442
    .local v5, "mm":I
    const/4 v1, 0x0

    .line 443
    .local v1, "dd":I
    new-instance v6, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 444
    .local v6, "mmdd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_0

    .line 445
    aget-object v7, p1, v2

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 446
    add-int/lit8 v0, v2, 0x1

    .line 450
    :cond_0
    if-nez v0, :cond_2

    .line 451
    const/4 v7, 0x0

    .line 456
    :goto_1
    return-object v7

    .line 444
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_2
    sget-object v8, Lnubia/widget/LunarUtil;->months:[I

    if-ne p2, v9, :cond_3

    const/16 v7, 0x1d

    :goto_2
    aput v7, v8, v9

    .line 453
    :goto_3
    sget-object v7, Lnubia/widget/LunarUtil;->months:[I

    aget v7, v7, v3

    sub-int v7, v0, v7

    if-lez v7, :cond_4

    .line 454
    sget-object v7, Lnubia/widget/LunarUtil;->months:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v7, v7, v3

    sub-int/2addr v0, v7

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    .line 452
    :cond_3
    const/16 v7, 0x1c

    goto :goto_2

    .line 456
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v10, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v0, v10, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method public static formatDate(III)Ljava/lang/String;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/16 v5, 0x9

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    if-le p1, v5, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    .local v1, "yearmonth":Ljava/lang/StringBuilder;
    :goto_0
    if-le p2, v5, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    .local v2, "yearmonthday":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 339
    .end local v1    # "yearmonth":Ljava/lang/StringBuilder;
    .end local v2    # "yearmonthday":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 341
    .restart local v1    # "yearmonth":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLeapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 78
    sget-object v0, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static getLeapMonthDays(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 82
    invoke-static {p0}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 84
    const/16 v0, 0x1d

    .line 89
    :goto_0
    return v0

    .line 86
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMonthDays(II)I
    .locals 3
    .param p0, "lunarYeay"    # I
    .param p1, "month"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "month error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    const/4 v1, 0x1

    rsub-int/lit8 v2, p1, 0x10

    shl-int v0, v1, v2

    .line 99
    .local v0, "bit":I
    sget-object v1, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 100
    const/16 v1, 0x1d

    .line 102
    :goto_0
    return v1

    :cond_2
    const/16 v1, 0x1e

    goto :goto_0
.end method

.method public static getTextRes(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->YEAR:Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->DAY:Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->LUNAR_FIRST_DAY:Ljava/lang/String;

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->LUNAR_TWENTHIETH_DAY:Ljava/lang/String;

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->LUNAR_FIRST_MONTH:Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->LUNAR_ELEVENTH_MONTH:Ljava/lang/String;

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->LUNAR_TWELVETH_MONTH:Ljava/lang/String;

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->ZERO:Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->ONE:Ljava/lang/String;

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->TWO:Ljava/lang/String;

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->THREE:Ljava/lang/String;

    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->FOUR:Ljava/lang/String;

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->FIVE:Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->SIX:Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->SEVEN:Ljava/lang/String;

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0077

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->EIGHT:Ljava/lang/String;

    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0078

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->NINE:Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->TEN:Ljava/lang/String;

    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->am:Ljava/lang/String;

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lnubia/widget/LunarUtil;->pm:Ljava/lang/String;

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "weekdaysFull":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 614
    sget-object v5, Lnubia/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    aget-object v6, v3, v0

    aput-object v6, v5, v0

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3080008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, "weekdaysShort":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 618
    sget-object v5, Lnubia/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "monthsFull":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 622
    sget-object v5, Lnubia/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    aget-object v6, v1, v0

    aput-object v6, v5, v0

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 624
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x308000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "monthsShort":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3
    array-length v5, v2

    if-ge v0, v5, :cond_3

    .line 626
    sget-object v5, Lnubia/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    aget-object v6, v2, v0

    aput-object v6, v5, v0

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 628
    :cond_3
    return-void
.end method

.method private static getYearDays(I)I
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 107
    const/16 v1, 0x15c

    .line 108
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 109
    sget-object v2, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    const v3, 0xfff0

    and-int/2addr v2, v3

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 108
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {p0}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public static isLeapMonth(II)Z
    .locals 2
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I

    .prologue
    .line 144
    invoke-static {p0}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 145
    .local v0, "leapMonthFlay":Z
    :goto_0
    return v0

    .line 144
    .end local v0    # "leapMonthFlay":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLessTen(I)Z
    .locals 1
    .param p0, "day"    # I

    .prologue
    .line 224
    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSolarLeapYear(I)Z
    .locals 1
    .param p0, "solarYear"    # I

    .prologue
    .line 328
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    .line 330
    :cond_1
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p0, "lunarDate"    # Ljava/lang/String;
    .param p1, "leapMonthFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 151
    .local v6, "lunarYear":I
    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 152
    .local v5, "lunarMonth":I
    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "lunarDay":I
    invoke-static {v6, v5, v4, p1}, Lnubia/widget/LunarUtil;->checkLunarDate(IIIZ)V

    .line 156
    const/4 v8, 0x0

    .line 157
    .local v8, "offset":I
    const/16 v2, 0x76c

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 158
    invoke-static {v2}, Lnubia/widget/LunarUtil;->getYearDays(I)I

    move-result v11

    .line 159
    .local v11, "yearDaysCount":I
    add-int/2addr v8, v11

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v11    # "yearDaysCount":I
    :cond_0
    invoke-static {v6}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 163
    .local v3, "leapMonth":I
    if-eq v3, v5, :cond_1

    const/4 v12, 0x1

    :goto_1
    and-int/2addr v12, p1

    if-eqz v12, :cond_2

    .line 164
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "the leapmonth flag error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 163
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 167
    :cond_2
    if-eqz v3, :cond_3

    if-ge v5, v3, :cond_7

    .line 168
    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_4

    .line 169
    invoke-static {v6, v2}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v10

    .line 170
    .local v10, "tempMonthDaysCount":I
    add-int/2addr v8, v10

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    .end local v10    # "tempMonthDaysCount":I
    :cond_4
    invoke-static {v6, v5}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v12

    if-le v4, v12, :cond_5

    .line 174
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 176
    :cond_5
    add-int/2addr v8, v4

    .line 206
    :cond_6
    :goto_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMdd"

    invoke-direct {v1, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 208
    .local v7, "myDate":Ljava/util/Date;
    const-string v12, "19000130"

    invoke-virtual {v1, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 211
    const/4 v12, 0x5

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->add(II)V

    .line 212
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 213
    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 178
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v7    # "myDate":Ljava/util/Date;
    :cond_7
    const/4 v2, 0x1

    :goto_4
    if-ge v2, v5, :cond_8

    .line 179
    invoke-static {v6, v2}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v10

    .line 180
    .restart local v10    # "tempMonthDaysCount":I
    add-int/2addr v8, v10

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 182
    .end local v10    # "tempMonthDaysCount":I
    :cond_8
    if-le v5, v3, :cond_a

    .line 183
    invoke-static {v6}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v9

    .line 184
    .local v9, "temp":I
    add-int/2addr v8, v9

    .line 186
    invoke-static {v6, v5}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v12

    if-le v4, v12, :cond_9

    .line 187
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 189
    :cond_9
    add-int/2addr v8, v4

    .line 190
    goto :goto_3

    .end local v9    # "temp":I
    :cond_a
    if-ne v5, v3, :cond_6

    .line 191
    if-eqz p1, :cond_b

    .line 192
    invoke-static {v6, v5}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v9

    .line 193
    .restart local v9    # "temp":I
    add-int/2addr v8, v9

    .line 194
    invoke-static {v6}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v12

    if-le v4, v12, :cond_c

    .line 195
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 198
    .end local v9    # "temp":I
    :cond_b
    invoke-static {v6, v5}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v12

    if-le v4, v12, :cond_c

    .line 199
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "lunar date error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 202
    :cond_c
    add-int/2addr v8, v4

    goto :goto_3
.end method

.method public static numConvert(II)Ljava/lang/String;
    .locals 13
    .param p0, "num"    # I
    .param p1, "type"    # I

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xb

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xa

    .line 347
    const/16 v6, 0xf

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lnubia/widget/LunarUtil;->ZERO:Ljava/lang/String;

    aput-object v7, v1, v6

    sget-object v6, Lnubia/widget/LunarUtil;->ONE:Ljava/lang/String;

    aput-object v6, v1, v9

    sget-object v6, Lnubia/widget/LunarUtil;->TWO:Ljava/lang/String;

    aput-object v6, v1, v10

    const/4 v6, 0x3

    sget-object v7, Lnubia/widget/LunarUtil;->THREE:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x4

    sget-object v7, Lnubia/widget/LunarUtil;->FOUR:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x5

    sget-object v7, Lnubia/widget/LunarUtil;->FIVE:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x6

    sget-object v7, Lnubia/widget/LunarUtil;->SIX:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x7

    sget-object v7, Lnubia/widget/LunarUtil;->SEVEN:Ljava/lang/String;

    aput-object v7, v1, v6

    const/16 v6, 0x8

    sget-object v7, Lnubia/widget/LunarUtil;->EIGHT:Ljava/lang/String;

    aput-object v7, v1, v6

    const/16 v6, 0x9

    sget-object v7, Lnubia/widget/LunarUtil;->NINE:Ljava/lang/String;

    aput-object v7, v1, v6

    sget-object v6, Lnubia/widget/LunarUtil;->TEN:Ljava/lang/String;

    aput-object v6, v1, v8

    sget-object v6, Lnubia/widget/LunarUtil;->LUNAR_TWENTHIETH_DAY:Ljava/lang/String;

    aput-object v6, v1, v11

    const/16 v6, 0xc

    sget-object v7, Lnubia/widget/LunarUtil;->LUNAR_FIRST_MONTH:Ljava/lang/String;

    aput-object v7, v1, v6

    sget-object v6, Lnubia/widget/LunarUtil;->LUNAR_ELEVENTH_MONTH:Ljava/lang/String;

    aput-object v6, v1, v12

    const/16 v6, 0xe

    sget-object v7, Lnubia/widget/LunarUtil;->LUNAR_TWELVETH_MONTH:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 354
    .local v1, "big":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_1

    .line 356
    const/16 v6, 0x802

    if-ge p0, v6, :cond_0

    const/16 v6, 0x76c

    if-le p0, v6, :cond_0

    .line 357
    div-int/lit16 v3, p0, 0x3e8

    .line 358
    .local v3, "qian":I
    rem-int/lit16 v6, p0, 0x3e8

    div-int/lit8 v0, v6, 0x64

    .line 359
    .local v0, "bai":I
    rem-int/lit16 v6, p0, 0x3e8

    rem-int/lit8 v6, v6, 0x64

    div-int/lit8 v5, v6, 0xa

    .line 360
    .local v5, "shi":I
    rem-int/lit16 v6, p0, 0x3e8

    rem-int/lit8 v6, v6, 0x64

    rem-int/lit8 v2, v6, 0xa

    .line 361
    .local v2, "ge":I
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    aget-object v6, v1, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    aget-object v6, v1, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    .end local v0    # "bai":I
    .end local v2    # "ge":I
    .end local v3    # "qian":I
    .end local v5    # "shi":I
    :goto_0
    return-object v6

    .line 367
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 368
    :cond_1
    if-ne p1, v9, :cond_7

    .line 369
    if-lez p0, :cond_2

    if-le p0, v12, :cond_3

    .line 370
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 371
    :cond_3
    if-ne p0, v9, :cond_4

    .line 372
    const/16 v6, 0xc

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 373
    :cond_4
    if-gt p0, v8, :cond_5

    .line 374
    aget-object v6, v1, p0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 376
    :cond_5
    if-ne p0, v11, :cond_6

    aget-object v6, v1, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v6, 0xe

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 378
    :cond_7
    if-ne p1, v10, :cond_d

    .line 379
    if-lez p0, :cond_8

    const/16 v6, 0x1f

    if-le p0, v6, :cond_9

    .line 380
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 381
    :cond_9
    if-gt p0, v8, :cond_a

    .line 382
    sget-object v6, Lnubia/widget/LunarUtil;->LUNAR_FIRST_DAY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 384
    :cond_a
    div-int/lit8 v5, p0, 0xa

    .line 385
    .restart local v5    # "shi":I
    rem-int/lit8 v2, p0, 0xa

    .line 386
    .restart local v2    # "ge":I
    if-nez v2, :cond_b

    .line 387
    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 388
    :cond_b
    if-ne v5, v9, :cond_c

    .line 389
    aget-object v6, v1, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 390
    :cond_c
    if-ne v5, v10, :cond_d

    .line 391
    aget-object v6, v1, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 394
    .end local v2    # "ge":I
    .end local v5    # "shi":I
    :cond_d
    const-string v6, "**"

    goto/16 :goto_0
.end method

.method public static solarDayTolunarDay(IIZ)[Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "isLeapMonth"    # Z

    .prologue
    const/16 v3, 0x1e

    .line 257
    new-array v1, v3, [Ljava/lang/String;

    .line 259
    .local v1, "lunarDay":[Ljava/lang/String;
    if-nez p2, :cond_1

    .line 260
    :try_start_0
    invoke-static {p0, p1}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 261
    const/16 v2, 0x1d

    new-array v1, v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 270
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    invoke-static {p0}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 264
    const/16 v2, 0x1d

    new-array v1, v2, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    .restart local v0    # "i":I
    :cond_2
    return-object v1

    .line 267
    .end local v0    # "i":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static solarMonthTolunarMonth(I)[Ljava/lang/String;
    .locals 6
    .param p0, "year"    # I

    .prologue
    const/4 v5, 0x1

    .line 236
    const/16 v3, 0xc

    new-array v2, v3, [Ljava/lang/String;

    .line 237
    .local v2, "lunarMonth":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "leapMonth":I
    invoke-static {p0}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/16 v3, 0xd

    new-array v2, v3, [Ljava/lang/String;

    .line 241
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 242
    if-lez v1, :cond_3

    .line 243
    if-ne v1, v0, :cond_1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 241
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    if-le v0, v1, :cond_2

    .line 246
    invoke-static {v0, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 248
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 250
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3, v5}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 252
    :cond_4
    return-object v2
.end method

.method public static solarSumDays(III)I
    .locals 5
    .param p0, "mm"    # I
    .param p1, "dd"    # I
    .param p2, "yyyy"    # I

    .prologue
    const/4 v3, 0x1

    .line 424
    invoke-static {p2}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    .line 425
    .local v0, "isSolarLeapYear":Z
    sget-object v2, Lnubia/widget/LunarUtil;->months:[I

    if-ne v0, v3, :cond_0

    const/16 v1, 0x1d

    :goto_0
    aput v1, v2, v3

    .line 426
    if-ne p0, v3, :cond_1

    .line 427
    sget v1, Lnubia/widget/LunarUtil;->sum:I

    add-int/2addr v1, p1

    .line 430
    :goto_1
    return v1

    .line 425
    :cond_0
    const/16 v1, 0x1c

    goto :goto_0

    .line 429
    :cond_1
    sget v1, Lnubia/widget/LunarUtil;->sum:I

    add-int/lit8 v2, p0, -0x1

    sget-object v3, Lnubia/widget/LunarUtil;->months:[I

    add-int/lit8 v4, p0, -0x2

    aget v3, v3, v4

    invoke-static {v2, v3, p2}, Lnubia/widget/LunarUtil;->solarSumDays(III)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lnubia/widget/LunarUtil;->sum:I

    .line 430
    sget v1, Lnubia/widget/LunarUtil;->sum:I

    add-int/2addr v1, p1

    goto :goto_1
.end method

.method public static solarToLunar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "solarYear":I
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "solarMonth":I
    const/16 v3, 0x8

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "solarDay":I
    invoke-static {v2, v1, v0}, Lnubia/widget/SolarToLunar;->calendarSolarToLundar(III)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static solarYearTolunarYear()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    sget-object v2, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 229
    .local v1, "lunarYear":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lnubia/widget/LunarUtil;->LUNAR_INFO:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 230
    add-int/lit16 v2, v0, 0x7b2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-object v1
.end method

.method public static timePickerLunMonthDay(I)[Ljava/lang/String;
    .locals 17
    .param p0, "lunYear"    # I

    .prologue
    .line 507
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lnubia/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 509
    .local v2, "leapMonth":I
    if-lez v2, :cond_1

    const/16 v9, 0xd

    .line 510
    .local v9, "maxMonth":I
    :goto_0
    const/16 v8, 0x1e

    .line 511
    .local v8, "maxDay":I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .local v10, "month":I
    :goto_1
    if-gt v10, v9, :cond_f

    .line 514
    if-gt v10, v2, :cond_2

    .line 515
    :try_start_0
    move/from16 v0, p0

    invoke-static {v0, v10}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v8

    .line 523
    :goto_2
    const-string v11, ""

    .line 524
    .local v11, "month_str":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 525
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    const-string v14, "0"

    :goto_3
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 532
    :cond_0
    :goto_4
    const/4 v1, 0x1

    .local v1, "day":I
    :goto_5
    if-gt v1, v8, :cond_e

    .line 533
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v14, 0xa

    if-ge v1, v14, :cond_c

    const-string v14, "0"

    :goto_6
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, "lunarDate":Ljava/lang/String;
    const-string v13, ""

    .line 536
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_d

    .line 537
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 539
    .local v7, "lunarYear":I
    const/4 v14, 0x4

    const/4 v15, 0x6

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 541
    .local v6, "lunarMonth":I
    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 543
    .local v5, "lunarDay":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    invoke-static {v6, v15}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v5, v15}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 555
    :goto_7
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 509
    .end local v1    # "day":I
    .end local v4    # "lunarDate":Ljava/lang/String;
    .end local v5    # "lunarDay":I
    .end local v6    # "lunarMonth":I
    .end local v7    # "lunarYear":I
    .end local v8    # "maxDay":I
    .end local v9    # "maxMonth":I
    .end local v10    # "month":I
    .end local v11    # "month_str":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "str":Ljava/lang/String;
    :cond_1
    const/16 v9, 0xc

    goto/16 :goto_0

    .line 516
    .restart local v8    # "maxDay":I
    .restart local v9    # "maxMonth":I
    .restart local v10    # "month":I
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v14, v2, 0x1

    if-ne v10, v14, :cond_3

    .line 517
    invoke-static/range {p0 .. p0}, Lnubia/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v8

    goto/16 :goto_2

    .line 518
    :cond_3
    if-lez v2, :cond_4

    add-int/lit8 v14, v2, 0x1

    if-le v10, v14, :cond_4

    .line 519
    add-int/lit8 v14, v10, -0x1

    move/from16 v0, p0

    invoke-static {v0, v14}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v8

    goto/16 :goto_2

    .line 521
    :cond_4
    move/from16 v0, p0

    invoke-static {v0, v10}, Lnubia/widget/LunarUtil;->getMonthDays(II)I

    move-result v8

    goto/16 :goto_2

    .line 525
    .restart local v11    # "month_str":Ljava/lang/String;
    :cond_5
    const-string v14, ""

    goto/16 :goto_3

    .line 526
    :cond_6
    if-gt v10, v2, :cond_8

    .line 527
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0xa

    if-ge v10, v14, :cond_7

    const-string v14, "0"

    :goto_8
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_7
    const-string v14, ""

    goto :goto_8

    .line 528
    :cond_8
    if-lez v2, :cond_a

    add-int/lit8 v14, v2, 0x1

    if-ne v10, v14, :cond_a

    .line 529
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v14, v10, -0x1

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    const-string v14, "0"

    :goto_9
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_9
    const-string v14, ""

    goto :goto_9

    .line 530
    :cond_a
    if-lez v2, :cond_0

    add-int/lit8 v14, v2, 0x1

    if-le v10, v14, :cond_0

    .line 531
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, -0x1

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    const-string v14, "0"

    :goto_a
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_b
    const-string v14, ""

    goto :goto_a

    .line 533
    .restart local v1    # "day":I
    :cond_c
    const-string v14, ""

    goto/16 :goto_6

    .line 546
    .restart local v4    # "lunarDate":Ljava/lang/String;
    .restart local v13    # "str":Ljava/lang/String;
    :cond_d
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 548
    .restart local v7    # "lunarYear":I
    const/4 v14, 0x5

    const/4 v15, 0x7

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 550
    .restart local v6    # "lunarMonth":I
    const/4 v14, 0x7

    const/16 v15, 0x9

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 552
    .restart local v5    # "lunarDay":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lnubia/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v6, v15}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v5, v15}, Lnubia/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto/16 :goto_7

    .line 557
    .end local v1    # "day":I
    .end local v4    # "lunarDate":Ljava/lang/String;
    .end local v5    # "lunarDay":I
    .end local v6    # "lunarMonth":I
    .end local v7    # "lunarYear":I
    .end local v11    # "month_str":Ljava/lang/String;
    .end local v13    # "str":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 512
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 560
    :cond_f
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    return-object v14
.end method

.method public static timePickerSolMonthDay(I)[Ljava/lang/String;
    .locals 10
    .param p0, "solarYear"    # I

    .prologue
    const/16 v9, 0xa

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    .line 278
    .local v1, "isSolLeapYear":Z
    const/16 v3, 0x1f

    .line 279
    .local v3, "maxDay":I
    const/4 v0, 0x1

    .line 280
    .local v0, "day":I
    const/4 v4, 0x1

    .line 281
    .local v4, "month":I
    const/4 v4, 0x1

    :goto_0
    const/16 v6, 0xc

    if-gt v4, v6, :cond_7

    .line 282
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 283
    if-eqz v1, :cond_0

    const/16 v3, 0x1d

    .line 290
    :goto_1
    const-string v5, ""

    .line 291
    .local v5, "str":Ljava/lang/String;
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v3, :cond_6

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v4, v9, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lnubia/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v0, v9, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lnubia/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 283
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x1c

    goto :goto_1

    .line 284
    :cond_1
    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xb

    if-ne v4, v6, :cond_3

    .line 286
    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    .line 288
    :cond_3
    const/16 v3, 0x1f

    goto :goto_1

    .line 292
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    .line 281
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    .end local v5    # "str":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static timePickerUSMonthDay(I)[Ljava/lang/String;
    .locals 9
    .param p0, "USYear"    # I

    .prologue
    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lnubia/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    .line 305
    .local v1, "isSolLeapYear":Z
    const/16 v3, 0x1f

    .line 306
    .local v3, "maxDay":I
    const/4 v0, 0x1

    .line 307
    .local v0, "day":I
    const/4 v4, 0x1

    .line 308
    .local v4, "month":I
    const/4 v4, 0x1

    :goto_0
    const/16 v6, 0xc

    if-gt v4, v6, :cond_6

    .line 309
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 310
    if-eqz v1, :cond_0

    const/16 v3, 0x1d

    .line 317
    :goto_1
    const-string v5, ""

    .line 318
    .local v5, "str":Ljava/lang/String;
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v3, :cond_5

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lnubia/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    add-int/lit8 v8, v4, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge v0, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 310
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x1c

    goto :goto_1

    .line 311
    :cond_1
    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xb

    if-ne v4, v6, :cond_3

    .line 313
    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    .line 315
    :cond_3
    const/16 v3, 0x1f

    goto :goto_1

    .line 319
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 308
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    .end local v5    # "str":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method
