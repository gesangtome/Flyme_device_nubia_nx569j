.class public final Lnubia/os/edge/EdgeFeatureConfig;
.super Ljava/lang/Object;
.source "EdgeFeatureConfig.java"


# static fields
.field private static sCZoneWeakWidth:I

.field private static sCZoneWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 13
    sput v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    .line 14
    sput v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEdgeDeviceCWeakWidth()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 55
    sget v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    if-ltz v3, :cond_0

    .line 56
    sget v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 70
    .local v1, "width":Ljava/lang/String;
    :goto_0
    return v2

    .line 58
    .end local v1    # "width":Ljava/lang/String;
    :cond_0
    const-string v3, "ro.nubia.edge.weakwidth"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .restart local v1    # "width":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->getEdgeDeviceCWidth()I

    move-result v2

    sput v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 61
    sget v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    goto :goto_0

    .line 64
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 65
    sget v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 68
    sput v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    goto :goto_0
.end method

.method public static getEdgeDeviceCWidth()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 34
    sget v4, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    if-ltz v4, :cond_1

    .line 35
    sget v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    .line 51
    .local v2, "width":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 37
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    const-string v4, "ro.nubia.edge.area.width"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .restart local v2    # "width":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "values":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 44
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    .line 45
    sget v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 48
    sput v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    goto :goto_0
.end method

.method public static isEdgeFeatureEnable()Z
    .locals 3

    .prologue
    .line 18
    const-string v1, "ro.nubia.edge.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isEdgeIncomplete()Z
    .locals 3

    .prologue
    .line 29
    const-string v1, "ro.nubia.edge.incomplete"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static loadConfig()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
