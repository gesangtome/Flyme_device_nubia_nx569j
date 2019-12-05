.class public Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
.super Ljava/lang/Object;
.source "SensorMonitor.java"


# static fields
.field private static final SMARTFACE_LATTICE_DOUBLE_HALL:Ljava/lang/String; = "cn.nubia.smartface.feature.lattice.double_hall"

.field private static final SMARTFACE_WINDOW_FEATURE:Ljava/lang/String; = "cn.nubia.smartface.feature.window"

.field private static final SMART_FACE_FAR:I = 0x2

.field private static final SMART_FACE_NEAR:I = 0x1

.field private static final SMART_FACE_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmartFaceSensorManager"


# instance fields
.field private mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

.field private mContext:Landroid/content/Context;

.field private mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

.field private mHallSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

.field private mSensorEventLister:Landroid/hardware/SensorEventListener;

.field private mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

.field private pendingSensorState:F

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManagerWapper;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "mWapper"    # Lcom/android/server/policy/PhoneWindowManagerWapper;

    .prologue
    const v2, 0x961901

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .line 44
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;-><init>(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p3, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    .line 94
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallSensor:Landroid/hardware/Sensor;

    .line 98
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallSensor:Landroid/hardware/Sensor;

    .line 101
    :cond_0
    invoke-static {p1}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceOpen(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
    .param p1, "x1"    # Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceLattice(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceFlip(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceWindow(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .prologue
    .line 25
    iget v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->pendingSensorState:F

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->pendingSensorState:F

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcom/android/server/policy/PhoneWindowManagerWapper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    return-object v0
.end method

.method private bothHallFar(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 160
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private disableSmartFace()V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .line 125
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManagerWapper;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->doOperationOnUI()V

    .line 127
    return-void
.end method

.method private singleHallFar(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private smartFaceAutoFlip(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private smartFaceAutoLattice(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.smartface.feature.lattice.double_hall"

    iget-object v3, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->hasFeature(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private smartFaceFixedFlip(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.smartface.feature.window"

    iget-object v3, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->hasFeature(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private smartFaceFlip(Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceAutoFlip(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceManualFlip(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceFixedFlip(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private smartFaceLattice(Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceAutoLattice(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFacemManualLattice(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private smartFaceManualFlip(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceFlipEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private smartFaceOpen(Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->singleHallFar(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->bothHallFar(Landroid/hardware/SensorEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private smartFaceWindow(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceWindowEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private smartFacemManualLattice(Landroid/hardware/SensorEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceLatticeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onResume()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 114
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->disableSmartFace()V

    .line 121
    return-void
.end method

.method public openUnLockScreen(Z)V
    .locals 5
    .param p1, "isScreenChange"    # Z

    .prologue
    .line 136
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    instance-of v1, v1, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;

    if-eqz v1, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    check-cast v0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;

    .line 138
    .local v0, "mNoHallNearCtrl":Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    iget-object v3, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManagerWapper;)V

    .line 139
    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->openUnLockScreen(Z)V

    .line 148
    .end local v0    # "mNoHallNearCtrl":Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    instance-of v1, v1, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    instance-of v1, v1, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    instance-of v1, v1, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;

    if-eqz v1, :cond_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->setScreenOnByAuto(Z)V

    .line 144
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    instance-of v1, v1, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->goToSleep(J)V

    goto :goto_0
.end method

.method public registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .line 106
    return-void
.end method

.method public turnOffScreen(Z)V
    .locals 1
    .param p1, "needTurnOffScreen"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->goToSleep()V

    .line 133
    :cond_0
    return-void
.end method
