.class Lnubia/smartkey/SmartKeyController$1;
.super Ljava/lang/Object;
.source "SmartKeyController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/smartkey/SmartKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/smartkey/SmartKeyController;


# direct methods
.method constructor <init>(Lnubia/smartkey/SmartKeyController;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lnubia/smartkey/SmartKeyController$1;->this$0:Lnubia/smartkey/SmartKeyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 56
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController$1;->this$0:Lnubia/smartkey/SmartKeyController;

    invoke-static {p2}, Lnubia/smartkey/IController$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/smartkey/IController;

    move-result-object v1

    # setter for: Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;
    invoke-static {v0, v1}, Lnubia/smartkey/SmartKeyController;->access$002(Lnubia/smartkey/SmartKeyController;Lnubia/smartkey/IController;)Lnubia/smartkey/IController;

    .line 57
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController$1;->this$0:Lnubia/smartkey/SmartKeyController;

    # getter for: Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;
    invoke-static {v0}, Lnubia/smartkey/SmartKeyController;->access$000(Lnubia/smartkey/SmartKeyController;)Lnubia/smartkey/IController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController$1;->this$0:Lnubia/smartkey/SmartKeyController;

    # invokes: Lnubia/smartkey/SmartKeyController;->handlePendingPressType()V
    invoke-static {v0}, Lnubia/smartkey/SmartKeyController;->access$100(Lnubia/smartkey/SmartKeyController;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 51
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController$1;->this$0:Lnubia/smartkey/SmartKeyController;

    const/4 v1, 0x0

    # setter for: Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;
    invoke-static {v0, v1}, Lnubia/smartkey/SmartKeyController;->access$002(Lnubia/smartkey/SmartKeyController;Lnubia/smartkey/IController;)Lnubia/smartkey/IController;

    .line 52
    return-void
.end method
