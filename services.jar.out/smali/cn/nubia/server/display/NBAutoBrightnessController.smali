.class public Lcn/nubia/server/display/NBAutoBrightnessController;
.super Ljava/lang/Object;
.source "NBAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;
    }
.end annotation


# static fields
.field private static final AUTO_ADJUST_MODE_CURRENT_SCREEN:I = 0x1

.field private static final LCD_AUTO_BRIGHTNESS_LEVEL_UNKNOW:I = -0x1

.field private static final MAX_NB_AUTO_BRIGHTNESS:I = 0xff

.field private static final MIN_NB_AUTO_BRIGHTNESS:I = 0x1

.field private static final NB_AUTO_ADJUST_MODE:Ljava/lang/String; = "zte_auto_brightness_adj_mode"

.field private static final NB_AUTO_ADJUST_MODE_ALL_SCREEN:I = 0x0

.field private static final NB_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "zte_auto_brightness_adj"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_DEFAULT:Ljava/lang/String; = "zte_auto_brightness_adj_5"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_LIST:[Ljava/lang/String;

.field private static final NB_AUTO_BRIGHTNESS_LEVEL:Ljava/lang/String; = "zte_auto_brightness_level"

.field private static final NB_AUTO_CONTROL_MODE_ENABLE:Ljava/lang/String; = "zte_auto_brightness_control_mode"

.field private static final NB_AUTO_DECREASE_BRIGHTNESS_CHANGE_RATE_BASE:I = 0x3

.field private static final NB_AUTO_INCREASE_BRIGHTNESS_CHANGE_RATE_BASE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NBAutoBrightnessController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static lcd_auto_brightness_level:I


# instance fields
.field private isProximitySensorOpen:Z

.field private final mAutoBrightnessLevels:[I

.field private final mCallback:Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLcdBacklightValues:[I

.field private mPositive:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mSendUpdate:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "zte_auto_brightness_adj_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zte_auto_brightness_adj_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zte_auto_brightness_adj_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "zte_auto_brightness_adj_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zte_auto_brightness_adj_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zte_auto_brightness_adj_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zte_auto_brightness_adj_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zte_auto_brightness_adj_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zte_auto_brightness_adj_8"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/display/NBAutoBrightnessController;->NB_AUTO_BRIGHTNESS_ADJ_LIST:[Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    sput v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximityThreshold:F

    .line 88
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    .line 89
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z

    .line 91
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSendUpdate:Z

    .line 92
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->isProximitySensorOpen:Z

    .line 248
    new-instance v0, Lcn/nubia/server/display/NBAutoBrightnessController$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/display/NBAutoBrightnessController$2;-><init>(Lcn/nubia/server/display/NBAutoBrightnessController;)V

    iput-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 105
    iput-object p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 107
    iput-object p3, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object p4, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mCallback:Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    .line 117
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 121
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximityThreshold:F

    .line 126
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/display/NBAutoBrightnessController;->registerAdjustObserver()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/display/NBAutoBrightnessController;)Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mCallback:Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/display/NBAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/display/NBAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/display/NBAutoBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/display/NBAutoBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 38
    iget v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/display/NBAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSendUpdate:Z

    return v0
.end method

.method private autoBrightnessValueInit(F[I)I
    .locals 3
    .param p1, "sensorValue"    # F
    .param p2, "values"    # [I

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 217
    :cond_0
    sput v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    .line 219
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    sget v2, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    aget v1, v1, v2

    return v1

    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAdjValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 184
    .local v0, "adj":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getUpperAdjValue(F)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getUnderAdjValue(F)I

    move-result v1

    goto :goto_0
.end method

.method private getAutoBrightnessAdjValue()I
    .locals 5

    .prologue
    .line 166
    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zte_auto_brightness_adj_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "autoBrightnessAdjMode":I
    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zte_auto_brightness_level"

    sget v4, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "value":I
    if-nez v0, :cond_0

    .line 174
    const-string v2, "zte_auto_brightness_adj"

    invoke-direct {p0, v2}, Lcn/nubia/server/display/NBAutoBrightnessController;->getAdjValue(Ljava/lang/String;)I

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 176
    :cond_0
    sget v2, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v2}, Lcn/nubia/server/display/NBAutoBrightnessController;->getAutoBrightnessLevel(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/server/display/NBAutoBrightnessController;->getAdjValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getAutoBrightnessLevel(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 158
    if-ltz p1, :cond_0

    sget-object v0, Lcn/nubia/server/display/NBAutoBrightnessController;->NB_AUTO_BRIGHTNESS_ADJ_LIST:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 159
    :cond_0
    const-string v0, "zte_auto_brightness_adj_5"

    .line 161
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcn/nubia/server/display/NBAutoBrightnessController;->NB_AUTO_BRIGHTNESS_ADJ_LIST:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getAutoBrightnessValue(F)I
    .locals 1
    .param p1, "lightValue"    # F

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->autoBrightnessValueInit(F[I)I

    move-result v0

    return v0
.end method

.method private getChangeRate(III)I
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I
    .param p3, "base"    # I

    .prologue
    .line 318
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static getDecRateBase()I
    .locals 2

    .prologue
    .line 306
    const-string v0, "persist.sys.lcd.dec.rate.base"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getIncRateBase()I
    .locals 2

    .prologue
    .line 301
    const-string v0, "persist.sys.lcd.inc.rate.base"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getUnderAdjValue(F)I
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 193
    sget v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getUnderAutoBrightnessAdj(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getUnderAutoBrightnessAdj(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    aget v1, v0, p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getUpperAdjValue(F)I
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 188
    sget v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getUpperAutoBrightnessAdj(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getUpperAutoBrightnessAdj(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private registerAdjustObserver()V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcn/nubia/server/display/NBAutoBrightnessController$1;

    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/display/NBAutoBrightnessController$1;-><init>(Lcn/nubia/server/display/NBAutoBrightnessController;Landroid/os/Handler;)V

    .line 137
    .local v0, "mAdjustObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    sget-object v1, Lcn/nubia/server/display/NBAutoBrightnessController;->NB_AUTO_BRIGHTNESS_ADJ_LIST:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/display/NBAutoBrightnessController;->registerContentObserver(Landroid/database/ContentObserver;[Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private varargs registerContentObserver(Landroid/database/ContentObserver;[Ljava/lang/String;)V
    .locals 7
    .param p1, "observer"    # Landroid/database/ContentObserver;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 146
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 147
    .local v1, "each":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "each":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setProximitySensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-boolean v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 233
    iput-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    .line 234
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 245
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 241
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    .line 242
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    move v0, v1

    .line 245
    goto :goto_0
.end method


# virtual methods
.method public closeProximitySensor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, v1}, Lcn/nubia/server/display/NBAutoBrightnessController;->setProximitySensorEnabled(Z)Z

    .line 291
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->isProximitySensorOpen:Z

    .line 293
    :cond_0
    return-void
.end method

.method public getBrightness(F)I
    .locals 2
    .param p1, "ambientLux"    # F

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcn/nubia/server/display/NBAutoBrightnessController;->getAutoBrightnessValue(F)I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getAutoBrightnessAdjValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenBrightnessChangeRate(II)I
    .locals 1
    .param p1, "currentBrightness"    # I
    .param p2, "newBrightness"    # I

    .prologue
    .line 312
    if-le p1, p2, :cond_0

    invoke-static {}, Lcn/nubia/server/display/NBAutoBrightnessController;->getDecRateBase()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getChangeRate(III)I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcn/nubia/server/display/NBAutoBrightnessController;->getIncRateBase()I

    move-result v0

    goto :goto_0
.end method

.method public isClosedDistance()Z
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    iget-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z

    and-int/2addr v0, v1

    return v0
.end method

.method public openProximitySensorAndCheckState(Z)V
    .locals 2
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->isProximitySensorOpen:Z

    if-nez v0, :cond_0

    .line 278
    iput-boolean p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSendUpdate:Z

    .line 279
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 280
    iput-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->isProximitySensorOpen:Z

    .line 281
    invoke-direct {p0, v1}, Lcn/nubia/server/display/NBAutoBrightnessController;->setProximitySensorEnabled(Z)Z

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mCallback:Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;

    iget-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSendUpdate:Z

    invoke-interface {v0, v1}, Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;->autoUpdateBrightness(Z)V

    goto :goto_0
.end method

.method public saveScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    return-void
.end method

.method public setNBControlModeEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_control_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
