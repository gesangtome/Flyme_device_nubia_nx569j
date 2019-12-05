.class Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$1;
.super Ljava/lang/Object;
.source "ActionMutexController.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$1;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeList(Ljava/lang/String;)V
    .locals 1
    .param p1, "pckName"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$1;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    # invokes: Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->removeCurrentActByPackage(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->access$000(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;)V

    .line 29
    return-void
.end method
