.class Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
.super Ljava/lang/Object;
.source "FreezerProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;
    }
.end annotation


# static fields
.field private static final FREEZERD:Ljava/lang/String; = "nubia.os.IFreezerDaemon"

.field private static final TAG:Ljava/lang/String; = "ApplicationFreeze"


# instance fields
.field private mDaemon:Lnubia/os/IFreezerDaemon;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "ApplicationFreeze"

    const-string v1, "freezerd died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    .line 42
    return-void
.end method

.method getFreezerDaemon()Lnubia/os/IFreezerDaemon;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "nubia.os.IFreezerDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/IFreezerDaemon$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IFreezerDaemon;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    .line 47
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    if-eqz v1, :cond_1

    .line 49
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    invoke-interface {v1}, Lnubia/os/IFreezerDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "ApplicationFreeze"

    const-string v2, "freezerd not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method makeSureUnfreeze(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 76
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;I)V

    .line 77
    .local v0, "runnable":Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->run()V

    .line 78
    return-void
.end method

.method declared-synchronized unfreeze(I)Z
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->getFreezerDaemon()Lnubia/os/IFreezerDaemon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    .local v0, "daemon":Lnubia/os/IFreezerDaemon;
    if-eqz v0, :cond_0

    .line 64
    :try_start_1
    const-string v2, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v0, p1}, Lnubia/os/IFreezerDaemon;->unfreeze(I)V

    .line 66
    const-string v2, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const/4 v2, 0x1

    .line 72
    :goto_0
    monitor-exit p0

    return v2

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    .end local v0    # "daemon":Lnubia/os/IFreezerDaemon;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
