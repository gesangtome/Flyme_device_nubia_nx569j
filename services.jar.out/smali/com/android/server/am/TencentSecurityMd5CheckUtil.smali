.class public Lcom/android/server/am/TencentSecurityMd5CheckUtil;
.super Ljava/lang/Object;
.source "TencentSecurityMd5CheckUtil.java"


# static fields
.field public static final TMSPKN:Ljava/lang/String; = "com.tencent.qqpimsecure"

.field private static TMSUid:I

.field private static isTMSExist:I

.field private static isTMSMd5Same:I

.field private static volatile mInstance:Lcom/android/server/am/TencentSecurityMd5CheckUtil;


# instance fields
.field private final TMSMD5:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPkgReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I

    .line 48
    sput v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I

    .line 49
    sput v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSUid:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "00b1208638de0fcd3e920886d658daf6"

    iput-object v0, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSMD5:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->regTMSInstallReceiver()V

    .line 27
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 20
    sput p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I

    return p0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 20
    sput p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 20
    sput p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSUid:I

    return p0
.end method

.method public static getInstace(Landroid/content/Context;)Lcom/android/server/am/TencentSecurityMd5CheckUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mInstance:Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mInstance:Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-class v1, Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mInstance:Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    invoke-direct {v0, p0}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mInstance:Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    .line 39
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mInstance:Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMessageDigest([B)Ljava/lang/String;
    .locals 10
    .param p1, "paramArrayOfByte"    # [B

    .prologue
    .line 133
    const/16 v9, 0x10

    new-array v1, v9, [C

    fill-array-data v1, :array_0

    .line 136
    .local v1, "arrayOfChar1":[C
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 137
    .local v6, "localMessageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v6, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 139
    .local v0, "arrayOfByte":[B
    array-length v3, v0

    .line 140
    .local v3, "i":I
    mul-int/lit8 v9, v3, 0x2

    new-array v2, v9, [C

    .line 141
    .local v2, "arrayOfChar2":[C
    const/4 v4, 0x0

    .line 142
    .local v4, "j":I
    const/4 v5, 0x0

    .line 144
    .local v5, "k":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 145
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    .line 155
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "arrayOfChar2":[C
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "localMessageDigest":Ljava/security/MessageDigest;
    :goto_1
    return-object v9

    .line 146
    .restart local v0    # "arrayOfByte":[B
    .restart local v2    # "arrayOfChar2":[C
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "localMessageDigest":Ljava/security/MessageDigest;
    :cond_0
    aget-byte v7, v0, v4

    .line 147
    .local v7, "m":I
    add-int/lit8 v8, v5, 0x1

    .line 148
    .local v8, "n":I
    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v1, v9

    aput-char v9, v2, v5

    .line 149
    add-int/lit8 v5, v8, 0x1

    .line 150
    and-int/lit8 v9, v7, 0xf

    aget-char v9, v1, v9

    aput-char v9, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    goto :goto_0

    .line 153
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "arrayOfChar2":[C
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "localMessageDigest":Ljava/security/MessageDigest;
    .end local v7    # "m":I
    .end local v8    # "n":I
    :catch_0
    move-exception v9

    .line 155
    const/4 v9, 0x0

    goto :goto_1

    .line 133
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private getRawSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v3

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    .local v1, "localPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 181
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0

    .line 178
    .end local v1    # "localPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getSign()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mContext:Landroid/content/Context;

    const-string v2, "com.tencent.qqpimsecure"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->getRawSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 160
    .local v0, "arrayOfSignature":[Landroid/content/pm/Signature;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 161
    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->getMessageDigest([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private regTMSInstallReceiver()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/android/server/am/TencentSecurityMd5CheckUtil$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/TencentSecurityMd5CheckUtil$1;-><init>(Lcom/android/server/am/TencentSecurityMd5CheckUtil;)V

    iput-object v1, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iget-object v1, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method


# virtual methods
.method public checkIsTmsSetMode(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "com.tencent.qqpimsecure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->checkTMSPackageName(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->checkTMSMd5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkTMSMd5()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "ret":Z
    sget v2, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I

    if-nez v2, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->getSign()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "md5":Ljava/lang/String;
    const-string v2, "00b1208638de0fcd3e920886d658daf6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const/4 v1, 0x1

    .line 122
    sput v3, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I

    .line 129
    .end local v0    # "md5":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 124
    .restart local v0    # "md5":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    sput v2, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I

    goto :goto_0

    .line 126
    .end local v0    # "md5":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I

    if-ne v3, v2, :cond_0

    .line 127
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkTMSPackageName(I)Z
    .locals 8
    .param p1, "callingUid"    # I

    .prologue
    const/4 v7, -0x1

    .line 77
    const/4 v3, 0x0

    .line 79
    .local v3, "ret":Z
    sget v5, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I

    if-ne v7, v5, :cond_0

    move v4, v3

    .line 99
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 83
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    sget v5, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSUid:I

    if-nez v5, :cond_1

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.tencent.qqpimsecure"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 88
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v5, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSUid:I

    .line 89
    const/4 v5, 0x1

    sput v5, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    sget v5, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSUid:I

    if-ne v5, p1, :cond_2

    .line 96
    const/4 v3, 0x1

    .line 98
    :cond_2
    const-string v5, "mayitx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTMSPackageName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 99
    .restart local v4    # "ret":I
    goto :goto_0

    .line 90
    .end local v4    # "ret":I
    :catch_0
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/lang/Exception;
    sput v7, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I

    goto :goto_1
.end method
