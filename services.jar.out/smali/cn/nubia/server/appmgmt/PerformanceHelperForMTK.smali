.class Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;
.super Ljava/lang/Object;
.source "PerformanceHelperForMTK.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/IPerformanceHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceHelper"

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

.field private static mPerf:Ljava/lang/Object;

.field private static mUserDisableFunc:Ljava/lang/reflect/Method;

.field private static mUserEnableFunc:Ljava/lang/reflect/Method;

.field private static mUserRegScnFunc:Ljava/lang/reflect/Method;

.field private static mUserScnConfigFunc:Ljava/lang/reflect/Method;

.field private static mUserUnregScnFunc:Ljava/lang/reflect/Method;

.field private static perfClass:Ljava/lang/Class;


# instance fields
.field private final DOWN_TIMES_BIT:I

.field private final GO_HISPEED_LOAD_BIT:I

.field private final HISPEED_FREQ_BIG_CORE_BIT:I

.field private final HISPEED_FREQ_LITTLE_CORE_BIT:I

.field private final TARGET_LOADS_BIT:I

.field private final UP_TIMES_BIT:I

.field private final default_down_times:I

.field private final default_go_hispeed_load:I

.field private final default_hispeed_freq_big_core:I

.field private final default_hispeed_freq_little_core:I

.field private final default_target_loads:I

.field private final default_up_times:I

.field private final down_times_file:Ljava/lang/String;

.field private final go_hispeed_load_file:Ljava/lang/String;

.field private final hispeed_freq_big_core_file:Ljava/lang/String;

.field private final hispeed_freq_little_core_file:Ljava/lang/String;

.field private mBitmap:I

.field private mPerfHandle:I

.field private mPreviousRootCluster:I

.field private final roo_cluster_file:Ljava/lang/String;

.field private final target_loads_file:Ljava/lang/String;

.field private final up_times_file:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 48
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserRegScnFunc:Ljava/lang/reflect/Method;

    .line 49
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserUnregScnFunc:Ljava/lang/reflect/Method;

    .line 50
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserEnableFunc:Ljava/lang/reflect/Method;

    .line 51
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserDisableFunc:Ljava/lang/reflect/Method;

    .line 52
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    .line 53
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 80
    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    .line 113
    :try_start_0
    const-string v2, "com.mediatek.perfservice.PerfServiceWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 120
    :try_start_1
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 121
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConstructor method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    const-string v3, "userRegScn"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserRegScnFunc:Ljava/lang/reflect/Method;

    .line 124
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserRegScnFunc method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserRegScnFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    const-string v3, "userUnregScn"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserUnregScnFunc:Ljava/lang/reflect/Method;

    .line 127
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserUnregScnFunc method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserUnregScnFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    const-string v3, "userEnable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserEnableFunc:Ljava/lang/reflect/Method;

    .line 130
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserEnableFunc method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserEnableFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    const-string v3, "userDisable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserDisableFunc:Ljava/lang/reflect/Method;

    .line 133
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserDisableFunc method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserDisableFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->perfClass:Ljava/lang/Class;

    const-string v3, "userRegScnConfig"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    .line 136
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserScnConfigFunc method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :cond_0
    :goto_1
    :try_start_2
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mConstructor:Ljava/lang/reflect/Constructor;

    .end local v1    # "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 143
    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v2, 0x0

    nop

    nop

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    :cond_1
    :goto_2
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string v2, "PerformanceHelper"

    const-string v3, "PerfServiceWrapper Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PerfServiceWrapper() : Exception_1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PerfServiceWrapper() : Exception_2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "/proc/ppm/root_cluster"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->roo_cluster_file:Ljava/lang/String;

    .line 56
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->target_loads_file:Ljava/lang/String;

    .line 57
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->go_hispeed_load_file:Ljava/lang/String;

    .line 58
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->hispeed_freq_little_core_file:Ljava/lang/String;

    .line 59
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq_big"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->hispeed_freq_big_core_file:Ljava/lang/String;

    .line 60
    const-string v0, "/proc/hps/up_times"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->up_times_file:Ljava/lang/String;

    .line 61
    const-string v0, "/proc/hps/down_times"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->down_times_file:Ljava/lang/String;

    .line 63
    const/4 v0, -0x2

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPreviousRootCluster:I

    .line 64
    const/16 v0, 0x5a

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->default_target_loads:I

    .line 65
    const/16 v0, 0x63

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->default_go_hispeed_load:I

    .line 66
    const v0, 0xc7f38

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->default_hispeed_freq_little_core:I

    .line 67
    const v0, 0x1702a0

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->default_hispeed_freq_big_core:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->default_up_times:I

    .line 69
    iput v1, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->default_down_times:I

    .line 71
    iput v1, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->TARGET_LOADS_BIT:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->GO_HISPEED_LOAD_BIT:I

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->HISPEED_FREQ_LITTLE_CORE_BIT:I

    .line 74
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->HISPEED_FREQ_BIG_CORE_BIT:I

    .line 75
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->UP_TIMES_BIT:I

    .line 76
    const/16 v0, 0x20

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->DOWN_TIMES_BIT:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    .line 83
    return-void
.end method

.method private setValueToSysFile(Ljava/lang/String;I)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 341
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 343
    .local v2, "out":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_0

    .line 344
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 345
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    throw v3

    .line 349
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "PerformanceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserRegScnFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserUnregScnFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserEnableFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserDisableFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "PerformanceHelper"

    const-string v1, "PerfServiceWrapper isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "PerfServiceWrapper: Not Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public perfIOPrefetchStop()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 30
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    .line 168
    const/16 v21, -0x1

    .line 170
    .local v21, "ret":I
    :try_start_0
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 171
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserRegScnFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    .line 172
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    .line 173
    const/16 v16, -0x1

    .line 174
    .local v16, "minBigCore":I
    const/16 v20, -0x1

    .line 175
    .local v20, "minLittleCore":I
    const/4 v11, -0x1

    .line 176
    .local v11, "maxBigCore":I
    const/4 v15, -0x1

    .line 177
    .local v15, "maxLittleCore":I
    const/16 v17, -0x1

    .line 178
    .local v17, "minCpu0Freq":I
    const/16 v18, -0x1

    .line 179
    .local v18, "minCpu4Freq":I
    const/4 v12, -0x1

    .line 180
    .local v12, "maxCpu0Freq":I
    const/4 v13, -0x1

    .line 181
    .local v13, "maxCpu4Freq":I
    const/16 v22, -0x1

    .line 182
    .local v22, "targetLoad":I
    const/4 v7, -0x1

    .line 183
    .local v7, "goHighSpeedLoad":I
    const/4 v9, -0x1

    .line 184
    .local v9, "hispeedFreqLittleCore":I
    const/4 v8, -0x1

    .line 185
    .local v8, "hispeedFreqBigCore":I
    const/4 v3, -0x1

    .line 186
    .local v3, "aboveHispeedDelay":I
    const/16 v23, -0x1

    .line 187
    .local v23, "upThreshold":I
    const/16 v24, -0x1

    .line 188
    .local v24, "upTimes":I
    const/4 v4, -0x1

    .line 189
    .local v4, "downThreshold":I
    const/4 v5, -0x1

    .line 190
    .local v5, "downTimes":I
    const/16 v19, -0x1

    .line 191
    .local v19, "minGpuLev":I
    const/4 v14, -0x1

    .line 192
    .local v14, "maxGpuLev":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_14

    .line 193
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_1

    .line 194
    aget v25, p2, v10

    sparse-switch v25, :sswitch_data_0

    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 196
    :sswitch_0
    add-int/lit8 v10, v10, 0x1

    aget v20, p2, v10

    .line 197
    goto :goto_1

    .line 199
    :sswitch_1
    add-int/lit8 v10, v10, 0x1

    aget v16, p2, v10

    .line 200
    goto :goto_1

    .line 202
    :sswitch_2
    add-int/lit8 v10, v10, 0x1

    aget v15, p2, v10

    .line 203
    goto :goto_1

    .line 205
    :sswitch_3
    add-int/lit8 v10, v10, 0x1

    aget v11, p2, v10

    .line 206
    goto :goto_1

    .line 208
    :sswitch_4
    add-int/lit8 v10, v10, 0x1

    aget v17, p2, v10

    .line 209
    goto :goto_1

    .line 211
    :sswitch_5
    add-int/lit8 v10, v10, 0x1

    aget v18, p2, v10

    .line 212
    goto :goto_1

    .line 214
    :sswitch_6
    add-int/lit8 v10, v10, 0x1

    aget v12, p2, v10

    .line 215
    goto :goto_1

    .line 217
    :sswitch_7
    add-int/lit8 v10, v10, 0x1

    aget v13, p2, v10

    .line 218
    goto :goto_1

    .line 220
    :sswitch_8
    add-int/lit8 v10, v10, 0x1

    aget v22, p2, v10

    .line 221
    goto :goto_1

    .line 223
    :sswitch_9
    const/16 v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    add-int/lit8 v10, v10, 0x1

    aget v22, p2, v10

    goto :goto_1

    .line 226
    :sswitch_a
    add-int/lit8 v10, v10, 0x1

    aget v7, p2, v10

    .line 227
    goto :goto_1

    .line 229
    :sswitch_b
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v0, v7, :cond_0

    add-int/lit8 v10, v10, 0x1

    aget v7, p2, v10

    goto :goto_1

    .line 232
    :sswitch_c
    add-int/lit8 v10, v10, 0x1

    aget v3, p2, v10

    .line 233
    goto :goto_1

    .line 235
    :sswitch_d
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_0

    add-int/lit8 v10, v10, 0x1

    aget v3, p2, v10

    goto :goto_1

    .line 238
    :sswitch_e
    add-int/lit8 v10, v10, 0x1

    aget v9, p2, v10

    .line 239
    goto :goto_1

    .line 241
    :sswitch_f
    add-int/lit8 v10, v10, 0x1

    aget v8, p2, v10

    .line 242
    goto :goto_1

    .line 244
    :sswitch_10
    add-int/lit8 v10, v10, 0x1

    aget v23, p2, v10

    .line 245
    goto :goto_1

    .line 247
    :sswitch_11
    add-int/lit8 v10, v10, 0x1

    aget v24, p2, v10

    .line 248
    goto :goto_1

    .line 250
    :sswitch_12
    add-int/lit8 v10, v10, 0x1

    aget v4, p2, v10

    .line 251
    goto :goto_1

    .line 253
    :sswitch_13
    add-int/lit8 v10, v10, 0x1

    aget v5, p2, v10

    .line 254
    goto :goto_1

    .line 256
    :sswitch_14
    add-int/lit8 v10, v10, 0x1

    aget v19, p2, v10

    .line 257
    goto :goto_1

    .line 259
    :sswitch_15
    add-int/lit8 v10, v10, 0x1

    aget v14, p2, v10

    .line 260
    goto/16 :goto_1

    .line 268
    :cond_1
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 269
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_2
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 271
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_3
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v15, v0, :cond_4

    .line 275
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_4
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_5

    .line 277
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_5
    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 281
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_6
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 283
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_7
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_8

    .line 287
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_8
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v13, v0, :cond_9

    .line 289
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_9
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v3, v0, :cond_a

    .line 292
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_ABOVE_HISPEED_DELAY:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_a
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 294
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_UP_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_b
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_c

    .line 296
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_DOWN_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_c
    const/16 v25, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 299
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_GPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_d
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_e

    .line 301
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserScnConfigFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_GPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_e
    sget-object v25, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserEnableFunc:Ljava/lang/reflect/Method;

    sget-object v26, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/16 v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 307
    const-string v25, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    .line 310
    :cond_f
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v7, v0, :cond_10

    .line 311
    const-string v25, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    .line 314
    :cond_10
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v9, v0, :cond_11

    .line 315
    const-string v25, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    .line 318
    :cond_11
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v8, v0, :cond_12

    .line 319
    const-string v25, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq_big"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v8}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    .line 322
    :cond_12
    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    .line 323
    const-string v25, "/proc/hps/up_times"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x10

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    .line 326
    :cond_13
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_14

    .line 327
    const-string v25, "/proc/hps/down_times"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x20

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v3    # "aboveHispeedDelay":I
    .end local v4    # "downThreshold":I
    .end local v5    # "downTimes":I
    .end local v7    # "goHighSpeedLoad":I
    .end local v8    # "hispeedFreqBigCore":I
    .end local v9    # "hispeedFreqLittleCore":I
    .end local v10    # "i":I
    .end local v11    # "maxBigCore":I
    .end local v12    # "maxCpu0Freq":I
    .end local v13    # "maxCpu4Freq":I
    .end local v14    # "maxGpuLev":I
    .end local v15    # "maxLittleCore":I
    .end local v16    # "minBigCore":I
    .end local v17    # "minCpu0Freq":I
    .end local v18    # "minCpu4Freq":I
    .end local v19    # "minGpuLev":I
    .end local v20    # "minLittleCore":I
    .end local v22    # "targetLoad":I
    .end local v23    # "upThreshold":I
    .end local v24    # "upTimes":I
    :cond_14
    const/16 v21, 0x0

    .line 336
    :goto_2
    return v21

    .line 333
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Ljava/lang/Exception;
    const-string v25, "PerformanceHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x40800000 -> :sswitch_5
        0x40800100 -> :sswitch_4
        0x40804000 -> :sswitch_7
        0x40804100 -> :sswitch_6
        0x41000000 -> :sswitch_1
        0x41000100 -> :sswitch_0
        0x41004000 -> :sswitch_3
        0x41004100 -> :sswitch_2
        0x41400000 -> :sswitch_d
        0x41400100 -> :sswitch_c
        0x41410000 -> :sswitch_b
        0x41410100 -> :sswitch_a
        0x41414000 -> :sswitch_f
        0x41414100 -> :sswitch_e
        0x41420000 -> :sswitch_9
        0x41420100 -> :sswitch_8
        0x42804000 -> :sswitch_14
        0x42808000 -> :sswitch_15
        0x43000000 -> :sswitch_10
        0x43000100 -> :sswitch_11
        0x43000200 -> :sswitch_12
        0x43000300 -> :sswitch_13
    .end sparse-switch
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public perfLockRelease()I
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 359
    const/4 v1, -0x1

    .line 362
    .local v1, "ret":I
    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    if-eq v2, v3, :cond_0

    .line 363
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserDisableFunc:Ljava/lang/reflect/Method;

    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mUserUnregScnFunc:Ljava/lang/reflect/Method;

    sget-object v3, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPerfHandle:I

    .line 366
    const/4 v1, 0x0

    .line 369
    :cond_0
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 370
    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const/16 v3, 0x5a

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 371
    :cond_1
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 372
    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const/16 v3, 0x63

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 373
    :cond_2
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 374
    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const v3, 0xc7f38

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 375
    :cond_3
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 376
    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq_big"

    const v3, 0x1702a0

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 377
    :cond_4
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 378
    const-string v2, "/proc/hps/up_times"

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 379
    :cond_5
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 380
    const-string v2, "/proc/hps/down_times"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->setValueToSysFile(Ljava/lang/String;I)V

    .line 381
    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mBitmap:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PerformanceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRootClusster(I)I
    .locals 5
    .param p1, "cluster"    # I

    .prologue
    const/4 v4, 0x0

    .line 413
    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPreviousRootCluster:I

    if-ne p1, v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v4

    .line 416
    :cond_1
    const/4 v2, -0x1

    if-eq v2, p1, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 418
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/ppm/root_cluster"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 419
    .local v1, "out":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 421
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 422
    iput p1, p0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;->mPreviousRootCluster:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 424
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v2, "PerformanceHelper"

    const-string v3, "Failed to open root_cluster"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    throw v2

    .line 426
    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "PerformanceHelper"

    const-string v3, "Failed to write root_cluster"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
