.class public Lnubia/net/wifi/WifiRssiInfo;
.super Ljava/lang/Object;
.source "WifiRssiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnubia/net/wifi/WifiRssiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastSignalRssi:I

.field private mNewFreq:I

.field private mNewRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lnubia/net/wifi/WifiRssiInfo$1;

    invoke-direct {v0}, Lnubia/net/wifi/WifiRssiInfo$1;-><init>()V

    sput-object v0, Lnubia/net/wifi/WifiRssiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, -0x64

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    .line 26
    iput v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I

    .line 28
    iput-object p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lnubia/net/wifi/WifiRssiInfo;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/net/wifi/WifiRssiInfo;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    return p1
.end method

.method static synthetic access$102(Lnubia/net/wifi/WifiRssiInfo;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/net/wifi/WifiRssiInfo;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I

    return p1
.end method

.method static synthetic access$202(Lnubia/net/wifi/WifiRssiInfo;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/net/wifi/WifiRssiInfo;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSignalRssi()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    return v0
.end method

.method public getNewFreq()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I

    return v0
.end method

.method public getNewRssi()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I

    return v0
.end method

.method public setLastSignalRssi(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 36
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    .line 37
    return-void
.end method

.method public setNewRssi(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 40
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I

    .line 41
    return-void
.end method

.method public updateLastSignalRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 32
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    .line 33
    return-void
.end method

.method public updateNewFreq(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 44
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I

    .line 45
    return-void
.end method

.method public updateRssiAndFreq(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput p1, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I

    .line 61
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 66
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget v2, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v2, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lnubia/net/wifi/WifiRssiInfo;->mNewFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
