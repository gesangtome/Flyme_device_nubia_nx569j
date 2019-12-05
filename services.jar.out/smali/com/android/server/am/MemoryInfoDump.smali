.class public final Lcom/android/server/am/MemoryInfoDump;
.super Ljava/lang/Object;
.source "MemoryInfoDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;,
        Lcom/android/server/am/MemoryInfoDump$DumpHelper;
    }
.end annotation


# static fields
.field private static final ION_FILE_PATH:Ljava/lang/String; = "/d/ion/heaps/system"

.field private static final MEMINFO_TAG:Ljava/lang/String; = "MemoryInfoTraces"

.field private static final MEM_TOTAL_INFO:Ljava/lang/String; = "/proc/meminfo"

.field private static final REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final UNUSE_ADJ:I = -0x64

.field private static sDumpHelper:Lcom/android/server/am/MemoryInfoDump$DumpHelper;

.field private static final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "_yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MemoryInfoDump;->sdf:Ljava/text/SimpleDateFormat;

    .line 38
    const-string v0, "ro.nubia.build.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/android/server/am/MemoryInfoDump;->sDumpHelper:Lcom/android/server/am/MemoryInfoDump$DumpHelper;

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;

    invoke-direct {v0}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/am/MemoryInfoDump;->sdf:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static startDumpMemInfo(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 1
    .param p1, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v0, Lcom/android/server/am/MemoryInfoDump;->sDumpHelper:Lcom/android/server/am/MemoryInfoDump$DumpHelper;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/server/am/MemoryInfoDump;->sDumpHelper:Lcom/android/server/am/MemoryInfoDump$DumpHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->startDumpMemInfo(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 46
    :cond_0
    return-void
.end method
