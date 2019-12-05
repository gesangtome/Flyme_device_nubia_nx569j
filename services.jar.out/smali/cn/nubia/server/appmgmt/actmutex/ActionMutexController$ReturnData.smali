.class Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;
.super Ljava/lang/Object;
.source "ActionMutexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReturnData"
.end annotation


# instance fields
.field isOpen:Z

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "is"    # Z

    .prologue
    .line 197
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->this$0:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    .line 198
    iput-object p2, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    .line 199
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    .line 200
    return-void
.end method
