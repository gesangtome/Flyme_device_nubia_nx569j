.class Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;
.super Ljava/lang/Object;
.source "NubiaHWTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/NubiaHWTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpuSpeedTime"
.end annotation


# instance fields
.field private LOGV:Z

.field final MAX_GPUSPEEDS:I

.field private mCurGpuSpeedTimes:[J

.field private mDeltaGpuSpeedsTimes:[J

.field private mInitSucess:Z

.field final synthetic this$0:Lcom/android/internal/os/NubiaHWTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/os/NubiaHWTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->this$0:Lcom/android/internal/os/NubiaHWTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->LOGV:Z

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->MAX_GPUSPEEDS:I

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mInitSucess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/NubiaHWTracker;Lcom/android/internal/os/NubiaHWTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/NubiaHWTracker;
    .param p2, "x1"    # Lcom/android/internal/os/NubiaHWTracker$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;-><init>(Lcom/android/internal/os/NubiaHWTracker;)V

    return-void
.end method

.method private busyDeltaTime(D)V
    .locals 5
    .param p1, "busyrate"    # D

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    aget-wide v2, v1, v0

    long-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-long v2, v2

    aput-wide v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method private getCurGpuSpeedTimes()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 155
    const-string v1, "/sys/class/kgsl/kgsl-3d0/devfreq/trans_stat"

    .line 156
    .local v1, "file":Ljava/lang/String;
    const/4 v4, 0x0

    .line 157
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 158
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v9, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    .line 159
    .local v9, "tempTimes":[J
    const/4 v7, 0x0

    .line 161
    .local v7, "speed":I
    iget-boolean v12, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mInitSucess:Z

    if-nez v12, :cond_0

    .line 162
    const/16 v12, 0xa

    new-array v9, v12, [J

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 169
    .local v2, "lastwhite":I
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 175
    array-length v12, v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v7, v12, :cond_5

    .line 196
    :cond_2
    if-eqz v5, :cond_3

    .line 197
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 199
    :cond_3
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    iget-boolean v12, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mInitSucess:Z

    if-nez v12, :cond_4

    .line 207
    iput-boolean v11, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mInitSucess:Z

    .line 208
    add-int/lit8 v12, v7, -0x1

    new-array v12, v12, [J

    iput-object v12, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    .line 209
    iget-object v12, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    add-int/lit8 v13, v7, -0x1

    invoke-static {v9, v10, v12, v10, v13}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_4
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move v10, v11

    .line 212
    .end local v3    # "line":Ljava/lang/String;
    :goto_1
    return v10

    .line 180
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_5
    const/16 v12, 0x20

    :try_start_3
    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 182
    if-lez v2, :cond_1

    .line 183
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "strtmp":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v9, v7
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 200
    .end local v8    # "strtmp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "NubiaHWTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not close"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 202
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v11, "NubiaHWTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    if-eqz v4, :cond_6

    .line 197
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 199
    :cond_6
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 200
    :catch_2
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "NubiaHWTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not close"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v11, "NubiaHWTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    if-eqz v4, :cond_7

    .line 197
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 199
    :cond_7
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 200
    :catch_4
    move-exception v0

    .line 201
    const-string v11, "NubiaHWTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not close"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 196
    :goto_4
    if-eqz v4, :cond_8

    .line 197
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 199
    :cond_8
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 202
    throw v11

    .line 200
    :catch_5
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "NubiaHWTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "could not close"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 191
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 188
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private initDeltaTime()V
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    if-nez v1, :cond_1

    .line 60
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getGpuBusyRate()D
    .locals 20

    .prologue
    .line 103
    const-string v7, "/sys/class/kgsl/kgsl-3d0/gpubusy"

    .line 104
    .local v7, "file":Ljava/lang/String;
    const/4 v9, 0x0

    .line 105
    .local v9, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 106
    .local v11, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v2, 0x0

    .line 107
    .local v2, "activetime":J
    const-wide/16 v14, 0x0

    .line 108
    .local v14, "totaltime":J
    const-wide/16 v4, 0x0

    .line 113
    .local v4, "busyrate":D
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "line":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v16, "\n "

    move-object/from16 v0, v16

    invoke-direct {v12, v8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 117
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "token":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 120
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 121
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v14

    .line 133
    .end local v13    # "token":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    .line 134
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 136
    :cond_1
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_2

    .line 144
    long-to-double v0, v2

    move-wide/from16 v16, v0

    long-to-double v0, v14

    move-wide/from16 v18, v0

    div-double v4, v16, v18

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->LOGV:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 148
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activetime="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " totaltime="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " busyrate="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    move-wide/from16 v16, v4

    .line 150
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :goto_0
    return-wide v16

    .line 137
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v6

    .line 138
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "could not close"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v16, 0x0

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 125
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v6

    .line 126
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "could not find "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    const-wide/16 v16, 0x0

    .line 133
    if-eqz v9, :cond_4

    .line 134
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 136
    :cond_4
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 137
    :catch_2
    move-exception v6

    .line 138
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "could not close"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 128
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 129
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "could not find "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    const-wide/16 v16, 0x0

    .line 133
    if-eqz v9, :cond_5

    .line 134
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 136
    :cond_5
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 137
    :catch_4
    move-exception v6

    .line 138
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "could not close"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 132
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 133
    :goto_3
    if-eqz v9, :cond_6

    .line 134
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 136
    :cond_6
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 139
    throw v16

    .line 137
    :catch_5
    move-exception v6

    .line 138
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v16, "NubiaHWTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "could not close"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 132
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 128
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 125
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public getLastGpuSpeedTimes()[J
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->initDeltaTime()V

    .line 70
    invoke-direct {p0}, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->getCurGpuSpeedTimes()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    .line 99
    :goto_0
    return-object v3

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mCurGpuSpeedTimes:[J

    if-nez v3, :cond_3

    .line 75
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mCurGpuSpeedTimes:[J

    .line 76
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    iget-object v6, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mCurGpuSpeedTimes:[J

    iget-object v7, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    array-length v7, v7

    invoke-static {v3, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 78
    invoke-direct {p0}, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->initDeltaTime()V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->getGpuBusyRate()D

    move-result-wide v0

    .line 91
    .local v0, "busyrate":D
    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->busyDeltaTime(D)V

    .line 93
    iget-boolean v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->LOGV:Z

    if-eqz v3, :cond_2

    .line 94
    const-string v3, "NubiaHWTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastGpuSpeedTimes busyrate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "NubiaHWTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastGpuSpeedTimes  mCurGpuSpeedTimes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mCurGpuSpeedTimes:[J

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "NubiaHWTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastGpuSpeedTimes  mDeltaGpuSpeedsTimes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    goto :goto_0

    .line 80
    .end local v0    # "busyrate":D
    :cond_3
    const-wide/16 v4, 0x0

    .line 83
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    aget-wide v4, v3, v2

    .line 85
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mDeltaGpuSpeedsTimes:[J

    aget-wide v6, v3, v2

    iget-object v8, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mCurGpuSpeedTimes:[J

    aget-wide v8, v8, v2

    sub-long/2addr v6, v8

    aput-wide v6, v3, v2

    .line 86
    iget-object v3, p0, Lcom/android/internal/os/NubiaHWTracker$GpuSpeedTime;->mCurGpuSpeedTimes:[J

    aput-wide v4, v3, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
