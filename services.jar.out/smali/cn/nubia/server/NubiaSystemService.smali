.class public abstract Lcn/nubia/server/NubiaSystemService;
.super Lcom/android/server/SystemService;
.source "NubiaSystemService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract getServiceBinder()Landroid/os/IBinder;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 20
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/server/NubiaSystemService;->systemReady()V

    .line 23
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcn/nubia/server/NubiaSystemService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/server/NubiaSystemService;->getServiceBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/NubiaSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 28
    return-void
.end method

.method protected systemReady()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
