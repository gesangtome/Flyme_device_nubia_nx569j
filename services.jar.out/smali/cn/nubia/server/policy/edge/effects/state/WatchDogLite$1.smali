.class Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$1;
.super Landroid/os/Handler;
.source "WatchDogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;-><init>(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$1;->this$0:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$1;->this$0:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;

    # invokes: Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->timeOut(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;)V
    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->access$000(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;)V

    .line 25
    return-void
.end method
