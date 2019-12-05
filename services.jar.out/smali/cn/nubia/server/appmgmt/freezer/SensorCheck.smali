.class public Lcn/nubia/server/appmgmt/freezer/SensorCheck;
.super Ljava/lang/Object;
.source "SensorCheck.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIgnoreSensors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsScreenOff:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ApplicationFreeze_Sensor"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    .line 15
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIsScreenOff:Z

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mTypeMap:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIgnoreSensors:Ljava/util/HashSet;

    .line 26
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->initIngoreSensors()V

    .line 30
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->initTypeMap()V

    .line 31
    return-void
.end method

.method private canFreezeThisType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->getIgnoreSensors()Ljava/util/HashSet;

    move-result-object v2

    .line 64
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "i":I
    if-ne v0, p1, :cond_0

    const/4 v3, 0x1

    .line 67
    .end local v0    # "i":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getIgnoreSensors()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->getIgnoreSensors()Ljava/util/HashSet;

    move-result-object v0

    .line 46
    .local v0, "re":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIgnoreSensors:Ljava/util/HashSet;

    .line 47
    .end local v0    # "re":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method private getSensorsEnable(I)[I
    .locals 9
    .param p1, "pid"    # I

    .prologue
    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "re":[I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 54
    .local v4, "sensorManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "getSensorsEnable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    .local v2, "getSensorsEnable":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2    # "getSensorsEnable":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initIngoreSensors()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mIgnoreSensors:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method private initTypeMap()V
    .locals 6

    .prologue
    .line 38
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 40
    .local v2, "s":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 42
    .end local v2    # "s":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method private isInBlackList(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isInSensorBlackList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method hasUnfreezeSensor(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 9
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v6, 0x0

    .line 75
    iget v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-direct {p0, v7}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->getSensorsEnable(I)[I

    move-result-object v4

    .line 76
    .local v4, "list":[I
    if-nez v4, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v6

    .line 77
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 78
    .local v1, "handle":I
    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->mTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 79
    .local v5, "type":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->canFreezeThisType(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->isInBlackList(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 80
    sget-boolean v6, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not allow, has sensor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method resetArgs()V
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->DEBUG:Z

    .line 89
    return-void
.end method
