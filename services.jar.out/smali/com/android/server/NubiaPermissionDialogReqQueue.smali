.class public Lcom/android/server/NubiaPermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "NubiaPermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/server/NubiaPermissionDialog;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->mDialog:Lcom/android/server/NubiaPermissionDialog;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/NubiaPermissionDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->mDialog:Lcom/android/server/NubiaPermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 77
    .local v0, "res":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V

    .line 78
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0    # "res":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    return-void
.end method

.method public register(Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V
    .locals 1
    .param p1, "res"    # Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDialog(Lcom/android/server/NubiaPermissionDialog;)V
    .locals 0
    .param p1, "mDialog"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->mDialog:Lcom/android/server/NubiaPermissionDialog;

    .line 32
    return-void
.end method
