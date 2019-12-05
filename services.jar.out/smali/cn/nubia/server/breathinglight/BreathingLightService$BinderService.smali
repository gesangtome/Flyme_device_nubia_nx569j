.class final Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;
.super Lnubia/hardware/IBreathingLightManager$Stub;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Lnubia/hardware/IBreathingLightManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p2, "x1"    # Lcn/nubia/server/breathinglight/BreathingLightService$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    return-void
.end method


# virtual methods
.method public requestBreathingLight(I)V
    .locals 1
    .param p1, "known"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->requestBreathingLightInternal(I)V

    .line 439
    return-void
.end method

.method public requestBreathingLightExt(IIIII)V
    .locals 6
    .param p1, "light"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "scene"    # I
    .param p5, "color"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->requestBreathingLightExtInternal(IIIII)V

    .line 447
    return-void
.end method
