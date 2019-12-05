.class public Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;
.super Ljava/lang/Object;
.source "TaskBitmapManager.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;
.implements Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;


# static fields
.field private static final PREPARE_GUIDE_STATUS:I = 0x4

.field private static final PREPARE_MULTI_STATUS:I = 0x2

.field private static final PREPARE_SINGLE_STATUS:I = 0x0

.field private static final START_GUIDE_STATUS:I = 0x5

.field private static final START_MULTI_STATUS:I = 0x3

.field private static final START_SINGLE_STATUS:I = 0x1


# instance fields
.field private final WALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mBitmapLoad:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackNum:I

.field private mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

.field private mHander:Landroid/os/Handler;

.field private mHashCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mScreenHight:I

.field private mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

.field private mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

.field private mStartAppPackageName:Ljava/lang/String;

.field private mStatus:I

.field private mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

.field private mhasCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->WALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->setCallback(Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenHight:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    return-void
.end method

.method private getGuidePackageName(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "isUp"    # Z

    .prologue
    .line 393
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 394
    if-eqz p2, :cond_0

    const-string v0, "invalide_up_package"

    .line 403
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 394
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v0, "invalide_down_package"

    goto :goto_0

    .line 401
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private isWallpaper(I)Z
    .locals 1
    .param p1, "hashcode"    # I

    .prologue
    .line 548
    const-string v0, "wallpaper_up"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq p1, v0, :cond_0

    const-string v0, "wallpaper_down"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private judgeCallbackHasMeet()V
    .locals 9

    .prologue
    .line 594
    const/4 v0, 0x1

    .line 595
    .local v0, "flag":Z
    const-string v6, "FitAnim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TaskBitmapManager judgeCallbackHasMeet mHashCode.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCallbackNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBitmapLoad.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mHashCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBitmapLoad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-direct {p0, v6}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->validateListSize(Ljava/util/List;)I

    move-result v5

    .line 598
    .local v5, "valideHashSize":I
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    if-lt v6, v7, :cond_0

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lt v6, v5, :cond_0

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    if-ge v1, v6, :cond_2

    .line 603
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 604
    .local v3, "key":I
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 605
    .local v2, "isFinish":Z
    if-nez v2, :cond_3

    .line 606
    const/4 v0, 0x0

    .line 610
    .end local v2    # "isFinish":Z
    .end local v3    # "key":I
    :cond_2
    if-eqz v0, :cond_0

    .line 611
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    const/4 v7, 0x0

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 613
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    invoke-interface {v6, v4, v7}, Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;->onTextureUploaded(Ljava/util/List;Ljava/lang/String;)V

    .line 614
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 602
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "isFinish":Z
    .restart local v3    # "key":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private judgeCurrentAppIsStartApp(Z)Z
    .locals 9
    .param p1, "isUp"    # Z

    .prologue
    const/16 v6, 0x4e24

    const/16 v5, 0x4e23

    const/4 v7, 0x0

    .line 453
    const/4 v4, 0x0

    .line 454
    .local v4, "upPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 455
    .local v1, "downPackageName":Ljava/lang/String;
    if-eqz p1, :cond_4

    move v3, v5

    .line 456
    .local v3, "upOrDown":I
    :goto_0
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v8}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "currentAppName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 458
    .local v2, "nextAppName":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v8, v7, v5}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 459
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v8, v7, v5}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 461
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v5, v7, v6}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 462
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v5, v7, v6}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 464
    :cond_1
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v5, v7, v3}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 465
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v5, v7, v3}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 467
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    return v5

    .end local v0    # "currentAppName":Ljava/lang/String;
    .end local v2    # "nextAppName":Ljava/lang/String;
    .end local v3    # "upOrDown":I
    :cond_4
    move v3, v6

    .line 455
    goto :goto_0

    .restart local v0    # "currentAppName":Ljava/lang/String;
    .restart local v2    # "nextAppName":Ljava/lang/String;
    .restart local v3    # "upOrDown":I
    :cond_5
    move v5, v7

    .line 467
    goto :goto_1
.end method

.method private loadBlurWallpaper(ZZI)V
    .locals 6
    .param p1, "hasTip"    # Z
    .param p2, "isUp"    # Z
    .param p3, "funcs"    # I

    .prologue
    .line 494
    if-eqz p2, :cond_2

    const-string v1, "wallpaper_up"

    .line 495
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2711

    if-ne p3, v2, :cond_0

    if-eqz p1, :cond_0

    .line 496
    const-string v1, "wallpaperstart"

    .line 498
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v0

    .line 499
    .local v0, "hasBitmap":Z
    const-string v2, "FitAnim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBlurWallpaper hasBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v2, "Timer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBlurWallpaper start hasBitmap-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hashcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-nez v0, :cond_3

    .line 502
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->isWallpaperLoaderRun()Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadBlurWallpaperInBackgroud(Ljava/lang/String;ZZI)V

    .line 505
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    return-void

    .line 494
    .end local v0    # "hasBitmap":Z
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v1, "wallpaper_down"

    goto/16 :goto_0

    .line 507
    .restart local v0    # "hasBitmap":Z
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private loadClearScreen(Z)V
    .locals 9
    .param p1, "isUp"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 409
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v4}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getRecentTaskList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    .line 410
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v4, p1}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextAppIndex(Z)I

    move-result v4

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    .line 411
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v4, v7}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getSingleSlideFuns(I)I

    move-result v1

    .line 413
    .local v1, "funs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, "tempAppSwitchList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v4, p1}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextAppIndex(Z)I

    move-result v4

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    .line 415
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v4}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getCurrentAppIndex()I

    move-result v0

    .line 416
    .local v0, "currentIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 417
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    if-nez p1, :cond_0

    .line 419
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 434
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 436
    invoke-interface {v3, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 440
    :goto_1
    const-string v4, "FitAnim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadClearScreen subList size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCurrentAppIsStartApp(Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v4, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadThumbnailsInBackgroud(Ljava/util/List;)V

    .line 442
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->updateHashCodeList(Ljava/util/List;)V

    .line 443
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2712

    if-eq v1, v4, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x2711

    if-ne v1, v4, :cond_7

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCurrentAppIsStartApp(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 445
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadBlurWallpaper(ZZI)V

    .line 450
    :goto_2
    return-void

    .line 422
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 423
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    :cond_4
    if-lez v0, :cond_5

    .line 426
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 429
    :cond_5
    if-eqz p1, :cond_0

    .line 430
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto/16 :goto_0

    .line 438
    .restart local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 447
    :cond_7
    invoke-direct {p0, v7, p1, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadBlurWallpaper(ZZI)V

    goto :goto_2
.end method

.method private loadCurrentScreen()V
    .locals 6

    .prologue
    .line 208
    const-string v0, "currentscreen"

    .line 209
    .local v0, "currentAppName":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v1

    .line 211
    .local v1, "hasBitmap":Z
    const-string v2, "Timer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCurrentScreen start hasBitmap-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hashcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-nez v1, :cond_0

    .line 213
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v2, p0}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getCurrentScreenBitmap(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V

    .line 214
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadGuideStartIcon(IF)V
    .locals 12
    .param p1, "leftOrRight"    # I
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 306
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v7}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->isSingleGestureOpen()Z

    move-result v3

    .line 307
    .local v3, "isSingleSlideOpen":Z
    if-nez v3, :cond_0

    .line 308
    const-string v6, "invalide_up_package"

    .line 309
    .local v6, "upPackageName":Ljava/lang/String;
    const-string v0, "invalide_down_package"

    .line 310
    .local v0, "downPackageName":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :goto_0
    return-void

    .line 316
    .end local v0    # "downPackageName":Ljava/lang/String;
    .end local v6    # "upPackageName":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    const/16 v8, 0x4e23

    invoke-interface {v7, p1, v8}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 317
    .restart local v6    # "upPackageName":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    const/16 v8, 0x4e24

    invoke-interface {v7, p1, v8}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 318
    .restart local v0    # "downPackageName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v1, "hashList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenHight:I

    div-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_2

    .line 321
    const-string v6, "invalide_up_package"

    .line 325
    :cond_1
    :goto_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v7, "invalide_up_package"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "GuideIcon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "up"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "swichPackageName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v5    # "swichPackageName":Ljava/lang/String;
    :goto_2
    const-string v7, "invalide_down_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "GuideIcon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "down"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .restart local v5    # "swichPackageName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v5    # "swichPackageName":Ljava/lang/String;
    :goto_3
    const-string v7, "Timer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadGuideIcon start hashcode list="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    const/16 v7, 0x4e22

    if-ne p1, v7, :cond_5

    .line 342
    .local v2, "isRight":Z
    :goto_4
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v7, v4, v1, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadGuideIcon(Ljava/util/List;Ljava/util/List;Z)V

    .line 343
    const-string v7, "FitAnim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " TaskBitmapManager loadGuideStartIcon packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hashcode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    .end local v2    # "isRight":Z
    :cond_2
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenHight:I

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 323
    const-string v0, "invalide_down_package"

    goto/16 :goto_1

    .line 331
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 337
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 341
    :cond_5
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private loadGuideSwitchIcon(IF)V
    .locals 14
    .param p1, "leftOrRight"    # I
    .param p2, "y"    # F

    .prologue
    .line 348
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v9}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->isSingleGestureOpen()Z

    move-result v4

    .line 349
    .local v4, "isSingleSlideOpen":Z
    if-nez v4, :cond_0

    .line 350
    const-string v8, "invalide_up_package"

    .line 351
    .local v8, "upPackageName":Ljava/lang/String;
    const-string v1, "invalide_down_package"

    .line 352
    .local v1, "downPackageName":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :goto_0
    return-void

    .line 358
    .end local v1    # "downPackageName":Ljava/lang/String;
    .end local v8    # "upPackageName":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v2, "hashList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v9}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getRecentTaskList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    .line 361
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextAppIndex(Z)I

    move-result v7

    .line 362
    .local v7, "upIndex":I
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextAppIndex(Z)I

    move-result v0

    .line 363
    .local v0, "downIndex":I
    const/4 v9, 0x1

    invoke-direct {p0, v7, v9}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->getGuidePackageName(IZ)Ljava/lang/String;

    move-result-object v8

    .line 364
    .restart local v8    # "upPackageName":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v0, v9}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->getGuidePackageName(IZ)Ljava/lang/String;

    move-result-object v1

    .line 365
    .restart local v1    # "downPackageName":Ljava/lang/String;
    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenHight:I

    div-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    cmpg-float v9, p2, v9

    if-gez v9, :cond_2

    .line 366
    const-string v8, "invalide_up_package"

    .line 370
    :cond_1
    :goto_1
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v9, "invalide_up_package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "GuideIcon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "up"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "swichPackageName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v6    # "swichPackageName":Ljava/lang/String;
    :goto_2
    const-string v9, "invalide_down_package"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "GuideIcon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "down"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    .restart local v6    # "swichPackageName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v6    # "swichPackageName":Ljava/lang/String;
    :goto_3
    const-string v9, "Timer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadGuideIcon start hashcode list="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    const/16 v9, 0x4e22

    if-ne p1, v9, :cond_5

    const/4 v3, 0x1

    .line 387
    .local v3, "isRight":Z
    :goto_4
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v9, v5, v2, v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadGuideIcon(Ljava/util/List;Ljava/util/List;Z)V

    .line 388
    const-string v9, "FitAnim"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " TaskBitmapManager loadGuideStartIcon packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hashcode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 367
    .end local v3    # "isRight":Z
    :cond_2
    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenHight:I

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    cmpl-float v9, p2, v9

    if-lez v9, :cond_1

    .line 368
    const-string v1, "invalide_down_package"

    goto/16 :goto_1

    .line 376
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 382
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 386
    :cond_5
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private loadInnerSplitWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 473
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v3}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->isInnerGestureOpen()Z

    move-result v1

    .line 474
    .local v1, "isInnerOpen":Z
    if-nez v1, :cond_0

    .line 475
    const-string v2, "invalide_split_package"

    .line 476
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :goto_0
    return-void

    .line 480
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v2, "valide_split_package"

    .line 481
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v0

    .line 482
    .local v0, "hasBitmap":Z
    if-nez v0, :cond_2

    .line 483
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->isSplitWallpaperLoaderRun()Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v3, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadSplitWallpaperInBackgroud(Ljava/lang/String;)V

    .line 486
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private loadNextStartScreen(II)V
    .locals 11
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 223
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v9, p1, p2}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "currentAppName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 226
    .local v1, "flag":Z
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v9}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->isSingleGestureOpen()Z

    move-result v4

    .line 228
    .local v4, "isSingleSlideOpen":Z
    if-nez v1, :cond_0

    if-nez v4, :cond_2

    .line 229
    :cond_0
    const-string v9, "wallpaperstart"

    iput-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    .line 230
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    .line 236
    .local v7, "switchName":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v2

    .line 238
    .local v2, "hasBitmap":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadNextStartScreen mStartAppPackageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hasBitmap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;)I

    .line 239
    if-nez v2, :cond_6

    .line 240
    if-nez v1, :cond_1

    if-nez v4, :cond_5

    .line 241
    :cond_1
    const/16 v9, 0x4e23

    if-ne p2, v9, :cond_3

    move v5, v3

    .line 242
    .local v5, "isUP":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 243
    .local v3, "hasTip":Z
    :goto_2
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    const/16 v10, 0x2711

    invoke-virtual {v9, v7, v3, v5, v10}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadBlurWallpaperInBackgroud(Ljava/lang/String;ZZI)V

    .line 247
    .end local v3    # "hasTip":Z
    .end local v5    # "isUP":Z
    :goto_3
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_4
    return-void

    .line 232
    .end local v2    # "hasBitmap":Z
    .end local v7    # "switchName":Ljava/lang/String;
    :cond_2
    iput-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "StartApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "switchName":Ljava/lang/String;
    goto :goto_0

    .restart local v2    # "hasBitmap":Z
    :cond_3
    move v5, v8

    .line 241
    goto :goto_1

    .restart local v5    # "isUP":Z
    :cond_4
    move v3, v8

    .line 242
    goto :goto_2

    .line 245
    .end local v5    # "isUP":Z
    :cond_5
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v9, v6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadStartAppScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 249
    :cond_6
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private loadNextSwitchScreen(I)V
    .locals 13
    .param p1, "upOrDown"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 254
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v6}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getRecentTaskList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    .line 255
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v6}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->isSingleGestureOpen()Z

    move-result v2

    .line 256
    .local v2, "isSingleSlideOpen":Z
    const/16 v6, 0x4e23

    if-ne p1, v6, :cond_1

    move v3, v7

    .line 257
    .local v3, "isUp":Z
    :goto_0
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v6, v3}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getNextAppIndex(Z)I

    move-result v6

    iput v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    .line 258
    const/4 v4, 0x0

    .line 259
    .local v4, "packageName":Ljava/lang/String;
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    if-eq v6, v12, :cond_0

    if-nez v2, :cond_3

    .line 260
    :cond_0
    if-eqz v3, :cond_2

    const-string v4, "wallpaper_up"

    .line 270
    :goto_1
    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    .line 271
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v6, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v0

    .line 273
    .local v0, "hasBitmap":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadNextSwitchScreen mStartAppPackageName="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " hasBitmap="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;)I

    .line 274
    const-string v6, "Timer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadNextSwitchScreen start hasBitmap= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hashcode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-nez v0, :cond_7

    .line 276
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    if-eq v6, v12, :cond_5

    if-eqz v2, :cond_5

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v5, "tempAppSwitchList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v6, v5}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadThumbnailsInBackgroud(Ljava/util/List;)V

    .line 284
    .end local v5    # "tempAppSwitchList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_2
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :goto_3
    return-void

    .end local v0    # "hasBitmap":Z
    .end local v3    # "isUp":Z
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    move v3, v8

    .line 256
    goto/16 :goto_0

    .line 260
    .restart local v3    # "isUp":Z
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "wallpaper_down"

    goto/16 :goto_1

    .line 262
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadNextSwitchScreen mRecentAppSwitchList.get(mNextIndex)="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " topActivity="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;)I

    .line 264
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    .line 265
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 267
    :cond_4
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mRecentAppSwitchList:Ljava/util/List;

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mNextIndex:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 281
    .restart local v0    # "hasBitmap":Z
    :cond_5
    if-eqz v2, :cond_6

    move v1, v7

    .line 282
    .local v1, "hasTip":Z
    :goto_4
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    const/16 v7, 0x2712

    invoke-virtual {v6, v4, v1, v3, v7}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadBlurWallpaperInBackgroud(Ljava/lang/String;ZZI)V

    goto/16 :goto_2

    .end local v1    # "hasTip":Z
    :cond_6
    move v1, v8

    .line 281
    goto :goto_4

    .line 286
    :cond_7
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method private prepareSingleSlideStartTexture(IILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 2
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    .line 112
    const-string v0, "FitAnim"

    const-string v1, "prepareSingleSlideStartTexture()"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 114
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadCurrentScreen()V

    .line 119
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadNextStartScreen(II)V

    .line 120
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->removeDuplicate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    .line 121
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    .line 123
    return-void
.end method

.method private prepareSingleSlideSwitchTexture(ILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 3
    .param p1, "upOrDown"    # I
    .param p2, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    const/4 v2, 0x2

    .line 95
    const-string v0, "FitAnim"

    const-string v1, "prepareSingleSlideSwitchTexture()"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 97
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 98
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStartAppPackageName:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadCurrentScreen()V

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadNextSwitchScreen(I)V

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->removeDuplicate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TaskBitmapManager prepareSingleSlideSwitchTexture mhashcode error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    .line 109
    return-void
.end method

.method private removeDuplicate(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .param p2, "isGuide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 528
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "wallpaper"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 530
    .local v4, "wallpaperHashCode":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 532
    .local v0, "element":I
    if-eqz p2, :cond_2

    .line 533
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->isWallpaper(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->isWallpaper(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 538
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v0    # "element":I
    :cond_4
    const-string v5, "FitAnim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeDuplicate newList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v2
.end method

.method private updateHashCodeList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 517
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 521
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 524
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private validateListSize(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 555
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 558
    .local v0, "element":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    .end local v0    # "element":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 620
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 621
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 622
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->clearAsyncTask()V

    .line 623
    return-void
.end method

.method public insertTaskBitmap(ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "hashCode"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 586
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTaskBitmap hashcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->addItem(ILandroid/graphics/Bitmap;)V

    .line 588
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v0, "FitAnim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTaskBitmap hashCode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    .line 591
    return-void
.end method

.method public judgeUpOrDown(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 295
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenHight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 296
    const/16 v0, 0x4e23

    .line 300
    .local v0, "upOrDown":I
    :goto_0
    return v0

    .line 298
    .end local v0    # "upOrDown":I
    :cond_0
    const/16 v0, 0x4e24

    .restart local v0    # "upOrDown":I
    goto :goto_0
.end method

.method public onScreenUploaded(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 568
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method

.method public prepareGuideSlideStartTexture(IFLcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 5
    .param p1, "leftOrRight"    # I
    .param p2, "y"    # F
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    const/4 v2, 0x1

    .line 175
    const-string v3, "FitAnim"

    const-string v4, "prepareGuideSlideStartTexture"

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 177
    const/4 v3, 0x5

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 178
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 179
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 180
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadCurrentScreen()V

    .line 181
    invoke-virtual {p0, p2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeUpOrDown(F)I

    move-result v1

    .line 182
    .local v1, "upOrDown":I
    invoke-direct {p0, p1, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadNextStartScreen(II)V

    .line 183
    const/16 v3, 0x4e23

    if-ne v1, v3, :cond_0

    move v0, v2

    .line 184
    .local v0, "isUp":Z
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadInnerSplitWallpaper()V

    .line 185
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadGuideStartIcon(IF)V

    .line 186
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->removeDuplicate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    .line 188
    return-void

    .line 183
    .end local v0    # "isUp":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareGuideSlideSwitchTexture(IFLcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 5
    .param p1, "leftOrRight"    # I
    .param p2, "y"    # F
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    const/4 v2, 0x1

    .line 191
    const-string v3, "FitAnim"

    const-string v4, "prepareGuideSlideSwitchTexture"

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 193
    const/4 v3, 0x5

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 194
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 195
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 196
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadCurrentScreen()V

    .line 197
    invoke-virtual {p0, p2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeUpOrDown(F)I

    move-result v1

    .line 198
    .local v1, "upOrDown":I
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadNextSwitchScreen(I)V

    .line 199
    const/16 v3, 0x4e23

    if-ne v1, v3, :cond_0

    move v0, v2

    .line 200
    .local v0, "isUp":Z
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadInnerSplitWallpaper()V

    .line 201
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadGuideSwitchIcon(IF)V

    .line 202
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->removeDuplicate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    .line 204
    return-void

    .line 199
    .end local v0    # "isUp":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareGuideStartTexture(IFLcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 4
    .param p1, "leftOrRight"    # I
    .param p2, "y"    # F
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    .line 159
    const/4 v1, 0x4

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 160
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getSingleSlideFuns(I)I

    move-result v0

    .line 162
    .local v0, "fuctions":I
    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareGuideSlideStartTexture(IFLcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareGuideSlideSwitchTexture(IFLcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    goto :goto_0
.end method

.method public prepareSingleMultiSlideTexture(ILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 6
    .param p1, "upOrDown"    # I
    .param p2, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 137
    const-string v2, "FitAnim"

    const-string v3, "prepareSingleMultiSlideTexture"

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 139
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iput v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 141
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 142
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    .line 143
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadCurrentScreen()V

    .line 144
    const/16 v2, 0x4e23

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 145
    .local v0, "isUp":Z
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->loadClearScreen(Z)V

    .line 146
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->removeDuplicate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    .line 148
    return-void

    .end local v0    # "isUp":Z
    :cond_0
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public prepareSingleSlideTexture(IILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 4
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getSingleSlideFuns(I)I

    move-result v0

    .line 83
    .local v0, "fuctions":I
    iput v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 84
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->canclePreGuideLoaderRun()V

    .line 86
    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareSingleSlideStartTexture(IILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareSingleSlideSwitchTexture(ILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    goto :goto_0
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->setmSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHander:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->setHandler(Landroid/os/Handler;)V

    .line 78
    return-void
.end method

.method public setSystemGestureService(Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V
    .locals 0
    .param p1, "service"    # Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .line 70
    return-void
.end method

.method public setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 0
    .param p1, "tm"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 66
    return-void
.end method

.method public startGuideSlideTexture(Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    .line 170
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 171
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public startSingleMultiSlide(Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 152
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mHashCode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 155
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    .line 156
    return-void
.end method

.method public startSingleSlide(Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .prologue
    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mhasCallback:Ljava/util/HashMap;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mGestureCallback:Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mCallbackNum:I

    .line 130
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V

    .line 131
    return-void
.end method
