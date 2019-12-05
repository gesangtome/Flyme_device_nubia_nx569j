.class Lcn/nubia/server/appmgmt/UnUseAppController$1;
.super Ljava/lang/Object;
.source "UnUseAppController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/UnUseAppController;->noteResumingActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/UnUseAppController;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/UnUseAppController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->this$0:Lcn/nubia/server/appmgmt/UnUseAppController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->this$0:Lcn/nubia/server/appmgmt/UnUseAppController;

    # getter for: Lcn/nubia/server/appmgmt/UnUseAppController;->debug:Z
    invoke-static {v0}, Lcn/nubia/server/appmgmt/UnUseAppController;->access$000(Lcn/nubia/server/appmgmt/UnUseAppController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "UnUseAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " className:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->val$className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->this$0:Lcn/nubia/server/appmgmt/UnUseAppController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/UnUseAppController$1;->val$className:Ljava/lang/String;

    # invokes: Lcn/nubia/server/appmgmt/UnUseAppController;->call(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/UnUseAppController;->access$100(Lcn/nubia/server/appmgmt/UnUseAppController;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
