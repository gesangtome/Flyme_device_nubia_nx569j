.class public Lnubia/net/NubiaTrafficStats;
.super Ljava/lang/Object;
.source "NubiaTrafficStats.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NubiaTrafficStats"

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIfaceUidRxBytes(Ljava/lang/String;I)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnubia/net/NubiaTrafficStats;->nativeGetIfaceUidStat(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIfaceUidRxPackets(Ljava/lang/String;I)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnubia/net/NubiaTrafficStats;->nativeGetIfaceUidStat(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIfaceUidTxBytes(Ljava/lang/String;I)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lnubia/net/NubiaTrafficStats;->nativeGetIfaceUidStat(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIfaceUidTxPackets(Ljava/lang/String;I)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lnubia/net/NubiaTrafficStats;->nativeGetIfaceUidStat(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeGetIfaceUidStat(Ljava/lang/String;II)J
.end method
