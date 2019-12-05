.class public Lcom/cmx/cmplus/SmartContainerManagerWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final COM3:Ljava/lang/Object;

.field private static COm3:Landroid/util/ArrayMap; = null

.field private static final CoM3:Ljava/lang/Object;

.field private static Com3:Landroid/util/ArrayMap; = null

.field private static final TAG:Ljava/lang/String; = "SCMWrapper"

.field private static final cOM3:Ljava/lang/Object;

.field private static cOm3:Landroid/util/ArrayMap;

.field private static coM3:Landroid/util/ArrayMap;

.field private static final com4:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->Com3:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->cOm3:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COm3:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->coM3:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->CoM3:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->cOM3:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COM3:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->com4:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic AUx()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->com4:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Aux()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COm3:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic aUx()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->cOm3:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->CoM3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->Com3:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COM3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->cOM3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic auX()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->coM3:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static clearCache()V
    .locals 2

    sget-object v1, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COM3:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COm3:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/cmx/cmplus/ISmartContainerManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/cmx/cmplus/com7;

    invoke-direct {v2, p0}, Lcom/cmx/cmplus/com7;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeCache([Ljava/lang/String;)V
    .locals 5

    sget-object v1, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COM3:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    sget-object v4, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COm3:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/cmx/cmplus/SmartContainerManagerWrapper;->COm3:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
