.class final enum Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;
.super Ljava/lang/Enum;
.source "PerformanceHelperForMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "cpuset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CLUSTER_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CLUSTER_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CLUSTER_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CLUSTER_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPUFREQ_ABOVE_HISPEED_DELAY:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPUFREQ_HISPEED_FREQ:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPUFREQ_MIN_SAMPLE_TIME:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_CORE_BIG_LITTLE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_CORE_BIG_LITTLE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_DOWN_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_FREQ_BIG_LITTLE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_FREQ_BIG_LITTLE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_CPU_UP_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_GPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_GPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_NORMALIZED_PERF_INDEX3:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_PERF_INDEX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_PPM_MODE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_ROOT_CLUSTER:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_SCREEN_OFF_STATE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

.field public static final enum CMD_SET_VCORE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_CORE_MIN"

    invoke-direct {v0, v1, v3}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 85
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_CORE_MAX"

    invoke-direct {v0, v1, v4}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 86
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_CORE_BIG_LITTLE_MIN"

    invoke-direct {v0, v1, v5}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_BIG_LITTLE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 87
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_CORE_BIG_LITTLE_MAX"

    invoke-direct {v0, v1, v6}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_BIG_LITTLE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 88
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_FREQ_MIN"

    invoke-direct {v0, v1, v7}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 89
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_FREQ_MAX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 90
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_FREQ_BIG_LITTLE_MIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_BIG_LITTLE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 91
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_FREQ_BIG_LITTLE_MAX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_BIG_LITTLE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 92
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_GPU_FREQ_MIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_GPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 93
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_GPU_FREQ_MAX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_GPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 94
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_VCORE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_VCORE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 95
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_SCREEN_OFF_STATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_SCREEN_OFF_STATE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 96
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPUFREQ_HISPEED_FREQ"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_HISPEED_FREQ:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 97
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPUFREQ_MIN_SAMPLE_TIME"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_MIN_SAMPLE_TIME:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 98
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPUFREQ_ABOVE_HISPEED_DELAY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_ABOVE_HISPEED_DELAY:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 99
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CLUSTER_CPU_CORE_MIN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 100
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CLUSTER_CPU_CORE_MAX"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 101
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CLUSTER_CPU_FREQ_MIN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 102
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CLUSTER_CPU_FREQ_MAX"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 103
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_ROOT_CLUSTER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_ROOT_CLUSTER:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 104
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_UP_THRESHOLD"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_UP_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 105
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_CPU_DOWN_THRESHOLD"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_DOWN_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 106
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_PERF_INDEX"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_PERF_INDEX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 107
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_NORMALIZED_PERF_INDEX3"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_NORMALIZED_PERF_INDEX3:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 108
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    const-string v1, "CMD_SET_PPM_MODE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_PPM_MODE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    .line 83
    const/16 v0, 0x19

    new-array v0, v0, [Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    sget-object v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_BIG_LITTLE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_CORE_BIG_LITTLE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_BIG_LITTLE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_FREQ_BIG_LITTLE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_GPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_GPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_VCORE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_SCREEN_OFF_STATE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_HISPEED_FREQ:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_MIN_SAMPLE_TIME:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPUFREQ_ABOVE_HISPEED_DELAY:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_CORE_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MIN:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CLUSTER_CPU_FREQ_MAX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_ROOT_CLUSTER:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_UP_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_CPU_DOWN_THRESHOLD:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_PERF_INDEX:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_NORMALIZED_PERF_INDEX3:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->CMD_SET_PPM_MODE:Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->$VALUES:[Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    return-object v0
.end method

.method public static values()[Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->$VALUES:[Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    invoke-virtual {v0}, [Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/server/appmgmt/PerformanceHelperForMTK$cpuset;

    return-object v0
.end method
