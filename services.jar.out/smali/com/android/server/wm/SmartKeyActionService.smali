.class public Lcom/android/server/wm/SmartKeyActionService;
.super Lcn/nubia/server/NubiaSystemService;
.source "SmartKeyActionService.java"


# instance fields
.field private final mActionBinder:Lnubia/smartkey/ISmartKeyAction$Stub;

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private final mTakeScreenshot:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Lcom/android/server/wm/SmartKeyActionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SmartKeyActionService$1;-><init>(Lcom/android/server/wm/SmartKeyActionService;)V

    iput-object v1, p0, Lcom/android/server/wm/SmartKeyActionService;->mActionBinder:Lnubia/smartkey/ISmartKeyAction$Stub;

    .line 21
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    .line 23
    .local v0, "wms":Lcom/android/server/wm/WindowManagerService;
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v1, p0, Lcom/android/server/wm/SmartKeyActionService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 24
    iget-object v1, p0, Lcom/android/server/wm/SmartKeyActionService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/wm/SmartKeyActionService;->takeScreenShotMethod(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SmartKeyActionService;->mTakeScreenshot:Ljava/lang/reflect/Method;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SmartKeyActionService;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SmartKeyActionService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/SmartKeyActionService;->mTakeScreenshot:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SmartKeyActionService;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SmartKeyActionService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/SmartKeyActionService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method private static takeScreenShotMethod(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "takeScreenshot":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "takeScreenshot"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/SmartKeyActionService;->mActionBinder:Lnubia/smartkey/ISmartKeyAction$Stub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "nubia.smartkey.action"

    return-object v0
.end method
