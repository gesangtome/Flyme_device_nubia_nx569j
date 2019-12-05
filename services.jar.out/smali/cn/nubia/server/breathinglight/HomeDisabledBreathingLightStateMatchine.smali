.class public Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;
.super Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.source "HomeDisabledBreathingLightStateMatchine.java"


# instance fields
.field mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 10
    iput-object p2, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 11
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    const/16 v0, 0x28

    .line 38
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 40
    return-void
.end method

.method protected handleCharging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x28

    .line 31
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 33
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const/16 v0, 0x28

    .line 24
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 26
    return-void
.end method

.method protected handleMissEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 15
    const/16 v0, 0x28

    .line 16
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v3, 0x4

    invoke-virtual {v2, v5, v4, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v2

    invoke-virtual {v1, v0, v5, v2, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 19
    return-void
.end method
