.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;
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
    name = "NoteStopingActivityRunnable"
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
    .line 313
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mUid:I

    .line 315
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mStackId:I

    .line 316
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 317
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "count"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    const-string v2, "stackId"

    iget v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mStackId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string v2, "packageName"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "activityName"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 328
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 329
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 331
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v4, 0x8

    # invokes: Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V
    invoke-static {v2, v1, v4, v5}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$300(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 332
    return-void
.end method
