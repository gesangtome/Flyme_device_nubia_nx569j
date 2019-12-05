.class public Lcn/nubia/server/notification/NotificationBlackWhiteList;
.super Ljava/lang/Object;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;
    }
.end annotation


# static fields
.field private static final ALLOW_NOTIFY_FLAG:I = 0x1

.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.providers.AppSettingsInfoProvider"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_FLAG:I = 0x5

.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"


# instance fields
.field private mCloneHelper:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsDoubleInstanceModeChecked:Z

.field private mIsInDoubleInstanceMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://cn.nubia.providers.AppSettingsInfoProvider/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    .line 38
    new-instance v0, Lcn/nubia/server/notification/NotificationBlackWhiteList$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList$1;-><init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V

    iput-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->handleNotifyDbChange()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getAllAppsFlag()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    return-object v0
.end method

.method private getAllAppsFlag()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v4, v4}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    .local v1, "mCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 110
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_1
    :goto_0
    return-object v3

    .line 113
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 115
    const-string v4, "PKG_NAME"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "pkgName":Ljava/lang/String;
    const-string v4, "FLAG"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 118
    .local v0, "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 120
    .end local v0    # "flag":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, "csr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 133
    :goto_0
    return-object v6

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getSmartContext(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iget-object v3, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mCloneHelper:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 176
    :try_start_0
    const-string v3, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 177
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 178
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mCloneHelper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mCloneHelper:Ljava/lang/Object;

    return-object v3

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleNotifyDbChange()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;

    invoke-direct {v0, p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;-><init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->initWhiteList()V

    .line 60
    new-instance v0, Lcn/nubia/server/notification/NotificationSettingObserver;

    iget-object v1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/nubia/server/notification/NotificationSettingObserver;-><init>(Landroid/os/Handler;)V

    .line 62
    .local v0, "mObserver":Lcn/nubia/server/notification/NotificationSettingObserver;
    iget-object v1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method private initWhiteList()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;

    invoke-direct {v0, p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;-><init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method private isCloneInstance(ILandroid/content/Context;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v3, 0x0

    .line 190
    .local v3, "isCloneInstance":Z
    :try_start_0
    const-string v4, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "isCloneInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 192
    .local v2, "getLabel":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 193
    if-eqz v2, :cond_0

    .line 194
    invoke-direct {p0, p2}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 199
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getLabel":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v3

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isInDoubleInstanceMode()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    iget-boolean v5, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mIsDoubleInstanceModeChecked:Z

    if-nez v5, :cond_0

    .line 160
    :try_start_0
    const-string v5, "com.cmx.cmplus.SmartContainerConfig"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 161
    .local v1, "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "WITH_OUT_ALL"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    .local v2, "withoutMultiProcess":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mIsInDoubleInstanceMode:Z

    .line 163
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mIsDoubleInstanceModeChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :cond_0
    iget-boolean v3, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mIsInDoubleInstanceMode:Z

    :goto_1
    return v3

    .restart local v1    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :cond_1
    move v4, v3

    .line 162
    goto :goto_0

    .line 164
    .end local v1    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public isAllowNotify(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 93
    .local v1, "uid":I
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->isInDoubleInstanceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->isCloneInstance(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, ":nubia_clone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->isAllowNotify(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isAllowNotify(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    iget-object v6, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 72
    .local v3, "value":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 73
    const/4 v2, 0x1

    .line 75
    .local v2, "isThirdPartyApp":Z
    :try_start_0
    iget-object v6, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_1

    move v2, v4

    .line 80
    :goto_0
    if-eqz v2, :cond_2

    const-string v6, "cn.nubia"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    .end local v2    # "isThirdPartyApp":Z
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    .line 87
    .local v1, "isAllow":Z
    :goto_2
    return v1

    .end local v1    # "isAllow":Z
    .restart local v2    # "isThirdPartyApp":Z
    :cond_1
    move v2, v5

    .line 75
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .end local v2    # "isThirdPartyApp":Z
    :cond_3
    move v1, v5

    .line 86
    goto :goto_2
.end method

.method public isAllowNotify(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->isInDoubleInstanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, v0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->isCloneInstance(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, ":nubia_clone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->isAllowNotify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationSettingsEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    iget-object v1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notificationsettings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
