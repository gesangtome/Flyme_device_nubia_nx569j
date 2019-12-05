.class Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;
.super Ljava/lang/Object;
.source "SysStateProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SysStateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotePauseingActivityRunnable"
.end annotation


# instance fields
.field private mResumingActivity:Ljava/lang/String;

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "stackId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "activityName"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mUid:I

    .line 277
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    .line 278
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 279
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 280
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 285
    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 287
    .local v2, "pausedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v3, v2, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    .end local v2    # "pausedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "count"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v3, "stackId"

    iget v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    const-string v3, "packageName"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "activityName"

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 300
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 301
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 303
    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v4, 0x4

    # invokes: Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V
    invoke-static {v3, v1, v4, v5}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$300(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    goto :goto_0
.end method
