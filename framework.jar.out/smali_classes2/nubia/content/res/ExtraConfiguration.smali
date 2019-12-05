.class public Lnubia/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnubia/content/res/ExtraConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "cn.nubia.launcher"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "cn.nubia.mms"

.field public static final SETTINGS_PKG_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTRESTE_CHANGE_FLAG:J = 0x10047899L

.field public static final THEMEMANAGER_PKG_NAME:Ljava/lang/String; = "cn.nubia.thememanager"

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FONT_FALLBACK:J = 0x40000L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x40000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_SETTING:J = 0x200L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THEMEMANAGER:J = 0x20000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final THEME_FONT_FLAGS:J = 0x40010L

.field private static mEmptyDefaultFonts:Z

.field private static mUpdateThemeNotFirstTime:Z

.field private static final needRestartActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public needReloadProcessTypeface:Z

.field public themeChanged:I

.field public themeChangedFlags:J

.field public typefaceTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lnubia/content/res/ExtraConfiguration;->mUpdateThemeNotFirstTime:Z

    .line 61
    sput-boolean v0, Lnubia/content/res/ExtraConfiguration;->mEmptyDefaultFonts:Z

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 68
    iput-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 70
    iput-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    .line 71
    iput-boolean v0, p0, Lnubia/content/res/ExtraConfiguration;->needReloadProcessTypeface:Z

    return-void
.end method

.method public static addNeedRestartActivity(J)V
    .locals 2
    .param p0, "themeFlag"    # J

    .prologue
    .line 75
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "cn.nubia.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "cn.nubia.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_3
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartStatusBar(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_4
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartThemeManager(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "cn.nubia.thememanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5
    return-void
.end method

.method public static getScaleMode()I
    .locals 3

    .prologue
    .line 96
    const/4 v1, 0x1

    .line 98
    .local v1, "scale":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 100
    .local v0, "cfg":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 101
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v2, 0xf

    .line 102
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 112
    .end local v0    # "cfg":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .prologue
    .line 116
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 128
    const-wide/32 v0, 0x10040011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "themeFlag"    # J

    .prologue
    .line 134
    const-string v0, "cn.nubia.launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 136
    :cond_0
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "cn.nubia.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_3
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartStatusBar(J)Z

    move-result v0

    goto :goto_0

    .line 144
    :cond_4
    const-string v0, "cn.nubia.thememanager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartThemeManager(J)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_5
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 152
    const-wide/32 v0, 0x40811

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 158
    const-wide/32 v0, 0x44019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 164
    const-wide/32 v0, 0x40091

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSettings(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 169
    const-wide/32 v0, 0x40219

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 175
    const-wide/32 v0, 0x43019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartThemeManager(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 181
    const-wide/32 v0, 0x60011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeNeedRestartActivity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lnubia/content/res/ExtraConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnubia/content/res/ExtraConfiguration;->compareTo(Lnubia/content/res/ExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnubia/content/res/ExtraConfiguration;)I
    .locals 2
    .param p1, "that"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 191
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget v1, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public diff(Lnubia/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "delta"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "changed":I
    iget v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 197
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 199
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 203
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public needReloadFont()Z
    .locals 4

    .prologue
    .line 121
    const-wide/32 v0, 0x40010

    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnubia/content/res/ExtraConfiguration;->needReloadProcessTypeface:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/app/ActivityThread;->isSystemServer:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "paramParcel"    # Landroid/os/Parcel;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    .line 210
    return-void
.end method

.method public setTo(Lnubia/content/res/ExtraConfiguration;)V
    .locals 2
    .param p1, "config"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 213
    iget v0, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 214
    iget-wide v0, p1, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 215
    iget-wide v0, p1, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    .line 216
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, " typefaceTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lnubia/content/res/ExtraConfiguration;)I
    .locals 4
    .param p1, "delta"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "changed":I
    iget v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 237
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 238
    iget v1, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 239
    iget-wide v2, p1, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 240
    iget-wide v2, p1, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    iput-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    .line 242
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 9
    .param p1, "themeFlag"    # J

    .prologue
    const-wide/32 v6, 0x40010

    .line 267
    sget-boolean v2, Lnubia/content/res/ExtraConfiguration;->mEmptyDefaultFonts:Z

    if-eqz v2, :cond_1

    .line 268
    iget v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 269
    iput-wide p1, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 272
    .local v0, "savedThemeChangedFlag":J
    iget v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 273
    iput-wide p1, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 275
    and-long v2, v6, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 276
    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    or-long/2addr v2, v6

    iput-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    goto :goto_0
.end method

.method public updateThemeFirstTime(J)V
    .locals 5
    .param p1, "themeFlag"    # J

    .prologue
    const/4 v4, 0x1

    .line 251
    sget-boolean v0, Lnubia/content/res/ExtraConfiguration;->mUpdateThemeNotFirstTime:Z

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sput-boolean v4, Lnubia/content/res/ExtraConfiguration;->mUpdateThemeNotFirstTime:Z

    .line 255
    const-wide/32 v0, 0x40010

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 256
    sput-boolean v4, Lnubia/content/res/ExtraConfiguration;->mEmptyDefaultFonts:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "paramInt"    # I

    .prologue
    .line 282
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    iget-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->typefaceTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    return-void
.end method
