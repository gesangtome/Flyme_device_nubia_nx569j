.class public abstract Lnubia/util/IFrameworkDataStatisticsService$Stub;
.super Landroid/os/Binder;
.source "IFrameworkDataStatisticsService.java"

# interfaces
.implements Lnubia/util/IFrameworkDataStatisticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/IFrameworkDataStatisticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/util/IFrameworkDataStatisticsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.util.IFrameworkDataStatisticsService"

.field static final TRANSACTION_enableEncrypt:I = 0x1

.field static final TRANSACTION_onEvent:I = 0x4

.field static final TRANSACTION_onEvent2:I = 0x6

.field static final TRANSACTION_onEvent2WithStartOnce:I = 0x7

.field static final TRANSACTION_onEvent3:I = 0x8

.field static final TRANSACTION_onEvent3WithStartOnce:I = 0x9

.field static final TRANSACTION_onEventValue:I = 0xa

.field static final TRANSACTION_onEventValueWithStartOnce:I = 0xb

.field static final TRANSACTION_onEventWithStartOnce:I = 0x5

.field static final TRANSACTION_onPageEnd:I = 0xe

.field static final TRANSACTION_onPageStart:I = 0xd

.field static final TRANSACTION_onPause:I = 0x10

.field static final TRANSACTION_onResume:I = 0xf

.field static final TRANSACTION_openActivityDurationTrack:I = 0xc

.field static final TRANSACTION_setDebugMode:I = 0x2

.field static final TRANSACTION_setSessionContinueMillis:I = 0x3

.field static final TRANSACTION_startOnce:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p0, p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/util/IFrameworkDataStatisticsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "nubia.util.IFrameworkDataStatisticsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/util/IFrameworkDataStatisticsService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lnubia/util/IFrameworkDataStatisticsService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lnubia/util/IFrameworkDataStatisticsService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/util/IFrameworkDataStatisticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 50
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->enableEncrypt(Z)V

    goto :goto_0

    .line 55
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 58
    .restart local v0    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->setDebugMode(Z)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->setSessionContinueMillis(J)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":J
    :sswitch_4
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEventWithStartOnce(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEvent2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEvent2WithStartOnce(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 112
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 113
    .local v2, "_arg1":Ljava/util/Map;
    invoke-virtual {p0, v0, v2}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEvent3(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :sswitch_9
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 123
    .restart local v4    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg1":Ljava/util/Map;
    invoke-virtual {p0, v0, v2}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEvent3WithStartOnce(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :sswitch_a
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 134
    .restart local v4    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg1":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEventValue(Ljava/lang/String;Ljava/util/Map;I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v3    # "_arg2":I
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :sswitch_b
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 147
    .restart local v4    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg1":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onEventValueWithStartOnce(Ljava/lang/String;Ljava/util/Map;I)V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v3    # "_arg2":I
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :sswitch_c
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 158
    .local v0, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->openActivityDurationTrack(Z)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Z
    :sswitch_d
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onPageStart(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onPageEnd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onResume()V

    goto/16 :goto_0

    .line 185
    :sswitch_10
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->onPause()V

    goto/16 :goto_0

    .line 191
    :sswitch_11
    const-string v6, "nubia.util.IFrameworkDataStatisticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->startOnce()V

    goto/16 :goto_0

    .line 38
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
