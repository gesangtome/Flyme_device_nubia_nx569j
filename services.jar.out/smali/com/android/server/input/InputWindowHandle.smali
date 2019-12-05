.class public final Lcom/android/server/input/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public final displayId:I

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public id:J

.field public final inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field public inputChannel:Landroid/view/InputChannel;

.field public inputFeatures:I

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field private ptr:J

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z

.field public final windowState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "windowState"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/input/InputWindowHandle;->id:J

    .line 101
    iput-object p1, p0, Lcom/android/server/input/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 102
    iput-object p2, p0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    .line 103
    iput p3, p0, Lcom/android/server/input/InputWindowHandle;->displayId:I

    .line 104
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
