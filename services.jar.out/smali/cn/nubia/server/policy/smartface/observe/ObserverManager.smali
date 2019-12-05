.class public Lcn/nubia/server/policy/smartface/observe/ObserverManager;
.super Ljava/lang/Object;
.source "ObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSFFuncObserver:Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;

.field private mSensitiveTouchObserver:Lcn/nubia/server/policy/smartface/observe/SensitiveTouchObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->initObserver()V

    .line 21
    return-void
.end method

.method private initObserver()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcn/nubia/server/policy/smartface/observe/SensitiveTouchObserver;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/smartface/observe/SensitiveTouchObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mSensitiveTouchObserver:Lcn/nubia/server/policy/smartface/observe/SensitiveTouchObserver;

    .line 25
    new-instance v0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mSFFuncObserver:Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;

    .line 26
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mSensitiveTouchObserver:Lcn/nubia/server/policy/smartface/observe/SensitiveTouchObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/observe/SensitiveTouchObserver;->observe()V

    .line 30
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mSFFuncObserver:Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->observe()V

    .line 31
    return-void
.end method

.method public registerCallback(Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;)V
    .locals 1
    .param p1, "l"    # Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->mSFFuncObserver:Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->registerCallback(Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;)V

    .line 35
    return-void
.end method
