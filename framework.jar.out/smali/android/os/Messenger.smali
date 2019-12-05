.class public final Landroid/os/Messenger;
.super Ljava/lang/Object;
.source "Messenger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPid:I

.field private final mTarget:Landroid/os/IMessenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Landroid/os/Messenger$1;

    invoke-direct {v0}, Landroid/os/Messenger$1;-><init>()V

    sput-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Messenger;->mPid:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Handler;->getIMessenger()Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/os/Messenger;->mPid:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Messenger;->mPid:I

    .line 186
    invoke-static {p1}, Landroid/os/IMessenger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    .line 187
    return-void
.end method

.method static synthetic access$002(Landroid/os/Messenger;I)I
    .locals 0
    .param p0, "x0"    # Landroid/os/Messenger;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Landroid/os/Messenger;->mPid:I

    return p1
.end method

.method public static readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 170
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 171
    .local v1, "messenger":Landroid/os/Messenger;
    :goto_0
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "pid":I
    iput v2, v1, Landroid/os/Messenger;->mPid:I

    .line 175
    .end local v2    # "pid":I
    :cond_0
    return-object v1

    .line 170
    .end local v1    # "messenger":Landroid/os/Messenger;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 145
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 148
    if-eqz p0, :cond_0

    .line 149
    iget v0, p0, Landroid/os/Messenger;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :cond_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 95
    .end local p1    # "otherObj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 91
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v1}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Landroid/os/Messenger;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v2}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/os/Messenger;->mPid:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public send(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0, p1}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    iget v0, p0, Landroid/os/Messenger;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
