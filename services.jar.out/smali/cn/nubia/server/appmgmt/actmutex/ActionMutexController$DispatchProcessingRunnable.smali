.class Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;
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
    name = "DispatchProcessingRunnable"
.end annotation


# instance fields
.field private sWillact:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;->sWillact:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;->sWillact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->dispatchProcessingCompletedCallback(Ljava/lang/String;)V

    .line 211
    return-void
.end method
