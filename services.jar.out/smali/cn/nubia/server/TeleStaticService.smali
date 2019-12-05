.class public Lcn/nubia/server/TeleStaticService;
.super Lcn/nubia/server/NubiaSystemService;
.source "TeleStaticService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TeleStaticService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mSystemReadyMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private initTeleStatic()V
    .locals 7

    .prologue
    .line 56
    :try_start_0
    const-string v4, "cn.nubia.telestatic.service.NBTeleStaticOuter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    .local v2, "wbcClass":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 58
    const-string v4, "TeleStaticService"

    const-string v5, "wbcClass is not null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v4, "systemReady"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    .line 60
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 61
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 62
    .local v3, "wbcObject":Ljava/lang/Object;
    check-cast v3, Landroid/os/IBinder;

    .end local v3    # "wbcObject":Ljava/lang/Object;
    iput-object v3, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v2    # "wbcClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TeleStaticService"

    const-string v5, "initTeleStatic_error= "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "itei"

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/nubia/server/TeleStaticService;->initTeleStatic()V

    .line 51
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 52
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "TeleStaticService"

    const-string v2, "mSystemReadyMethod is null!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ignored":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "TeleStaticService"

    const-string v2, "systemReady_ignored = "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 42
    .end local v0    # "ignored":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
