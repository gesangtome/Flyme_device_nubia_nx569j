.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;
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
    name = "NoteResumingActivityRunnable"
.end annotation


# instance fields
.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mStackId:I

    .line 566
    iput p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mUid:I

    .line 567
    iput-object p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 568
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 572
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mUid:I

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    .line 577
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 581
    .local v2, "si":I
    iget v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mStackId:I

    if-eq v2, v4, :cond_2

    .line 584
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    .local v1, "n":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 587
    .local v3, "u":I
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mUid:I

    if-ne v3, v4, :cond_2

    .line 588
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    const-string v4, "ApplicationNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is the same. no need to turn on network"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "si":I
    .end local v3    # "u":I
    :cond_3
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mUid:I

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method
