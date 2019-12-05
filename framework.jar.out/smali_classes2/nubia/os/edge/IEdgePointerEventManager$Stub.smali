.class public abstract Lnubia/os/edge/IEdgePointerEventManager$Stub;
.super Landroid/os/Binder;
.source "IEdgePointerEventManager.java"

# interfaces
.implements Lnubia/os/edge/IEdgePointerEventManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/edge/IEdgePointerEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.edge.IEdgePointerEventManager"

.field static final TRANSACTION_getEdgeDeviceWidth:I = 0x8

.field static final TRANSACTION_registerEdgePointerEventListener:I = 0x1

.field static final TRANSACTION_registerPointerEventListener:I = 0x3

.field static final TRANSACTION_setEdgeDeviceWidth:I = 0x7

.field static final TRANSACTION_unregisterEdgePointerEventListener:I = 0x2

.field static final TRANSACTION_unregisterPointerEventListener:I = 0x4

.field static final TRANSACTION_updateCZoneState:I = 0x6

.field static final TRANSACTION_updateTZoneState:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "nubia.os.edge.IEdgePointerEventManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/edge/IEdgePointerEventManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lnubia/os/edge/IEdgePointerEventManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lnubia/os/edge/IEdgePointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventListener;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    :sswitch_2
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lnubia/os/edge/IEdgePointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventListener;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    :sswitch_3
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lnubia/os/edge/IPointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IPointerEventListener;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Lnubia/os/edge/IPointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    :sswitch_4
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lnubia/os/edge/IPointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IPointerEventListener;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    :sswitch_5
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->updateTZoneState(II)V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_6
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->updateCZoneState(II)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_7
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->setEdgeDeviceWidth(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v4, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->getEdgeDeviceWidth()I

    move-result v2

    .line 111
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
