.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;
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
    name = "NoteStartAppRunnable"
.end annotation


# instance fields
.field private mStartPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->mUid:I

    .line 341
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->mStartPackage:Ljava/lang/String;

    .line 342
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "count"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    # getter for: Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v2, "packageName"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->mStartPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 350
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x834

    iput v2, v1, Landroid/os/Message;->what:I

    .line 351
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 353
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v4, 0x10

    # invokes: Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V
    invoke-static {v2, v1, v4, v5}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$300(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 354
    return-void
.end method
