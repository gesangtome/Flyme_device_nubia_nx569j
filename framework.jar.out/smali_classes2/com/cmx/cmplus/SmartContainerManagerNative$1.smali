.class final Lcom/cmx/cmplus/SmartContainerManagerNative$1;
.super Landroid/util/Singleton;
.source "SmartContainerManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmx/cmplus/SmartContainerManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/cmx/cmplus/ISmartContainerManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/cmx/cmplus/ISmartContainerManager;
    .locals 5

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 19
    .local v1, "i":Lcom/cmx/cmplus/ISmartContainerManager;
    :try_start_0
    # getter for: Lcom/cmx/cmplus/SmartContainerManagerNative;->SMART_CONTAINER_SERVICE:Ljava/lang/String;
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cmx/cmplus/ISmartContainerManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "sys.boot_completed"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 23
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerConfig;->turnOff()V

    .line 25
    :cond_0
    # getter for: Lcom/cmx/cmplus/SmartContainerManagerNative;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to get service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/cmx/cmplus/SmartContainerManagerNative;->SMART_CONTAINER_SERVICE:Ljava/lang/String;
    invoke-static {}, Lcom/cmx/cmplus/SmartContainerManagerNative;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/cmx/cmplus/SmartContainerManagerNative$1;->create()Lcom/cmx/cmplus/ISmartContainerManager;

    move-result-object v0

    return-object v0
.end method
