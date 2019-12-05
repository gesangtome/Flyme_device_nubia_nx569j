.class public Lcn/nubia/server/breathinglight/BreathingLightSettings;
.super Ljava/lang/Object;
.source "BreathingLightSettings.java"


# static fields
.field private static final BRIGHTNESS_AUTO:I = 0x1

.field private static final BRIGHTNESS_MANUAL:I = 0x0

.field private static final DEFAULT_LIGHT_BRIGHTNESS:I = 0xa

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final LED_LIGHT_BRIGHTNESS:Ljava/lang/String; = "led_light_brightness"

.field private static final LED_LIGHT_BRIGHTNESS_MODE:Ljava/lang/String; = "led_light_brightness_mode"

.field private static final LED_LIGHT_CHARGE_ENABLE:Ljava/lang/String; = "led_light_charge_enable"

.field private static final LED_LIGHT_TOUCH_ENABLE:Ljava/lang/String; = "led_light_touch_enable"

.field private static final LED_NO_DISTURB_ENABLE:Ljava/lang/String; = "led_no_disturb_enable"

.field private static final NOTIFICATION_ENABLE:Ljava/lang/String; = "notificationsettings"

.field private static final SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final TAG:Ljava/lang/String; = "BreathingLightSettings"


# instance fields
.field private final mBreathLightBrightness:[I

.field private mBrightnessMode:I

.field private mContext:Landroid/content/Context;

.field private mLastObservedLuxTime:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorLux:[F

.field private mNotificationLightEnable:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleUiModeEnable:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 221
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    .line 223
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    .line 244
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 70
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 73
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    .line 77
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->registerSettingsObserver()V

    .line 78
    return-void

    .line 221
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x7
        0xa
        0xf
        0x14
        0x23
        0x32
    .end array-data

    .line 223
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43c80000    # 400.0f
        0x44610000    # 900.0f
        0x44fa0000    # 2000.0f
        0x459c4000    # 5000.0f
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->brightnessModeChange()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->manualBrightnessChange()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->notificationSettingsChange()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->singleUiModeChange()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->noDisturbModeChange()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightSettings;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    iget-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcn/nubia/server/breathinglight/BreathingLightSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightSettings;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightSettings;F)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # F

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getBrightnessByLux(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/server/breathinglight/BreathingLightSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    return-void
.end method

.method private brightnessModeChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 177
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 179
    const-string v1, "led_light_brightness"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    goto :goto_0
.end method

.method private enableAutoBrightness(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    .line 204
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private getBrightnessByLux(F)I
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 228
    const/16 v0, 0xa

    .line 230
    .local v0, "brightness":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 231
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    aget v0, v2, v1

    .line 236
    goto :goto_0

    .line 233
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCurrentBrightness()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightBrightness()I

    move-result v0

    return v0
.end method

.method private initSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 113
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 120
    :goto_0
    const-string v1, "notificationsettings"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 122
    const-string v1, "single_ui_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    .line 124
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->processSingleUiMode(I)V

    .line 125
    return-void

    .line 117
    :cond_0
    invoke-direct {p0, v5}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    goto :goto_0
.end method

.method private manualBrightnessChange()V
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_brightness"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 199
    :cond_0
    return-void
.end method

.method private noDisturbModeChange()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->noDisturbModeChange()V

    .line 159
    return-void
.end method

.method private notificationSettingsChange()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notificationsettings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 145
    return-void
.end method

.method private processSingleUiMode(I)V
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 81
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    const-string v1, "led_light_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    const-string v1, "notificationsettings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 99
    const-string v1, "led_no_disturb_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 217
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 218
    return-void
.end method

.method private singleUiModeChange()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    .line 154
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->processSingleUiMode(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleBootCompeleted()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->initSettings()V

    .line 106
    return-void
.end method

.method public isBreathingLightTouchEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 138
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_light_touch_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChargeSwitchEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_light_charge_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoDisturbEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_no_disturb_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isNotificationEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleUiModeEnable()Z
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAutoBrightnessState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 189
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 192
    :cond_0
    return-void
.end method
