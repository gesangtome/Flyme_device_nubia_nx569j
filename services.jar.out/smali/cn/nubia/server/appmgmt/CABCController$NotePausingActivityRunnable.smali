.class Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;
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
    name = "NotePausingActivityRunnable"
.end annotation


# instance fields
.field private mPausingPackage:Ljava/lang/String;

.field private mStackId:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    .line 451
    iput-object p3, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    .line 452
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, "resumedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    .end local v0    # "resumedPackage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$400(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$500(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    const-string v1, "CABCController"

    const-string v2, "activity paused and screen off. re-adjust CABC mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # invokes: Lcn/nubia/server/appmgmt/CABCController;->adjustCABCMode()V
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$600(Lcn/nubia/server/appmgmt/CABCController;)V

    goto :goto_0
.end method
