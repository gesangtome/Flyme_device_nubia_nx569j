.class public Lcom/cmx/cmplus/ContainerInfo;
.super Ljava/lang/Object;
.source "ContainerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CONTAINER_CREATED:Ljava/lang/String; = "com.cmx.cmplus.ACTION_CONTAINER_CREATED"

.field public static final CI_FLAG_VIRTUAL_BOX:I = 0x40000000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cmx/cmplus/ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CONTAINER_INFO:Ljava/lang/String; = "com.cmx.cmplus.EXTRA_CONTAINER_INFO"

.field public static final MAX_VIRTUAL_BOX_NUM:I = 0x5

.field public static final TYPE_VIRTUAL_BOX:I = 0x0

.field public static final TYPE_VIRTUAL_BOX_MAX:I = 0x3e8


# instance fields
.field public extra:Landroid/os/Bundle;

.field public id:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/cmx/cmplus/ContainerInfo$1;

    invoke-direct {v0}, Lcom/cmx/cmplus/ContainerInfo$1;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/ContainerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/cmx/cmplus/ContainerInfo;->id:I

    .line 56
    iput p2, p0, Lcom/cmx/cmplus/ContainerInfo;->type:I

    .line 57
    iput-object p3, p0, Lcom/cmx/cmplus/ContainerInfo;->name:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cmx/cmplus/ContainerInfo;->extra:Landroid/os/Bundle;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cmx/cmplus/ContainerInfo;->id:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cmx/cmplus/ContainerInfo;->type:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/ContainerInfo;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/cmx/cmplus/ContainerInfo;->extra:Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method public static isVirtualBox(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 85
    if-ltz p0, :cond_0

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualBox()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/cmx/cmplus/ContainerInfo;->type:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/cmx/cmplus/ContainerInfo;->type:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/cmx/cmplus/ContainerInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/cmx/cmplus/ContainerInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/cmx/cmplus/ContainerInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/cmx/cmplus/ContainerInfo;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
