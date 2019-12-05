.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;
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
    name = "NoteResumingActivityRunnable"
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
    .line 222
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    .line 224
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mUid:I

    .line 225
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 226
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 231
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    iget v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    iget v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 233
    .local v5, "resumedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v7, v5, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    .end local v5    # "resumedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-direct {v0, v7, v8, v9}, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v0, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    iget v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "count"

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v8}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v7, "packageName"

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v7, "activityName"

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "i":I
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 247
    .local v6, "stackId":I
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    check-cast v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 248
    .restart local v0    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stackId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activityName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 252
    goto :goto_1

    .line 256
    .end local v6    # "stackId":I
    :cond_2
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z
    invoke-static {v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 257
    const-string v7, "SysStateProducer"

    const-string v8, " Resuming Activity And Notify Listensers..."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 260
    .local v4, "msg":Landroid/os/Message;
    const/16 v7, 0x7d1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 261
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v8, 0x2

    # invokes: Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V
    invoke-static {v7, v4, v8, v9}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$300(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 263
    const/16 v7, 0x7d0

    iput v7, v4, Landroid/os/Message;->what:I

    .line 264
    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v8, 0x1

    # invokes: Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V
    invoke-static {v7, v4, v8, v9}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$300(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    goto/16 :goto_0
.end method
