.class public Lcn/nubia/server/policy/edge/StatisticsCollector;
.super Ljava/lang/Object;
.source "StatisticsCollector.java"


# static fields
.field private static sGetInstanceMethod:Ljava/lang/reflect/Method;

.field private static final sInstance:Lcn/nubia/server/policy/edge/StatisticsCollector;

.field private static sManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sOnEventWithStartOnce:Ljava/lang/reflect/Method;

.field private static sOnEventWithStartOnceMap:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcn/nubia/server/policy/edge/StatisticsCollector;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;-><init>()V

    sput-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sInstance:Lcn/nubia/server/policy/edge/StatisticsCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    :try_start_0
    const-string v1, "nubia.util.FrameworkDataStatisticsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    .line 101
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    const-string v2, "getIntance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 103
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    const-string v2, "onEventWithStartOnce"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnceMap:Ljava/lang/reflect/Method;

    .line 105
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    const-string v2, "onEventWithStartOnce"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnce:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    sput-object v6, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    .line 109
    sput-object v6, Lcn/nubia/server/policy/edge/StatisticsCollector;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 110
    sput-object v6, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnceMap:Ljava/lang/reflect/Method;

    .line 111
    sput-object v6, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnce:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static callCollectorOnEventWithStartOnce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->checkFunction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "managerObject":Ljava/lang/Object;
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnce:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    .end local v0    # "managerObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static callCollectorOnEventWithStartOnceMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gesture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->checkFunctionMap()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "managerObject":Ljava/lang/Object;
    sget-object v1, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnceMap:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v0    # "managerObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static checkFunction()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnce:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkFunctionMap()Z
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sManagerClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sGetInstanceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sOnEventWithStartOnceMap:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcn/nubia/server/policy/edge/StatisticsCollector;->sInstance:Lcn/nubia/server/policy/edge/StatisticsCollector;

    return-object v0
.end method


# virtual methods
.method doubleSideMove(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "up_or_down"

    if-eqz p2, :cond_0

    const-string v1, "up"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "fit2_double_side_move"

    invoke-static {p1, v1, v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;->callCollectorOnEventWithStartOnceMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    return-void

    .line 41
    :cond_0
    const-string v1, "down"

    goto :goto_0
.end method

.method doubleTap(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "fit2_double_tap"

    invoke-static {p1, v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;->callCollectorOnEventWithStartOnce(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method insideMove(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "fit2_inside_move"

    invoke-static {p1, v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;->callCollectorOnEventWithStartOnce(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method singleSideLoop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "fit2_single_side_loop"

    invoke-static {p1, v1, v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;->callCollectorOnEventWithStartOnceMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method singleSideMove(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z
    .param p3, "isLeft"    # Z
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "left_or_right"

    if-eqz p3, :cond_0

    const-string v1, "left"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v2, "up_or_down"

    if-eqz p2, :cond_1

    const-string v1, "up"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "type"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "fit2_single_side_move"

    invoke-static {p1, v1, v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;->callCollectorOnEventWithStartOnceMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    return-void

    .line 25
    :cond_0
    const-string v1, "right"

    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "down"

    goto :goto_1
.end method

.method singleTap(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSuccess"    # I

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "success"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "fit2_single_tap"

    invoke-static {p1, v1, v0}, Lcn/nubia/server/policy/edge/StatisticsCollector;->callCollectorOnEventWithStartOnceMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    return-void
.end method
