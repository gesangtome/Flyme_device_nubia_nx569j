.class public Landroid/app/ActivityManager$SmartShowRunningTaskInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartShowRunningTaskInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$SmartShowRunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activityFlags:I

.field public baseActivity:Landroid/content/ComponentName;

.field public id:I

.field public orientation:I

.field public topActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3170
    new-instance v0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$SmartShowRunningTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3146
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 3179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3180
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .prologue
    .line 3117
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3150
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 3163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->id:I

    .line 3164
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3165
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->activityFlags:I

    .line 3167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->orientation:I

    .line 3168
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3155
    iget v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3156
    iget-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3157
    iget-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3158
    iget v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->activityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    iget v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3160
    return-void
.end method