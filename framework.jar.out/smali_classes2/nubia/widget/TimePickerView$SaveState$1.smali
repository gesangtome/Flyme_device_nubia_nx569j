.class final Lnubia/widget/TimePickerView$SaveState$1;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/TimePickerView$SaveState;
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
        "Lnubia/widget/TimePickerView$SaveState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lnubia/widget/TimePickerView$SaveState$1;->createFromParcel(Landroid/os/Parcel;)Lnubia/widget/TimePickerView$SaveState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnubia/widget/TimePickerView$SaveState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 172
    new-instance v0, Lnubia/widget/TimePickerView$SaveState;

    invoke-direct {v0, p1}, Lnubia/widget/TimePickerView$SaveState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lnubia/widget/TimePickerView$SaveState$1;->newArray(I)[Lnubia/widget/TimePickerView$SaveState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnubia/widget/TimePickerView$SaveState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 176
    new-array v0, p1, [Lnubia/widget/TimePickerView$SaveState;

    return-object v0
.end method
