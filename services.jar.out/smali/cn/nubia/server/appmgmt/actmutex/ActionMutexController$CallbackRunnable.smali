.class Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;
.super Ljava/lang/Object;
.source "ActionMutexController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private sCb:Lcn/nubia/mutex/IMutexCallback;

.field private sFlag:Z

.field private sPckName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;Z)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "cb"    # Lcn/nubia/mutex/IMutexCallback;
    .param p4, "unORregister"    # Z

    .prologue
    .line 219
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sPckName:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sCb:Lcn/nubia/mutex/IMutexCallback;

    .line 222
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sFlag:Z

    .line 223
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sFlag:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    # getter for: Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->access$100(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;)Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sPckName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sCb:Lcn/nubia/mutex/IMutexCallback;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->register(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)Z

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    # getter for: Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->access$100(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;)Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sCb:Lcn/nubia/mutex/IMutexCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->unregister(Lcn/nubia/mutex/IMutexCallback;)Z

    .line 232
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;->sPckName:Ljava/lang/String;

    # invokes: Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->removeCurrentActByPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->access$000(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;)V

    goto :goto_0
.end method
