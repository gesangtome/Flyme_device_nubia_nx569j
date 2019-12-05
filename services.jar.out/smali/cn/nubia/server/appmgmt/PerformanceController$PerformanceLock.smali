.class public Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerformanceLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;
    }
.end annotation


# instance fields
.field public mAcquireTime:J

.field private mCallback:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;

.field public mDuration:J

.field public mTag:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;

    .line 126
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    .line 128
    iput-wide p4, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mDuration:J

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mAcquireTime:J

    .line 130
    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mCallback:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mCallback:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;->binderDied()V

    .line 140
    :cond_0
    return-void
.end method

.method public setCallback(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mCallback:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;

    .line 134
    return-void
.end method
