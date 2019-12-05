.class public Lcn/nubia/server/policy/smartface/util/SysPropUtils;
.super Ljava/lang/Object;
.source "SysPropUtils.java"


# static fields
.field private static final AUTO_FINGER_MODE_FUNCTION_ENABLE:Ljava/lang/String; = "sensitive_touch"

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final MAX_BRIGHTNESS:I = 0xff

.field public static final SMARTFACE_DISPLAY_ENABLE:Ljava/lang/String; = "smart_face_display"

.field public static final SMARTFACE_FUNCTION_ENABLE:Ljava/lang/String; = "smart_face_function_enable"

.field public static final SMARTFACE_LATTICE_ENABLE:Ljava/lang/String; = "smart_face_lattice"

.field private static final SMARTFACE_LATTICE_SINGLE_HALL_FEATURE:Ljava/lang/String; = "cn.nubia.smartface.feature.lattice.single_hall"

.field public static final SMARTFACE_OPEN_UNLOCK_SCREEN:Ljava/lang/String; = "smart_face_open_unlock_screen"

.field private static final SMARTFACE_ORIDINARY_ENABLE:Ljava/lang/String; = "smart_face_ordinary"

.field public static final SMARTFACE_WINDOW_ENABLE:Ljava/lang/String; = "smart_face_window"

.field private static final SMARTFACE_WINDOW_FEATURE:Ljava/lang/String; = "cn.nubia.smartface.feature.window"

.field private static final TAG:Ljava/lang/String; = "SysSettingsManager"

.field private static mIsSingleUIEnable:Z

.field private static singleStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput v0, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->singleStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealSingleUI(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 154
    sget-boolean v0, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->mIsSingleUIEnable:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSingleUiMode(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static disableHapticFeedback(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableSmartFaceFunc(Landroid/content/Context;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_face_function_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    return-void
.end method

.method public static getBrightnessMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x1

    .line 127
    .local v0, "brightnessMode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysSettingsManager"

    const-string v3, "get brightness mode failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSingleUiMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSmartFaceDisplayFlag(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_face_display"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getSysScreenBrightness(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 108
    const/16 v1, 0xff

    .line 110
    .local v1, "screenBrightness":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysSettingsManager"

    const-string v3, "get system brightness failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hasFeature(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAutoFingerEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sensitive_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOpenUnLockFunctionEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_open_unlock_screen"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleUIFunctionEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSingleUiMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmartFaceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmartFaceFlipEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_ordinary"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartFaceFuncEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_function_enable"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartFaceLatticeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    const-string v2, "cn.nubia.smartface.feature.lattice.single_hall"

    invoke-static {v2, p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->hasFeature(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_face_lattice"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isSmartFaceWindowEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    const-string v2, "cn.nubia.smartface.feature.window"

    invoke-static {v2, p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->hasFeature(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_face_window"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static needRotationScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBrightnessMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "brightnessMode"    # I

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysSettingsManager"

    const-string v2, "setBrightnessMode mode failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setSingleUiMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    sget v2, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->singleStatus:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setSmartFaceDisplayFlag(Landroid/content/Context;I)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_face_display"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 41
    return-void
.end method

.method public static setSysScreenBrightness(Landroid/content/Context;I)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "brightness"    # I

    .prologue
    .line 97
    :try_start_0
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysSettingsManager"

    const-string v3, "setSysScreenBrightness  failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateSingleUIFunction(Landroid/content/Context;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSingleUIFunctionEnable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->mIsSingleUIEnable:Z

    .line 150
    invoke-static {p0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSingleUiMode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->singleStatus:I

    .line 151
    return-void
.end method
