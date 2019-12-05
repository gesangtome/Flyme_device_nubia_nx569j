.class public Lcn/nubia/server/appmgmt/ApplicationControllerUtils;
.super Ljava/lang/Object;
.source "ApplicationControllerUtils.java"


# static fields
.field private static final DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERNAL_VERSION_FLAG:Ljava/lang/String; = "sys.nubia_internal_version_flag"

.field private static final MANAGE_WAKEUP_ALARM_LIST:[Ljava/lang/String;

.field private static final SPECIAL_APP_LIST:[Ljava/lang/String;

.field private static final SYSTEM_FILE:Ljava/io/File;

.field private static final WECHAT_DANGEROUS_WAKELOCKS:[Ljava/lang/String;

.field private static sDefaultAllowedAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedCheckAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.qqlite"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SPECIAL_APP_LIST:[Ljava/lang/String;

    .line 91
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->MANAGE_WAKEUP_ALARM_LIST:[Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WakerLock:"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->WECHAT_DANGEROUS_WAKELOCKS:[Ljava/lang/String;

    .line 116
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->WECHAT_DANGEROUS_WAKELOCKS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isAppDefaultAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    const-string v2, "com.chaozh.iReaderNubia"

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    :goto_1
    return v1

    .line 66
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.cts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v5, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    sget-object v5, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 102
    .local v1, "dangerousWakeLocks":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 103
    .local v2, "element":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const/4 v5, 0x1

    .line 108
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dangerousWakeLocks":[Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 102
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "dangerousWakeLocks":[Ljava/lang/String;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dangerousWakeLocks":[Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isDefaultAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 38
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isAppDefaultAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_3
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isInternationalVersion()Z
    .locals 3

    .prologue
    .line 24
    const-string v1, "sys.nubia_internal_version_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "internalVersion":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isManageWakeupAlarm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->MANAGE_WAKEUP_ALARM_LIST:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSpecialApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SPECIAL_APP_LIST:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
