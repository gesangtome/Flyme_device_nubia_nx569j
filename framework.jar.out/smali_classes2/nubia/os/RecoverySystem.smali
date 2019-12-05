.class public Lnubia/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static final PERSISTENT_PROPERTY_DIR:Ljava/lang/String; = "/persist/property"

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "NubiaRecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnubia/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    sget-object v1, Lnubia/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lnubia/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 52
    new-instance v0, Ljava/io/File;

    sget-object v1, Lnubia/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lnubia/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v6, Lnubia/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 131
    sget-object v6, Lnubia/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 132
    sget-object v6, Lnubia/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 134
    new-instance v2, Ljava/io/FileWriter;

    sget-object v6, Lnubia/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 136
    .local v2, "command":Ljava/io/FileWriter;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 137
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 139
    const-string v6, "NubiaRecoverySystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "commandArgInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 142
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 150
    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 151
    .local v5, "pm":Landroid/os/PowerManager;
    const-string v6, "recovery"

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 153
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Reboot failed (no permissions?)"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v6
.end method

.method public static checkCacheFreeSpace()V
    .locals 4

    .prologue
    .line 201
    const-string v0, "/cache"

    const-wide/16 v2, 0x2800

    const-string v1, "/cache/backup/1/_full"

    invoke-static {v0, v2, v3, v1}, Lnubia/os/RecoverySystem;->checkFreeSpace(Ljava/lang/String;JLjava/lang/String;)V

    .line 202
    return-void
.end method

.method private static checkFreeSpace(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minValue"    # J
    .param p3, "deletePath"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0, p1, p2}, Lnubia/os/RecoverySystem;->isFreeSpaceEnough(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lnubia/os/RecoverySystem;->deleteFile(Ljava/io/File;)V

    .line 193
    :cond_0
    invoke-static {p0, p1, p2}, Lnubia/os/RecoverySystem;->isFreeSpaceEnough(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "stat":Landroid/os/StatFs;
    const-string v2, "NubiaRecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path available bytes is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stat":Landroid/os/StatFs;
    :cond_1
    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 167
    if-nez p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_4

    .line 175
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 178
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 179
    aget-object v2, v0, v1

    invoke-static {v2}, Lnubia/os/RecoverySystem;->deleteFile(Ljava/io/File;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isFreeSpaceEnough(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minValue"    # J

    .prologue
    .line 185
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNubiaReleaseVersion()Z
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "isrelease":Z
    const-string v1, "release"

    const-string v2, "ro.nubia.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_0
    return v0
.end method

.method public static rebootDeleteUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "deleteArgs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v1, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 58
    .local v16, "um":Landroid/os/UserManager;
    const-string v1, "no_factory_reset"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Deleting data is not allowed for this user."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    new-instance v10, Landroid/os/ConditionVariable;

    invoke-direct {v10}, Landroid/os/ConditionVariable;-><init>()V

    .line 63
    .local v10, "condition":Landroid/os/ConditionVariable;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "android.permission.MASTER_CLEAR"

    new-instance v5, Lnubia/os/RecoverySystem$1;

    invoke-direct {v5, v10}, Lnubia/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    .line 77
    const/4 v15, 0x0

    .line 78
    .local v15, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 79
    const-string v15, "--shutdown_after"

    .line 82
    :cond_1
    const/4 v14, 0x0

    .line 83
    .local v14, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-static/range {p2 .. p2}, Lnubia/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 86
    :cond_2
    const/4 v11, 0x0

    .line 87
    .local v11, "deleteArg":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    invoke-static/range {p3 .. p3}, Lnubia/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 90
    :cond_3
    const-string v1, "NubiaRecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebootDeleteUserData for reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";deleteArg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, "localeArg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lnubia/os/RecoverySystem;->isNubiaReleaseVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    const-string v1, "persist.sys.usb.factory"

    const-string v3, "0"

    invoke-static {v1, v3}, Lnubia/os/RecoverySystem;->setPersistProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v15, v1, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--delete_data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v14, v1, v3

    const/4 v3, 0x3

    aput-object v13, v1, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lnubia/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 105
    return-void

    .line 98
    :cond_4
    :try_start_1
    const-string v1, "persist.sys.usb.factory"

    const-string v3, "1"

    invoke-static {v1, v3}, Lnubia/os/RecoverySystem;->setPersistProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v12

    .line 101
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "NubiaRecoverySystem"

    const-string v3, "setPersistProperty fail"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 162
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 163
    return-object p0
.end method

.method private static setPersistProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    const-string v3, "/persist/property"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 113
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/persist/property"

    invoke-direct {v1, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 118
    :cond_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 119
    .local v2, "output":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 121
    return-void
.end method
