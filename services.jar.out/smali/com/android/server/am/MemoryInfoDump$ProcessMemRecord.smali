.class final Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;
.super Ljava/lang/Object;
.source "MemoryInfoDump.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryInfoDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessMemRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public adj:I

.field public adj_reason:Ljava/lang/String;

.field public kgsl_pss:J

.field public kgsl_vss:J

.field public name:Ljava/lang/String;

.field public pid:I

.field public ppid:Ljava/lang/String;

.field public pss:J

.field public uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    .line 297
    iput-object p1, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->name:Ljava/lang/String;

    .line 298
    iput p2, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    .line 299
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;)I
    .locals 4
    .param p1, "arg0"    # Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 312
    iget v2, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    iget v3, p1, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    if-eq v2, v3, :cond_2

    .line 313
    iget v2, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    iget v3, p1, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->adj:I

    if-le v2, v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 313
    goto :goto_0

    .line 315
    :cond_2
    iget v2, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    iget v3, p1, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    iget v3, p1, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->pid:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 293
    check-cast p1, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;->compareTo(Lcom/android/server/am/MemoryInfoDump$ProcessMemRecord;)I

    move-result v0

    return v0
.end method
