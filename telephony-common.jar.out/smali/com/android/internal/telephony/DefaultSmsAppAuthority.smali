.class public Lcom/android/internal/telephony/DefaultSmsAppAuthority;
.super Ljava/lang/Object;
.source "DefaultSmsAppAuthority.java"


# static fields
.field private static final CONTACTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final READ_SMS_APPLICATION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cn.nubia.zbiglauncher.preset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DefaultSmsAppAuthority;->READ_SMS_APPLICATION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x104002d

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "defaultPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    .local v1, "r":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/telephony/DefaultSmsAppAuthority;->isUI28()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isReadOnlyApplication(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v1, Lcom/android/internal/telephony/DefaultSmsAppAuthority;->READ_SMS_APPLICATION:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 46
    .local v0, "application":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    const/4 v4, 0x1

    .line 50
    .end local v0    # "application":Ljava/lang/String;
    :goto_1
    return v4

    .line 45
    .restart local v0    # "application":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "application":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isUI28()Z
    .locals 3

    .prologue
    .line 54
    const-string v1, "ro.build.nubia.rom.code"

    const-string v2, "V3.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "romCode":Ljava/lang/String;
    const-string v1, "V2.8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static putNativeMmsAppFirst(Landroid/content/Context;Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "receivers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 78
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 79
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 80
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 83
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 84
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/DefaultSmsAppAuthority;->getDefaultPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "applicationName":Ljava/lang/String;
    new-instance v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v1, v4, v7}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    .local v6, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 91
    invoke-virtual {p2, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    return-void
.end method

.method public static setDefaultSmsAppForContacts(Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appOps"    # Landroid/app/AppOpsManager;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 31
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.android.contacts"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 33
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/16 v3, 0xf

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v5, "com.android.contacts"

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SmsApplication"

    const-string v4, "Contacts package not found: com.android.contacts"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
