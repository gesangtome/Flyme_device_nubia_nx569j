.class Lcn/nubia/server/appmgmt/PerformanceHelper;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/IPerformanceHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceHelper"

.field private static mAcquireFunc:Ljava/lang/reflect/Method;

.field private static mAcquireTouchFunc:Ljava/lang/reflect/Method;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mIOPStart:Ljava/lang/reflect/Method;

.field private static mIOPStop:Ljava/lang/reflect/Method;

.field private static mPerf:Ljava/lang/Object;

.field private static mReleaseFunc:Ljava/lang/reflect/Method;

.field private static perfClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 44
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 45
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 46
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 47
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    .line 48
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    .line 49
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 52
    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;

    .line 58
    :try_start_0
    const-string v3, "android.util.BoostFramework"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 65
    :try_start_1
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 66
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, [I

    aput-object v4, v0, v3

    .line 67
    .local v0, "argClasses":[Ljava/lang/Class;
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    .end local v2    # "t":Ljava/lang/Throwable;
    const-string v4, "perfLockAcquire"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 68
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAcquireFunc method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    .line 71
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string v4, "perfLockRelease"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 72
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReleaseFunc method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/server/appmgmt/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, Landroid/util/DisplayMetrics;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-class v4, [I

    aput-object v4, v0, v3

    .line 75
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string v4, "perfLockAcquireTouch"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 76
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAcquireTouchFunc method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 79
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string v4, "perfIOPrefetchStart"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    .line 80
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIOPStart method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    .line 83
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->perfClass:Ljava/lang/Class;

    const-string v4, "perfIOPrefetchStop"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    .line 84
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIOPStop method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v0    # "argClasses":[Ljava/lang/Class;
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    :try_start_2
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    .line 91
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :cond_1
    :goto_2
    return-void

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v2

    .line 60
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v3, "PerformanceHelper"

    const-string v4, "sBootPerfClazz Not available."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 85
    :catch_1
    move-exception v1

    .line 86
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoostFramework() : Exception_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :catch_2
    move-exception v1

    .line 95
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoostFramework() : Exception_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "PerformanceHelper"

    const-string v1, "Boostframework isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "Boostframework: Not Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;)I
    .locals 8
    .param p1, "pid"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v1, -0x1

    .line 160
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStart:Ljava/lang/reflect/Method;

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfIOPrefetchStop()I
    .locals 6

    .prologue
    .line 172
    const/4 v1, -0x1

    .line 174
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mIOPStop:Ljava/lang/reflect/Method;

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 8
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    .line 117
    const/4 v1, -0x1

    .line 119
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireFunc:Ljava/lang/reflect/Method;

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .prologue
    .line 144
    const/4 v1, -0x1

    .line 146
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfLockRelease()I
    .locals 6

    .prologue
    .line 130
    const/4 v1, -0x1

    .line 132
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelper;->mReleaseFunc:Ljava/lang/reflect/Method;

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelper;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 133
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRootClusster(I)I
    .locals 1
    .param p1, "cluster"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method
