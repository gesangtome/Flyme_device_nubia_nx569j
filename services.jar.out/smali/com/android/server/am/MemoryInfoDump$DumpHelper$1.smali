.class Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;
.super Ljava/lang/Object;
.source "MemoryInfoDump.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MemoryInfoDump$DumpHelper;->startDumpMemInfo(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MemoryInfoDump$DumpHelper;

.field final synthetic val$currentTimeMillis:J

.field final synthetic val$proces:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/MemoryInfoDump$DumpHelper;Ljava/util/ArrayList;J)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;->this$0:Lcom/android/server/am/MemoryInfoDump$DumpHelper;

    iput-object p2, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;->val$proces:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;->val$currentTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;->val$proces:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;->val$currentTimeMillis:J

    # invokes: Lcom/android/server/am/MemoryInfoDump$DumpHelper;->dumpMeminfoTraces(Ljava/util/List;J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->access$100(Ljava/util/List;J)V

    .line 72
    return-void
.end method
