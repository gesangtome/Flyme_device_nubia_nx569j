.class public Lcn/nubia/server/appmgmt/NetWorkDetectorController;
.super Ljava/lang/Object;
.source "NetWorkDetectorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;,
        Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;
    }
.end annotation


# static fields
.field private static final RECEIVER_ACTION_PERMISSION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "ApplicationManagerService"


# instance fields
.field private mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsAccessible:Z

.field private mLock:Ljava/lang/Object;

.field private mMobileLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

.field private mWifiLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mLock:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mConnectivityStateChangeReceiver:Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;

    .line 46
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mWifiLruCache:Landroid/util/LruCache;

    .line 47
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mMobileLruCache:Landroid/util/LruCache;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mWifiLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->setNetAvailable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mNetWorkDetectionRunnable:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mMobileLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private setNetAvailable(Z)V
    .locals 2
    .param p1, "isAccessible"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mIsAccessible:Z

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getNetAvailable()Z
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mIsAccessible:Z

    monitor-exit v1

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
