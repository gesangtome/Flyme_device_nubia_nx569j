.class Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterceptServiceConnection"
.end annotation


# instance fields
.field public mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1719
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.harassintercept.action.InterceptService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const-string v1, "cn.nubia.harassintercept"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1721
    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1722
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1745
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "[NB] mInterceptService != null"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    invoke-interface {v1, p1}, Lcn/nubia/harassintercept/service/IInterceptService;->addName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "[NB] return null"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1753
    return-void

    .line 1749
    :catch_0
    move-exception v0

    .line 1750
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "[NB] InterceptService Exception while adding name to sms"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method dispose(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1728
    :cond_0
    return-void
.end method

.method public isSpamSms(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1732
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v1, :cond_0

    .line 1733
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "[NB] mInterceptService != null"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1734
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    invoke-interface {v1, p1}, Lcn/nubia/harassintercept/service/IInterceptService;->isSpamSms(Landroid/content/Intent;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1740
    :goto_0
    return-object v1

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "[NB] Exception identifying new sms is spam sms or not"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1739
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "[NB] return null"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1740
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1707
    invoke-static {p2}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/harassintercept/service/IInterceptService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "[NB] Intercept service connected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1709
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "[NB] Intercept service disconnected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1715
    return-void
.end method
