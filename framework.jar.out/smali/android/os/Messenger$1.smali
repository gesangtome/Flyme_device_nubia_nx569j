.class final Landroid/os/Messenger$1;
.super Ljava/lang/Object;
.source "Messenger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Messenger;
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
        "Landroid/os/Messenger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 121
    .local v2, "target":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, "pid":I
    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 123
    .local v0, "messenger":Landroid/os/Messenger;
    :goto_0
    if-eqz v0, :cond_0

    .line 124
    # setter for: Landroid/os/Messenger;->mPid:I
    invoke-static {v0, v1}, Landroid/os/Messenger;->access$002(Landroid/os/Messenger;I)I

    .line 126
    :cond_0
    return-object v0

    .line 122
    .end local v0    # "messenger":Landroid/os/Messenger;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Messenger$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/Messenger;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/os/Messenger;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Messenger$1;->newArray(I)[Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method
