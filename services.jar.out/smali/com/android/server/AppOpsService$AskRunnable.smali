.class final Lcom/android/server/AppOpsService$AskRunnable;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation


# instance fields
.field final code:I

.field final op:Lcom/android/server/AppOpsService$Op;

.field final packageName:Ljava/lang/String;

.field final request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p6, "request"    # Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1992
    iput p2, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    .line 1993
    iput p3, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    .line 1994
    iput-object p4, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    .line 1995
    iput-object p5, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    .line 1996
    iput-object p6, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 1997
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2001
    const/4 v6, 0x0

    .line 2002
    .local v6, "permDialog":Lcom/android/server/NubiaPermissionDialog;
    iget-object v7, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    .line 2003
    :try_start_0
    const-string v1, "AppOps"

    const-string v2, "Creating dialog box"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-virtual {v1, v2}, Lcom/android/server/NubiaPermissionDialogReqQueue;->register(Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V

    .line 2005
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    invoke-virtual {v1}, Lcom/android/server/NubiaPermissionDialogReqQueue;->getDialog()Lcom/android/server/NubiaPermissionDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2006
    new-instance v0, Lcom/android/server/NubiaPermissionDialog;

    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    iget v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    iget-object v5, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NubiaPermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    .end local v6    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    .local v0, "permDialog":Lcom/android/server/NubiaPermissionDialog;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    invoke-virtual {v1, v0}, Lcom/android/server/NubiaPermissionDialogReqQueue;->setDialog(Lcom/android/server/NubiaPermissionDialog;)V

    .line 2010
    :goto_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2011
    if-eqz v0, :cond_0

    .line 2012
    invoke-virtual {v0}, Lcom/android/server/NubiaPermissionDialog;->show()V

    .line 2014
    :cond_0
    return-void

    .line 2010
    .end local v0    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    .restart local v6    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    :catchall_0
    move-exception v1

    move-object v0, v6

    .end local v6    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    .restart local v0    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    .end local v0    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    .restart local v6    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    :cond_1
    move-object v0, v6

    .end local v6    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    .restart local v0    # "permDialog":Lcom/android/server/NubiaPermissionDialog;
    goto :goto_0
.end method
