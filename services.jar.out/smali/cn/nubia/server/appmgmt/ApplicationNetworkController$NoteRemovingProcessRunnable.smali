.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 741
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mUid:I

    .line 743
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 744
    iput-object p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mProcess:Ljava/lang/String;

    .line 745
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "count":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 752
    add-int/lit8 v0, v0, -0x1

    .line 753
    if-nez v0, :cond_2

    .line 754
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 762
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mUid:I

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    .line 763
    :cond_1
    return-void

    .line 757
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
