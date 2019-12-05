.class public abstract Lnubia/os/ISystemAccess$Stub;
.super Landroid/os/Binder;
.source "ISystemAccess.java"

# interfaces
.implements Lnubia/os/ISystemAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ISystemAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ISystemAccess$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.ISystemAccess"

.field static final TRANSACTION_clearScreenshot:I = 0x6

.field static final TRANSACTION_enablePalmGesture:I = 0x8

.field static final TRANSACTION_enableWakeGesture:I = 0x7

.field static final TRANSACTION_getFactoryFlag:I = 0x3

.field static final TRANSACTION_getScreenshot:I = 0x5

.field static final TRANSACTION_screenshot:I = 0x4

.field static final TRANSACTION_setFactoryFlag:I = 0x2

.field static final TRANSACTION_setFactoryFlagTimeOut:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "nubia.os.ISystemAccess"

    invoke-virtual {p0, p0, v0}, Lnubia/os/ISystemAccess$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/ISystemAccess;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "nubia.os.ISystemAccess"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lnubia/os/ISystemAccess;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lnubia/os/ISystemAccess$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/ISystemAccess$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v5, "nubia.os.ISystemAccess"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 56
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 58
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lnubia/os/ISystemAccess$Stub;->setFactoryFlagTimeOut(ZZI)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :cond_0
    move v0, v5

    .line 54
    goto :goto_1

    .restart local v0    # "_arg0":Z
    :cond_1
    move v1, v5

    .line 56
    goto :goto_2

    .line 65
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v6, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    .line 69
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 70
    .restart local v1    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lnubia/os/ISystemAccess$Stub;->setFactoryFlag(ZZ)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_2
    move v0, v5

    .line 67
    goto :goto_3

    .restart local v0    # "_arg0":Z
    :cond_3
    move v1, v5

    .line 69
    goto :goto_4

    .line 76
    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string v6, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lnubia/os/ISystemAccess$Stub;->getFactoryFlag(I)Z

    move-result v3

    .line 80
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v3, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v5, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lnubia/os/ISystemAccess$Stub;->screenshot(II)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_5
    const-string v6, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lnubia/os/ISystemAccess$Stub;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 99
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v3, :cond_5

    .line 101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 105
    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :sswitch_6
    const-string v5, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lnubia/os/ISystemAccess$Stub;->clearScreenshot()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    :sswitch_7
    const-string v6, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v0, v4

    .line 121
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lnubia/os/ISystemAccess$Stub;->enableWakeGesture(Z)Z

    move-result v3

    .line 122
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_7
    move v0, v5

    .line 120
    goto :goto_5

    .line 128
    :sswitch_8
    const-string v6, "nubia.os.ISystemAccess"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v0, v4

    .line 131
    .restart local v0    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lnubia/os/ISystemAccess$Stub;->enablePalmGesture(Z)Z

    move-result v3

    .line 132
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_9
    move v0, v5

    .line 130
    goto :goto_6

    .line 43
    nop

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
