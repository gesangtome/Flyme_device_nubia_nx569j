.class public Lcn/nubia/server/edge/EdgePointerEventService;
.super Lnubia/os/edge/IEdgePointerEventManager$Stub;
.source "EdgePointerEventService.java"


# static fields
.field private static final CZONE:Ljava/lang/String; = "persist.sys.edgetp.czone"

.field private static final CZONE_COMPONENT:Ljava/lang/String; = "cn.nubia.edge/cn.nubia.edge.instruct.InstructActivity"

.field private static final CZONE_MASK:I = 0x11

.field private static final ENABLE_CZONE:Ljava/lang/String; = "nubia_edge_enable_czone"

.field private static final MASK:I = 0xf

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventService"

.field private static final TZONE:Ljava/lang/String; = "persist.sys.edgetp.tzone"

.field private static final TZONE_MASK:I = 0x111


# instance fields
.field private mCZoneEnable:Z

.field private mCZoneFlag:I

.field private mContext:Landroid/content/Context;

.field private mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mLastEnableFitState:I

.field private mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTZoneEnable:Z

.field private mTZoneFlag:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "input"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;-><init>()V

    .line 43
    const/16 v1, 0xf0

    iput v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    .line 44
    const/16 v1, 0xff

    iput v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mLastEnableFitState:I

    .line 59
    iput-object p1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 61
    iput-object p3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 62
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "ro.nubia.edge.channel"

    const-string v2, "nubia_edge"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "channelName":Ljava/lang/String;
    new-instance v1, Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    .line 66
    new-instance v1, Lcn/nubia/server/edge/PointerEventDispatcher;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v4, "EdgePointer"

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/edge/PointerEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    .line 69
    .end local v0    # "channelName":Ljava/lang/String;
    :cond_0
    const-string v1, "1"

    const-string v2, "persist.sys.edgetp.czone"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    .line 70
    const-string v1, "1"

    const-string v2, "persist.sys.edgetp.tzone"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneEnable:Z

    .line 71
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "edge"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mThread:Landroid/os/HandlerThread;

    .line 72
    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private setProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    .line 152
    :cond_0
    new-instance v0, Lcn/nubia/server/edge/EdgePointerEventService$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/edge/EdgePointerEventService$1;-><init>(Lcn/nubia/server/edge/EdgePointerEventService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    .line 158
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method


# virtual methods
.method public getEdgeDeviceWidth()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getEdgeDeviceWidth()I

    move-result v0

    return v0
.end method

.method public registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 79
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->registerEventListener(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method public registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IPointerEventListener;

    .prologue
    .line 95
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/PointerEventDispatcher;->registerEventListener(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setEdgeDeviceWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setEdgeDeviceWidth(I)V

    .line 140
    return-void
.end method

.method public unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 87
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->unregisterEventListener(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IPointerEventListener;

    .prologue
    .line 103
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/PointerEventDispatcher;->unregisterEventListener(Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public updateCZoneState(II)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .prologue
    .line 124
    iget v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    const/16 v3, 0xf

    shl-int/2addr v3, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    shl-int v3, p2, p1

    or-int v0, v2, v3

    .line 125
    .local v0, "cZoneFlag":I
    iget v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    if-eq v2, v0, :cond_1

    .line 126
    and-int/lit8 v2, v0, 0x11

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 127
    .local v1, "enable":Z
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    if-eq v1, v2, :cond_0

    .line 128
    iput-boolean v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    .line 129
    const-string v3, "persist.sys.edgetp.czone"

    if-eqz v1, :cond_3

    const-string v2, "1"

    :goto_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_edge_czone"

    if-eqz v1, :cond_4

    const-string v2, "1"

    :goto_2
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :cond_0
    iput v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    .line 135
    .end local v1    # "enable":Z
    :cond_1
    return-void

    .line 126
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    .restart local v1    # "enable":Z
    :cond_3
    const-string v2, "0"

    goto :goto_1

    .line 130
    :cond_4
    const-string v2, "0"

    goto :goto_2
.end method

.method public updateTZoneState(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    iget v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    const/16 v5, 0xf

    shl-int/2addr v5, p1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    shl-int v5, p2, p1

    or-int v1, v2, v5

    .line 112
    .local v1, "tZoneFlag":I
    iget v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    if-eq v2, v1, :cond_1

    .line 113
    and-int/lit16 v2, v1, 0x111

    const/16 v5, 0x111

    if-eq v2, v5, :cond_2

    move v0, v3

    .line 114
    .local v0, "disable":Z
    :goto_0
    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    iget-boolean v5, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneEnable:Z

    if-eq v2, v5, :cond_0

    .line 115
    if-nez v0, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneEnable:Z

    .line 116
    const-string v3, "persist.sys.edgetp.tzone"

    if-eqz v0, :cond_5

    const-string v2, "0"

    :goto_3
    invoke-direct {p0, v3, v2}, Lcn/nubia/server/edge/EdgePointerEventService;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iput v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    .line 120
    .end local v0    # "disable":Z
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 113
    goto :goto_0

    .restart local v0    # "disable":Z
    :cond_3
    move v2, v4

    .line 114
    goto :goto_1

    :cond_4
    move v3, v4

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const-string v2, "1"

    goto :goto_3
.end method
