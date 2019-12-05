.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;
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
    name = "NoteTopActivityRunnable"
.end annotation


# instance fields
.field mCallback:Lnubia/os/ITaskCallback;

.field private mResumingActivity:Ljava/lang/String;

.field private mResumingPackage:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;)V
    .locals 0
    .param p2, "callback"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->mCallback:Lnubia/os/ITaskCallback;

    .line 189
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 194
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "count"

    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "i":I
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 199
    .local v5, "stackId":I
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 200
    .local v0, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stackId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activityName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    goto :goto_0

    .line 209
    .end local v0    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    .end local v5    # "stackId":I
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 210
    .local v4, "msg":Landroid/os/Message;
    const/16 v6, 0x7d0

    iput v6, v4, Landroid/os/Message;->what:I

    .line 211
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 212
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->mCallback:Lnubia/os/ITaskCallback;

    # invokes: Lcn/nubia/server/appmgmt/SysStateProducer;->notifyTopActivity(Lnubia/os/ITaskCallback;Landroid/os/Message;)V
    invoke-static {v6, v7, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$100(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;Landroid/os/Message;)V

    .line 213
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
