.class final Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo$1;
.super Ljava/lang/Object;
.source "NubiaWifiP2pDeviceSpecInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo$1;->createFromParcel(Landroid/os/Parcel;)Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 94
    new-instance v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    invoke-direct {v0}, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;-><init>()V

    .line 95
    .local v0, "device":Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mInterfaceMac:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 97
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, v0, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;->mWifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 99
    :cond_0
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo$1;->newArray(I)[Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 103
    new-array v0, p1, [Lnubia/net/wifi/NubiaWifiP2pDeviceSpecInfo;

    return-object v0
.end method
