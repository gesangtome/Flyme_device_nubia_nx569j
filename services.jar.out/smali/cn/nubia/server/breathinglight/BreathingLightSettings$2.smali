.class Lcn/nubia/server/breathinglight/BreathingLightSettings$2;
.super Ljava/lang/Object;
.source "BreathingLightSettings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 262
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 248
    .local v4, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v1, v3, v6

    .line 250
    .local v1, "lux":F
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J
    invoke-static {v3}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$500(Lcn/nubia/server/breathinglight/BreathingLightSettings;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 251
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->getCurrentBrightness()I
    invoke-static {v3}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$600(Lcn/nubia/server/breathinglight/BreathingLightSettings;)I

    move-result v0

    .line 252
    .local v0, "current":I
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->getBrightnessByLux(F)I
    invoke-static {v3, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$700(Lcn/nubia/server/breathinglight/BreathingLightSettings;F)I

    move-result v2

    .line 253
    .local v2, "target":I
    if-eq v0, v2, :cond_0

    .line 254
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V
    invoke-static {v3, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$800(Lcn/nubia/server/breathinglight/BreathingLightSettings;I)V

    .line 256
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # setter for: Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J
    invoke-static {v3, v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$502(Lcn/nubia/server/breathinglight/BreathingLightSettings;J)J

    .line 258
    .end local v0    # "current":I
    .end local v2    # "target":I
    :cond_1
    return-void
.end method
