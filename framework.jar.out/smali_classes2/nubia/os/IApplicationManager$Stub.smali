.class public abstract Lnubia/os/IApplicationManager$Stub;
.super Landroid/os/Binder;
.source "IApplicationManager.java"

# interfaces
.implements Lnubia/os/IApplicationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/IApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IApplicationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.IApplicationManager"

.field static final TRANSACTION_acquirePerformanceLock:I = 0x12

.field static final TRANSACTION_allow3rdPartyPush:I = 0x5

.field static final TRANSACTION_allowBackgroundSyncToRun:I = 0x10

.field static final TRANSACTION_allowDeliverPendingNonWakeupAlarmInScreenOff:I = 0x6

.field static final TRANSACTION_allowFullWakeLockScreenOff:I = 0x2

.field static final TRANSACTION_allowPartialWakelock:I = 0x3

.field static final TRANSACTION_allowWakeupAlarm:I = 0x4

.field static final TRANSACTION_checkActionAllowed:I = 0x2c

.field static final TRANSACTION_checkAllowedGetActionName:I = 0x2d

.field static final TRANSACTION_getActionState:I = 0x2e

.field static final TRANSACTION_getForegroundPackageName:I = 0x24

.field static final TRANSACTION_getNetAvailable:I = 0x15

.field static final TRANSACTION_isAllowedStartFrozenPackage:I = 0x1e

.field static final TRANSACTION_isControlledByMotionDoze:I = 0x14

.field static final TRANSACTION_isDangerousWakeLock:I = 0x1

.field static final TRANSACTION_isInNoTransitionAnim:I = 0x22

.field static final TRANSACTION_isKillWhenFrozen:I = 0x23

.field static final TRANSACTION_isNetworkBlocked:I = 0x11

.field static final TRANSACTION_isNotifyDisplayEvent:I = 0x20

.field static final TRANSACTION_isProcessFrozen:I = 0x1b

.field static final TRANSACTION_isProcessFrozenByUid:I = 0x1d

.field static final TRANSACTION_isProcessRealFrozen:I = 0x1c

.field static final TRANSACTION_noteActionMutex:I = 0x29

.field static final TRANSACTION_noteActivityStackRemoved:I = 0xc

.field static final TRANSACTION_noteAppTransitionAnimation:I = 0xe

.field static final TRANSACTION_noteDisplayStateChanged:I = 0x21

.field static final TRANSACTION_notePausingActivity:I = 0x8

.field static final TRANSACTION_noteProcessStatus:I = 0x17

.field static final TRANSACTION_noteProcessStatusChanged:I = 0x18

.field static final TRANSACTION_noteRemovingProcess:I = 0xb

.field static final TRANSACTION_noteResumedAppDie:I = 0xd

.field static final TRANSACTION_noteResumingActivity:I = 0x7

.field static final TRANSACTION_noteScreenState:I = 0x25

.field static final TRANSACTION_noteScreenStateChanged:I = 0x19

.field static final TRANSACTION_noteStartingProcess:I = 0xa

.field static final TRANSACTION_noteStatusBarExpanding:I = 0xf

.field static final TRANSACTION_noteStoppingActivity:I = 0x9

.field static final TRANSACTION_noteWindowStateChange:I = 0x1a

.field static final TRANSACTION_registerActionMutexCallback:I = 0x2a

.field static final TRANSACTION_registerCallback:I = 0x27

.field static final TRANSACTION_releasePerformanceLock:I = 0x13

.field static final TRANSACTION_setFreezeCallback:I = 0x16

.field static final TRANSACTION_setNetworkFirewall:I = 0x26

.field static final TRANSACTION_unfreezeWhenKill:I = 0x1f

.field static final TRANSACTION_unregisterActionMutexCallback:I = 0x2b

.field static final TRANSACTION_unregisterCallback:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/IApplicationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "nubia.os.IApplicationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/IApplicationManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lnubia/os/IApplicationManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lnubia/os/IApplicationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/IApplicationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 581
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 56
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v16, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 62
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_2
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->allowFullWakeLockScreenOff(ILjava/lang/String;)Z

    move-result v16

    .line 68
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v16, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 74
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_3
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->allowPartialWakelock(ILjava/lang/String;)Z

    move-result v16

    .line 80
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v16, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 86
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_4
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->allowWakeupAlarm(ILjava/lang/String;)Z

    move-result v16

    .line 92
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v16, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 93
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 98
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_5
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 103
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 104
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v16, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 105
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 110
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_6
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 118
    .local v3, "_arg0":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v16

    .line 119
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v16, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 116
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .end local v16    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_6

    .line 120
    .restart local v16    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 125
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .end local v16    # "_result":Z
    :sswitch_7
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    .local v7, "_arg4":Z
    :goto_8
    move-object/from16 v2, p0

    .line 136
    invoke-virtual/range {v2 .. v7}, Lnubia/os/IApplicationManager$Stub;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 135
    .end local v7    # "_arg4":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 142
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_8
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 151
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnubia/os/IApplicationManager$Stub;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 157
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_9
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 165
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 166
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnubia/os/IApplicationManager$Stub;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 172
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_a
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnubia/os/IApplicationManager$Stub;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 187
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_b
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 193
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lnubia/os/IApplicationManager$Stub;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 200
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->noteActivityStackRemoved(I)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 209
    .end local v3    # "_arg0":I
    :sswitch_d
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 218
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnubia/os/IApplicationManager$Stub;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 224
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_e
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 227
    .local v3, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->noteAppTransitionAnimation(Z)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 226
    .end local v3    # "_arg0":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 233
    :sswitch_f
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    .line 236
    .restart local v3    # "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->noteStatusBarExpanding(Z)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 235
    .end local v3    # "_arg0":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 242
    :sswitch_10
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->allowBackgroundSyncToRun()Z

    move-result v16

    .line 244
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v16, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 245
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 250
    .end local v16    # "_result":Z
    :sswitch_11
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->isNetworkBlocked(II)Z

    move-result v16

    .line 256
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v16, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 257
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 262
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_12
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 266
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 270
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .local v12, "_arg3":J
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    .line 271
    invoke-virtual/range {v8 .. v13}, Lnubia/os/IApplicationManager$Stub;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 277
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v12    # "_arg3":J
    :sswitch_13
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 280
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 286
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v16

    .line 292
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v16, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 293
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 298
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_15
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getNetAvailable()Z

    move-result v16

    .line 300
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v16, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 301
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 306
    .end local v16    # "_result":Z
    :sswitch_16
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lnubia/os/IFreezeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IFreezeCallback;

    move-result-object v3

    .line 309
    .local v3, "_arg0":Lnubia/os/IFreezeCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->setFreezeCallback(Lnubia/os/IFreezeCallback;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 315
    .end local v3    # "_arg0":Lnubia/os/IFreezeCallback;
    :sswitch_17
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 319
    .local v3, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 321
    .local v4, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 325
    .local v6, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .local v7, "_arg4":[I
    move-object/from16 v2, p0

    .line 326
    invoke-virtual/range {v2 .. v7}, Lnubia/os/IApplicationManager$Stub;->noteProcessStatus([I[I[Ljava/lang/String;[I[I)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 332
    .end local v3    # "_arg0":[I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2":[Ljava/lang/String;
    .end local v6    # "_arg3":[I
    .end local v7    # "_arg4":[I
    :sswitch_18
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->noteProcessStatusChanged()V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 339
    :sswitch_19
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->noteScreenStateChanged(I)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 348
    .end local v3    # "_arg0":I
    :sswitch_1a
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 352
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 354
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 355
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lnubia/os/IApplicationManager$Stub;->noteWindowStateChange(III)V

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 361
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_1b
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->isProcessFrozen(I)Z

    move-result v16

    .line 365
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v16, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 371
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_1c
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->isProcessRealFrozen(I)Z

    move-result v16

    .line 375
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v16, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 376
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 381
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_1d
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 384
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->isProcessFrozenByUid(I)Z

    move-result v16

    .line 385
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v16, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 386
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 391
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_1e
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 395
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 397
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 399
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 401
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 404
    invoke-virtual/range {v2 .. v8}, Lnubia/os/IApplicationManager$Stub;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 405
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v16, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 406
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 411
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_1f
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 414
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->unfreezeWhenKill(I)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 420
    .end local v3    # "_arg0":I
    :sswitch_20
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 424
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 425
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->isNotifyDisplayEvent(II)Z

    move-result v16

    .line 426
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 427
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 432
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_21
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 436
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 437
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->noteDisplayStateChanged(II)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 443
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_22
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->isInNoTransitionAnim(Ljava/lang/String;)Z

    move-result v16

    .line 447
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v16, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 448
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 453
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_23
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 456
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->isKillWhenFrozen(I)Z

    move-result v16

    .line 457
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v16, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 458
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 463
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_24
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getForegroundPackageName()Ljava/util/List;

    move-result-object v17

    .line 465
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 467
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 471
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_25
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 474
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->noteScreenState(I)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 480
    .end local v3    # "_arg0":I
    :sswitch_26
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 484
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v5, 0x1

    .line 488
    .local v5, "_arg2":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v6, 0x1

    .line 489
    .local v6, "_arg3":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnubia/os/IApplicationManager$Stub;->setNetworkFirewall(ILjava/lang/String;ZZ)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 486
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Z
    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .line 488
    .restart local v5    # "_arg2":Z
    :cond_16
    const/4 v6, 0x0

    goto :goto_17

    .line 495
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    :sswitch_27
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lnubia/os/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ITaskCallback;

    move-result-object v3

    .line 499
    .local v3, "_arg0":Lnubia/os/ITaskCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 500
    .local v14, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lnubia/os/IApplicationManager$Stub;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 506
    .end local v3    # "_arg0":Lnubia/os/ITaskCallback;
    .end local v14    # "_arg1":J
    :sswitch_28
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lnubia/os/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ITaskCallback;

    move-result-object v3

    .line 509
    .restart local v3    # "_arg0":Lnubia/os/ITaskCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 515
    .end local v3    # "_arg0":Lnubia/os/ITaskCallback;
    :sswitch_29
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 521
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v5, 0x1

    .line 523
    .restart local v5    # "_arg2":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v6, 0x1

    .line 524
    .restart local v6    # "_arg3":Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnubia/os/IApplicationManager$Stub;->noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 521
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Z
    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .line 523
    .restart local v5    # "_arg2":Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    .line 530
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    :sswitch_2a
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/mutex/IMutexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/mutex/IMutexCallback;

    move-result-object v4

    .line 535
    .local v4, "_arg1":Lcn/nubia/mutex/IMutexCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 541
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcn/nubia/mutex/IMutexCallback;
    :sswitch_2b
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/mutex/IMutexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/mutex/IMutexCallback;

    move-result-object v4

    .line 546
    .restart local v4    # "_arg1":Lcn/nubia/mutex/IMutexCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnubia/os/IApplicationManager$Stub;->unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 552
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcn/nubia/mutex/IMutexCallback;
    :sswitch_2c
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->checkActionAllowed(Ljava/lang/String;)Z

    move-result v16

    .line 556
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v16, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 557
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 562
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_2d
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 566
    .local v16, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 572
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v2, "nubia.os.IApplicationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnubia/os/IApplicationManager$Stub;->getActionState(Ljava/lang/String;)Z

    move-result v16

    .line 576
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    if-eqz v16, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 577
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 41
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
