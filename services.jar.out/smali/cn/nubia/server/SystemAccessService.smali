.class public Lcn/nubia/server/SystemAccessService;
.super Lcn/nubia/server/NubiaSystemService;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/SystemAccessService$SystemAccessStub;
    }
.end annotation


# static fields
.field private static final REABLE_POWER_HOME_FUNCTION_TIMEOUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SystemAccessService"


# instance fields
.field private Flag_EndCall:Z

.field private Flag_Home:Z

.field private mHandler:Landroid/os/Handler;

.field private mSnapshotBm:Landroid/graphics/Bitmap;

.field private final mSystemAccessStub:Lcn/nubia/server/SystemAccessService$SystemAccessStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v0, p0, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    .line 22
    iput-boolean v0, p0, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    .line 50
    new-instance v0, Lcn/nubia/server/SystemAccessService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/SystemAccessService$1;-><init>(Lcn/nubia/server/SystemAccessService;)V

    iput-object v0, p0, Lcn/nubia/server/SystemAccessService;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/SystemAccessService$SystemAccessStub;-><init>(Lcn/nubia/server/SystemAccessService;)V

    iput-object v0, p0, Lcn/nubia/server/SystemAccessService;->mSystemAccessStub:Lcn/nubia/server/SystemAccessService$SystemAccessStub;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/SystemAccessService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/SystemAccessService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/SystemAccessService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/SystemAccessService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/SystemAccessService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/server/SystemAccessService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/server/SystemAccessService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/server/SystemAccessService;->enableWake(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/SystemAccessService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/server/SystemAccessService;->enablePalmDetect(Z)Z

    move-result v0

    return v0
.end method

.method private native enablePalmDetect(Z)Z
.end method

.method private native enableWake(Z)Z
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService;->mSystemAccessStub:Lcn/nubia/server/SystemAccessService$SystemAccessStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "system_access"

    return-object v0
.end method
