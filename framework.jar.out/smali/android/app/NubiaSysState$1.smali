.class Landroid/app/NubiaSysState$1;
.super Landroid/os/Handler;
.source "NubiaSysState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/NubiaSysState;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NubiaSysState;


# direct methods
.method constructor <init>(Landroid/app/NubiaSysState;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Landroid/app/NubiaSysState$1;->this$0:Landroid/app/NubiaSysState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/app/NubiaSysState$1;->this$0:Landroid/app/NubiaSysState;

    # getter for: Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;
    invoke-static {v0}, Landroid/app/NubiaSysState;->access$000(Landroid/app/NubiaSysState;)Landroid/app/SysStateReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/app/NubiaSysState$1;->this$0:Landroid/app/NubiaSysState;

    # getter for: Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;
    invoke-static {v0}, Landroid/app/NubiaSysState;->access$000(Landroid/app/NubiaSysState;)Landroid/app/SysStateReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/SysStateReceiver;->onReceive(Landroid/os/Message;)V

    .line 56
    :cond_0
    return-void
.end method
