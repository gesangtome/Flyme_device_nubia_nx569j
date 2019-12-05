.class public Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "GPSFreezeStrategy.java"


# static fields
.field private static final PID:Ljava/lang/String; = "pid"

.field private static final TAG:Ljava/lang/String; = "GPSFreezeStrategy"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mDebug:Z

.field private mLocationManagerService:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 3
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 18
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->mDebug:Z

    .line 24
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 25
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 26
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 27
    return-void

    .line 18
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGPSNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 45
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->getNoFreezeGpsAppList()Ljava/util/HashSet;

    move-result-object v2

    .line 46
    .local v2, "noFreezeGpsAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "app":Ljava/lang/String;
    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const/4 v3, 0x1

    .line 51
    .end local v0    # "app":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isUsingGPS(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 57
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService;->getCurrentGpsReceivers()[Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "bundles":[Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 61
    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    aget-object v3, v0, v1

    const-string v4, "pid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 68
    .end local v0    # "bundles":[Landroid/os/Bundle;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 60
    .restart local v0    # "bundles":[Landroid/os/Bundle;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "bundles":[Landroid/os/Bundle;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->isGPSNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;->isUsingGPS(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
