.class public final Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private final mInstaller:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    .line 39
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string p0, "!"

    .line 60
    :cond_0
    return-object p0

    .line 57
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isValidInstructionSet(Ljava/lang/String;)Z
    .locals 6
    .param p0, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 484
    if-nez p0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v4

    .line 488
    :cond_1
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 489
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 490
    const/4 v4, 0x1

    goto :goto_0

    .line 488
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearUserData(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public clearUserData(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "dataAppName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cpcompleteapp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {p2}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createoatdir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserConfig(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkuserconfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserData(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    if-eqz p5, :cond_0

    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 261
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p5, "!"

    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcodecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    .locals 7
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I

    .prologue
    .line 86
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I
    .locals 7
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "bootComplete"    # Z

    .prologue
    .line 91
    invoke-static {p4}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "Installer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, -0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I

    move-result v0

    goto :goto_0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I
    .locals 12
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z

    .prologue
    .line 110
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, -0x1

    .line 114
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I

    move-result v1

    goto :goto_0
.end method

.method public fixUid(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->fixUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public fixUid(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .prologue
    const/16 v2, 0x20

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixuid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public freeCache(J)I
    .locals 1
    .param p1, "freeStorageSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public freeCache(Ljava/lang/String;J)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J

    .prologue
    const/16 v2, 0x20

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getInstallerConnection()Lcom/android/internal/os/InstallerConnection;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    return-object v0
.end method

.method public getSizeInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persona"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "libDirPath"    # Ljava/lang/String;
    .param p5, "fwdLockApkPath"    # Ljava/lang/String;
    .param p6, "asecPath"    # Ljava/lang/String;
    .param p7, "instructionSets"    # [Ljava/lang/String;
    .param p8, "pStats"    # Landroid/content/pm/PackageStats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    move-result v0

    return v0
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 13
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "persona"    # I
    .param p4, "apkPath"    # Ljava/lang/String;
    .param p5, "libDirPath"    # Ljava/lang/String;
    .param p6, "fwdLockApkPath"    # Ljava/lang/String;
    .param p7, "asecPath"    # Ljava/lang/String;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 356
    move-object/from16 v2, p8

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v6, v2, v5

    .line 357
    .local v6, "instructionSet":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 358
    const-string v10, "Installer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid instruction set: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v10, -0x1

    .line 398
    .end local v6    # "instructionSet":Ljava/lang/String;
    .end local p5    # "libDirPath":Ljava/lang/String;
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    .end local p7    # "asecPath":Ljava/lang/String;
    :goto_1
    return v10

    .line 356
    .restart local v6    # "instructionSet":Ljava/lang/String;
    .restart local p5    # "libDirPath":Ljava/lang/String;
    .restart local p6    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p7    # "asecPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    .end local v6    # "instructionSet":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "getsize"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    if-eqz p5, :cond_3

    .end local p5    # "libDirPath":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    if-eqz p6, :cond_4

    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    if-eqz p7, :cond_5

    .end local p7    # "asecPath":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    const/4 v10, 0x0

    aget-object v10, p8, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v10, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, "s":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, "res":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v10, v8

    const/4 v11, 0x5

    if-eq v10, v11, :cond_6

    .line 389
    :cond_2
    const/4 v10, -0x1

    goto :goto_1

    .line 375
    .end local v8    # "res":[Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .restart local p5    # "libDirPath":Ljava/lang/String;
    .restart local p6    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p7    # "asecPath":Ljava/lang/String;
    :cond_3
    const-string p5, "!"

    goto :goto_2

    .line 377
    .end local p5    # "libDirPath":Ljava/lang/String;
    :cond_4
    const-string p6, "!"

    goto :goto_3

    .line 379
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :cond_5
    const-string p7, "!"

    goto :goto_4

    .line 392
    .end local p7    # "asecPath":Ljava/lang/String;
    .restart local v8    # "res":[Ljava/lang/String;
    .restart local v9    # "s":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x1

    :try_start_0
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 393
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 394
    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 395
    const/4 v10, 0x4

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 396
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto/16 :goto_1

    .line 397
    :catch_0
    move-exception v4

    .line 398
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    goto/16 :goto_1
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/16 v2, 0x20

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idmap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public install(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    if-eqz p5, :cond_0

    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 80
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p5, "!"

    goto :goto_0
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linkfile"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "nativeLibPath32"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v1, -0x1

    const/16 v2, 0x20

    .line 420
    if-nez p2, :cond_0

    .line 421
    const-string v2, "Installer"

    const-string v3, "linkNativeLibraryDirectory dataPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    return v1

    .line 423
    :cond_0
    if-nez p3, :cond_1

    .line 424
    const-string v2, "Installer"

    const-string v3, "linkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public markBootComplete(Ljava/lang/String;)I
    .locals 4
    .param p1, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p1}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, -0x1

    .line 329
    :goto_0
    return v1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markbootcomplete"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string v1, "movefiles"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 131
    invoke-static {p3}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, -0x1

    .line 143
    :goto_0
    return v1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "Installer"

    const-string v1, "Waiting for installd to be ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 51
    return-void
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Installer;->removeUserDataDirs(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeUserDataDirs(Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/16 v2, 0x20

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restorecondata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    if-eqz p3, :cond_0

    .end local p3    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 453
    .restart local p3    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p3, "!"

    goto :goto_0

    .line 456
    .end local p3    # "seinfo":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public rmPackageDir(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageDir"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmpackagedir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 147
    invoke-static {p2}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, -0x1

    .line 157
    :goto_0
    return v1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public copyDataFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copyfiles"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
