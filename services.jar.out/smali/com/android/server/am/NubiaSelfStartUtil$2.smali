.class Lcom/android/server/am/NubiaSelfStartUtil$2;
.super Landroid/database/ContentObserver;
.source "NubiaSelfStartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaSelfStartUtil;->registerSelfStartObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaSelfStartUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil$2;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil$2;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    # invokes: Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V
    invoke-static {v0}, Lcom/android/server/am/NubiaSelfStartUtil;->access$200(Lcom/android/server/am/NubiaSelfStartUtil;)V

    .line 134
    const-string v0, "NubiaSelfStartUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProtectListPkgNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil$2;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    # getter for: Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/am/NubiaSelfStartUtil;->access$300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
