.class Lcom/android/server/am/MemoryInfoDump$DumpHelper;
.super Ljava/lang/Object;
.source "MemoryInfoDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryInfoDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpHelper"
.end annotation


# instance fields
.field private mDumpHandler:Landroid/os/Handler;

.field private mDumpMemHandlerThread:Landroid/os/HandlerThread;

.field private mLastDumpMeminfoTime:J


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mLastDumpMeminfoTime:J

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DumpMeminfoTrace"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mDumpMemHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iget-object v0, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mDumpMemHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mDumpMemHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mDumpHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$100(Ljava/util/List;J)V
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->dumpMeminfoTraces(Ljava/util/List;J)V

    return-void
.end method

.method private static dumpMeminfoTraces(Ljava/util/List;J)V
    .locals 3
    .param p1, "tracesTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->updataProcessesMemInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->outputMeminfoOfProcess(Ljava/util/List;)Ljava/lang/String;

    .line 127
    const-string v1, "/d/ion/heaps/system"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->writeContenToTargetFile(Ljava/lang/String;Ljava/io/FileOutputStream;)V

    .line 128
    const-string v1, "/proc/meminfo"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->writeContenToTargetFile(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MemoryInfoTraces"

    const-string v2, "nable to  dump low meminfo traces log."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getAdjByReadProc(I)I
    .locals 6
    .param p0, "pid"    # I

    .prologue
    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/oom_adj"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "adjRecordPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->readFirstLineFromTargetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "adjStr":Ljava/lang/String;
    const/16 v0, -0x64

    .line 246
    .local v0, "adj":I
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 249
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMeminfoTracesName(J)Ljava/lang/String;
    .locals 4
    .param p0, "tracesTime"    # J

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "meminfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/am/MemoryInfoDump;->sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$200()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPpidByReadProc(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .prologue
    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "statRecordPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->readFirstLineFromTargetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "statInfo":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "stats":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    const/4 v3, 0x3

    aget-object v3, v2, v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static outputMeminfoOfProcess(Ljava/util/List;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    const-wide/16 v12, 0x0

    .line 192
    .local v12, "pssTotal":J
    const-wide/16 v6, 0x0

    .line 193
    .local v6, "kgslpssTotal":J
    const-wide/16 v8, 0x0

    .line 194
    .local v8, "kgslvssTotal":J
    new-instance v14, Ljava/lang/StringBuffer;

    const-string v16, "Meminfo of Process:\r\n"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 195
    .local v14, "result":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v16, "meminfo of Process:\r\n"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 196
    .local v5, "logSb":Ljava/lang/StringBuffer;
    const-string v16, "%-30s  %-8s %-8s %-8s %-5s %-8s %8s %8s  %-20s\r\n"

    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "name"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "pid"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "ppid"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "uid"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "adj"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    const-string v19, "pss"

    aput-object v19, v17, v18

    const/16 v18, 0x6

    const-string v19, "kgsl_pss"

    aput-object v19, v17, v18

    const/16 v18, 0x7

    const-string v19, "kgsl_vss"

    aput-object v19, v17, v18

    const/16 v18, 0x8

    const-string v19, "adjreason"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 200
    .local v15, "tmp":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "j":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 203
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .line 204
    .local v11, "rec":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    iget-wide v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pss:J

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    .line 205
    iget-wide v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->kgsl_pss:J

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    .line 206
    iget-wide v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->kgsl_vss:J

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 207
    iget-object v10, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->name:Ljava/lang/String;

    .line 208
    .local v10, "processName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1e

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 209
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const/16 v16, 0x1e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 213
    :cond_0
    iget v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    move/from16 v16, v0

    const/16 v17, -0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const-string v2, ""

    .line 214
    .local v2, "adj":Ljava/lang/String;
    :goto_2
    const-string v16, "%-30s  %-8d %-8s %-8s %5s %8d %8d %8d  %-20s\r\n"

    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    iget v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    iget-object v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->ppid:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x3

    iget v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    aput-object v2, v17, v18

    const/16 v18, 0x5

    iget-wide v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pss:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    iget-wide v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->kgsl_pss:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    iget-wide v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->kgsl_vss:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x8

    iget-object v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj_reason:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 218
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    if-eqz v3, :cond_1

    rem-int/lit8 v16, v3, 0x1e

    if-nez v16, :cond_1

    .line 221
    const-string v16, "MemoryInfoTraces"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 202
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 213
    .end local v2    # "adj":Ljava/lang/String;
    :cond_2
    iget v0, v11, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 225
    .end local v10    # "processName":Ljava/lang/String;
    .end local v11    # "rec":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    :cond_3
    const-string v16, "%-30s  %-8s %-8s %-8s %-5s %8d %8d %8d  %-20s\r\n"

    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "TOTAL"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, ""

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, ""

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, ""

    aput-object v19, v17, v18

    const/16 v18, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x8

    const-string v19, ""

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 229
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v16, "MemoryInfoTraces"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16
.end method

.method private static prepareProcessList(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v3, 0x0

    .line 88
    .local v3, "pid":I
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 90
    .local v8, "size":I
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v10, v8, 0x64

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v6, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    add-int/lit8 v10, v8, 0x64

    const v11, 0x3ecccccd    # 0.4f

    invoke-direct {v7, v10, v11}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 92
    .local v7, "procsByPid":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 94
    .local v5, "pr":Lcom/android/server/am/ProcessRecord;
    iget v3, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 95
    new-instance v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {v4, v10, v3}, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v4, "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    iget v10, v5, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v10, v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    .line 97
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj_reason:Ljava/lang/String;

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    .end local v5    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-enter p1

    .line 103
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    .line 104
    .local v0, "N":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 105
    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v9

    .line 106
    .local v9, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .restart local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    if-eqz v4, :cond_1

    .line 109
    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iput v10, v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    .end local v6    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    .end local v7    # "procsByPid":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    .end local v8    # "size":I
    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 111
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    .restart local v6    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    .restart local v7    # "procsByPid":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    .restart local v8    # "size":I
    .restart local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    :try_start_3
    new-instance v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .end local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    iget-object v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v3}, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;-><init>(Ljava/lang/String;I)V

    .line 112
    .restart local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iput v10, v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->uid:I

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 116
    .end local v0    # "N":I
    .end local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_1
    move-exception v10

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .restart local v0    # "N":I
    :cond_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .line 119
    .restart local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 121
    .end local v4    # "pmr":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    :cond_3
    return-object v6
.end method

.method private static readFirstLineFromTargetFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "targetFile"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v1, ""

    .line 258
    .local v1, "tmp":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v1

    .line 267
    .end local v1    # "tmp":Ljava/lang/String;
    .local v2, "tmp":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 261
    .end local v2    # "tmp":Ljava/lang/String;
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "gbk"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 263
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 264
    if-eqz v0, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    move-object v2, v1

    .line 267
    .end local v1    # "tmp":Ljava/lang/String;
    .restart local v2    # "tmp":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v2    # "tmp":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_1

    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 261
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    :try_start_6
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method

.method private static updataProcessesMemInfo(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    const/4 v10, 0x0

    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 170
    .local v4, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v3, "resultProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 172
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .line 173
    .local v2, "rec":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    iget v5, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    invoke-static {v5}, Landroid/os/Debug;->getMeminfoStats(I)[J

    move-result-object v1

    .line 174
    .local v1, "meminfos":[J
    aget-wide v6, v1, v10

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 171
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget v5, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_1

    .line 178
    iget v5, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    invoke-static {v5}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->getAdjByReadProc(I)I

    move-result v5

    iput v5, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    .line 180
    :cond_1
    iget v5, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    invoke-static {v5}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->getPpidByReadProc(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->ppid:Ljava/lang/String;

    .line 181
    aget-wide v6, v1, v10

    iput-wide v6, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pss:J

    .line 182
    const/4 v5, 0x1

    aget-wide v6, v1, v5

    iput-wide v6, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->kgsl_pss:J

    .line 183
    const/4 v5, 0x2

    aget-wide v6, v1, v5

    iput-wide v6, v2, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->kgsl_vss:J

    .line 184
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    .end local v1    # "meminfos":[J
    .end local v2    # "rec":Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 187
    return-object v3
.end method

.method private static writeContenToTargetFile(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 8
    .param p0, "originFilePath"    # Ljava/lang/String;
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    const-string v4, "MemoryInfoTraces"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump meminfo trace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "tmp":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const-string v4, "MemoryInfoTraces"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 277
    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_2
    if-eqz v0, :cond_2

    if-eqz v5, :cond_6

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    throw v4

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v5, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 285
    :cond_4
    :goto_4
    if-eqz p1, :cond_0

    .line 286
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 288
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 284
    :catch_1
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method startDumpMemInfo(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 8
    .param p2, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
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
    .line 61
    .local p1, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "currentTimeMillis":J
    :try_start_0
    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 64
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mLastDumpMeminfoTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mLastDumpMeminfoTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 65
    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mLastDumpMeminfoTime:J

    .line 66
    invoke-static {p1, p2}, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->prepareProcessList(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;)Ljava/util/ArrayList;

    move-result-object v2

    .line 68
    .local v2, "proces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/MemoryInfoDump$DumpHelper;->mDumpHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/MemoryInfoDump$DumpHelper$1;-><init>(Lcom/android/server/am/MemoryInfoDump$DumpHelper;Ljava/util/ArrayList;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "proces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;>;"
    :cond_1
    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    :cond_2
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v3

    .line 77
    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    # getter for: Lcom/android/server/am/MemoryInfoDump;->REENTRANT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/am/MemoryInfoDump;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v3
.end method
