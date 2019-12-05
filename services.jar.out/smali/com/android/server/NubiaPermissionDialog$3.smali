.class Lcom/android/server/NubiaPermissionDialog$3;
.super Landroid/os/Handler;
.source "NubiaPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaPermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaPermissionDialog;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private appSupportsRuntimePermissions()Z
    .locals 7

    .prologue
    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 405
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 407
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2200

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_0
    if-eqz v1, :cond_0

    .line 415
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_1

    const/4 v3, 0x1

    .line 417
    :cond_0
    :goto_1
    return v3

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NubiaPermissionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private filtedHidedPermissionsForCTA([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "requestedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 369
    if-eqz p1, :cond_2

    .line 370
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 372
    .local v3, "permission":Ljava/lang/String;
    sget-object v5, Lcom/android/server/NubiaPermissionDialog;->HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/android/server/NubiaPermissionDialog$3;->isContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 373
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    .line 378
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 472
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 477
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "src"    # [Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "contain":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 384
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    const/4 v1, 0x1

    .line 389
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    return v1

    .line 383
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isRequested(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 394
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 395
    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    const/4 v4, 0x1

    .line 399
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :goto_1
    return v4

    .line 394
    .restart local v3    # "requestedPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isSystemApp()Z
    .locals 7

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 423
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 425
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2200

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 432
    :goto_0
    if-eqz v1, :cond_1

    .line 433
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 436
    :cond_1
    :goto_1
    return v3

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x1

    .line 430
    const-string v4, "NubiaPermissionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 433
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private linkingGreatPermission([Ljava/lang/String;I)V
    .locals 13
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 339
    const/4 v4, 0x1

    .line 340
    .local v4, "isSetIgnored":Z
    const/4 v3, 0x1

    .line 341
    .local v3, "isSetAsked":Z
    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NubiaPermissionDialog$3;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "requestedPermissions":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/NubiaPermissionDialog$3;->filtedHidedPermissionsForCTA([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "filtedPermissionGroup":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v7, v0, v2

    .line 346
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v7, v8}, Lcom/android/server/NubiaPermissionDialog$3;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 347
    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v11}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v6

    .line 350
    .local v6, "opsMode":I
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    and-int/2addr v4, v9

    .line 351
    const/4 v9, 0x4

    if-ne v6, v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    and-int/2addr v3, v9

    .line 345
    .end local v6    # "opsMode":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .restart local v6    # "opsMode":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 351
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 354
    .end local v6    # "opsMode":I
    .end local v7    # "permission":Ljava/lang/String;
    :cond_3
    move-object v0, p1

    array-length v5, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    aget-object v7, v0, v2

    .line 355
    .restart local v7    # "permission":Ljava/lang/String;
    invoke-direct {p0, v7, v8}, Lcom/android/server/NubiaPermissionDialog$3;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 354
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 358
    :cond_4
    if-eqz v4, :cond_5

    .line 359
    invoke-direct {p0, p2, v7}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V

    goto :goto_4

    .line 360
    :cond_5
    if-eqz v3, :cond_6

    .line 361
    invoke-direct {p0, p2, v7}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeAsked(ILjava/lang/String;)V

    goto :goto_4

    .line 363
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeAllowFixed(Ljava/lang/String;)V

    goto :goto_4

    .line 366
    .end local v7    # "permission":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private notifyOperation(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "remember"    # Z

    .prologue
    .line 271
    :try_start_0
    const-string v3, "com.android.server.AppOpsService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 273
    .local v0, "AppOpsService":Ljava/lang/Class;
    const-string v3, "notifyOperation"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 276
    .local v2, "notifyOperation":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mService:Lcom/android/server/AppOpsService;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "AppOpsService":Ljava/lang/Class;
    .end local v2    # "notifyOperation":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setGreatPermissionModeAllowFixed(Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 462
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 463
    const/4 v3, 0x3

    .line 465
    .local v3, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 467
    return-void
.end method

.method private setGreatPermissionModeAsked(ILjava/lang/String;)V
    .locals 6
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 450
    if-ne p1, v4, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 452
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 453
    const/4 v3, 0x3

    .line 455
    .local v3, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 458
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "flagMask":I
    :cond_0
    return-void
.end method

.method private setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V
    .locals 6
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 440
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 442
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 443
    const/4 v3, 0x3

    .line 445
    .local v3, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 448
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "flagMask":I
    :cond_0
    return-void
.end method

.method private setOpMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x43

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x44

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x45

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x46

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method private setSmallPermissionFixed(ILjava/lang/String;)V
    .locals 6
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 481
    if-nez p2, :cond_0

    .line 494
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private tryToLinkingGreatPermission(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionDialog$3;->isSystemApp()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/NubiaPermissionDialog$3;->setOpMode(I)V

    .line 305
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v11}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v12}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionDialog$3;->appSupportsRuntimePermissions()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 307
    sget-object v0, Lcom/android/server/NubiaPermissionDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .line 308
    .local v8, "permissions":[Ljava/lang/String;
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v7, v1, v2

    .line 309
    .local v7, "permission":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 310
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v11}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v12}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 313
    invoke-direct {p0, v8, p1}, Lcom/android/server/NubiaPermissionDialog$3;->linkingGreatPermission([Ljava/lang/String;I)V

    .line 308
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    .end local v7    # "permission":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 318
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "permissions":[Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/NubiaPermissionDialog$3;->setSmallPermissionFixed(ILjava/lang/String;)V

    .line 320
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    const/16 v11, 0x14

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_0

    .line 322
    :cond_5
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCode:I
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    const/16 v11, 0x14

    if-ne v10, v11, :cond_6

    .line 323
    const/16 v6, 0xe

    .line 328
    .local v6, "othercode":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v11}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6, v11, v12}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v9

    .line 329
    .local v9, "tempMode":I
    if-ne v9, p1, :cond_0

    .line 330
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v10

    const/16 v11, 0x10

    iget-object v12, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mUid:I
    invoke-static {v12}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 331
    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    const/16 v10, 0x10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/NubiaPermissionDialog$3;->setSmallPermissionFixed(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v6    # "othercode":I
    .end local v9    # "tempMode":I
    :cond_6
    const/16 v6, 0x14

    .restart local v6    # "othercode":I
    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v9, 0xf

    const/16 v8, 0x8

    .line 228
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mChoice:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$100(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 229
    .local v2, "remember":Z
    const/4 v0, 0x0

    .line 230
    .local v0, "isTimeDown":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 256
    const/4 v1, 0x1

    .line 258
    .local v1, "mode":I
    :goto_0
    if-nez v0, :cond_0

    .line 259
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    invoke-direct {p0, v1, v2}, Lcom/android/server/NubiaPermissionDialog$3;->notifyOperation(IZ)V

    .line 262
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-virtual {v3}, Lcom/android/server/NubiaPermissionDialog;->dismiss()V

    .line 263
    if-eqz v2, :cond_0

    .line 264
    invoke-direct {p0, v1}, Lcom/android/server/NubiaPermissionDialog$3;->tryToLinkingGreatPermission(I)V

    .line 267
    :cond_0
    return-void

    .line 232
    .end local v1    # "mode":I
    :sswitch_0
    const/4 v1, 0x0

    .line 233
    .restart local v1    # "mode":I
    goto :goto_0

    .line 235
    .end local v1    # "mode":I
    :sswitch_1
    const/4 v1, 0x1

    .line 236
    .restart local v1    # "mode":I
    goto :goto_0

    .line 238
    .end local v1    # "mode":I
    :sswitch_2
    const/4 v1, 0x1

    .line 239
    .restart local v1    # "mode":I
    const/4 v0, 0x1

    .line 240
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # operator-- for: Lcom/android/server/NubiaPermissionDialog;->mCountDown:I
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$210(Lcom/android/server/NubiaPermissionDialog;)I

    .line 241
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCountDown:I
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$200(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v3

    if-lez v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    :goto_1
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$400(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x30c005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mCountDown:I
    invoke-static {v7}, Lcom/android/server/NubiaPermissionDialog;->access$200(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    # getter for: Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 253
    .end local v1    # "mode":I
    :sswitch_3
    const/4 v1, 0x1

    .line 254
    .restart local v1    # "mode":I
    goto/16 :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0xf -> :sswitch_2
    .end sparse-switch
.end method
