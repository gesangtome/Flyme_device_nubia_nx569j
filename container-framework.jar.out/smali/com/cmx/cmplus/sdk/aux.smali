.class Lcom/cmx/cmplus/sdk/aux;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic COm5:Lcom/cmx/cmplus/sdk/CloneHelperImpl;


# direct methods
.method constructor <init>(Lcom/cmx/cmplus/sdk/CloneHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/cmx/cmplus/sdk/aux;->COm5:Lcom/cmx/cmplus/sdk/CloneHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/aux;->COm5:Lcom/cmx/cmplus/sdk/CloneHelperImpl;

    invoke-static {p2}, Lcom/cmx/cmplus/com2;->aux(Landroid/os/IBinder;)Lcom/cmx/cmplus/com1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;Lcom/cmx/cmplus/com1;)Lcom/cmx/cmplus/com1;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/cmx/cmplus/sdk/aux;->COm5:Lcom/cmx/cmplus/sdk/CloneHelperImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;Lcom/cmx/cmplus/com1;)Lcom/cmx/cmplus/com1;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cmx.CloneAgentApiService.RT_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cmx.cmvirtualbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmx/cmplus/sdk/aux;->COm5:Lcom/cmx/cmplus/sdk/CloneHelperImpl;

    invoke-static {v1}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->Aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmx/cmplus/sdk/aux;->COm5:Lcom/cmx/cmplus/sdk/CloneHelperImpl;

    invoke-static {v2}, Lcom/cmx/cmplus/sdk/CloneHelperImpl;->aux(Lcom/cmx/cmplus/sdk/CloneHelperImpl;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
