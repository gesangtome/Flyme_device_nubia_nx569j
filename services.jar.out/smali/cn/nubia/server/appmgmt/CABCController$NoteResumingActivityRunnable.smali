.class Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;
.super Ljava/lang/Object;
.source "CABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteResumingActivityRunnable"
.end annotation


# instance fields
.field private mResumingHomeActivity:Z

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;Z)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z

    .prologue
    .line 425
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    .line 427
    iput-object p3, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 428
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingHomeActivity:Z

    .line 429
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 433
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingHomeActivity:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, "resumedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    .end local v0    # "resumedPackage":Ljava/lang/String;
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
