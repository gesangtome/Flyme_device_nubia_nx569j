.class public final Lcom/android/server/policy/NubiaPhoneWindowManager;
.super Ljava/lang/Object;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaPhoneWindowManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mSmartFaceCtrl:Lcn/nubia/server/policy/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 51
    new-instance v0, Lcom/android/server/policy/FeatureFunctionManager;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/policy/FeatureFunctionManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/NubiaPhoneWindowManager;->initCtrls()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/NubiaPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaPhoneWindowManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCtrls()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.nubia.smartface.feature"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, "smartFaceEnable":Z
    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Lcn/nubia/server/policy/SmartFaceManager;

    iget-object v2, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/policy/SmartFaceManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/server/policy/SmartFaceManager;

    .line 61
    iget-object v1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v1, v1, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method

.method static isFinishKeyBeforDispatching(J)Z
    .locals 2
    .param p0, "result"    # J

    .prologue
    .line 135
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishKeyBeforQueueing(J)Z
    .locals 2
    .param p0, "result"    # J

    .prologue
    .line 106
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishRotationForOrientationLw(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 139
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 67
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/ISettingListener;

    .line 68
    .local v2, "listener":Lcom/android/server/policy/ISettingListener;
    new-instance v3, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/server/policy/ISettingListener;)V

    invoke-virtual {v3}, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->observe()V

    goto :goto_0

    .line 70
    .end local v2    # "listener":Lcom/android/server/policy/ISettingListener;
    :cond_0
    return-void
.end method

.method interceptBottomKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/FeatureFunctionManager;->interceptBottomKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public interceptFreeSnapshot()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->interceptFreeSnapshot()Z

    move-result v0

    return v0
.end method

.method interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 119
    const-wide/high16 v4, -0x8000000000000000L

    .line 120
    .local v4, "result":J
    const/4 v2, 0x0

    .line 121
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IKeyBeforeDispatchingHandler;

    .line 122
    .local v0, "handler":Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/IKeyBeforeDispatchingHandler;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v4

    .line 124
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 125
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercept Key Before Dispatching result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v4

    .line 131
    .end local v0    # "handler":Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_1
    return-wide v6

    .line 129
    .end local v6    # "result":J
    .restart local v0    # "handler":Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
    .restart local v4    # "result":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 130
    goto :goto_0

    .end local v0    # "handler":Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
    :cond_1
    move-wide v6, v4

    .line 131
    .end local v4    # "result":J
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 90
    const-wide/high16 v4, -0x8000000000000000L

    .line 91
    .local v4, "result":J
    const/4 v2, 0x0

    .line 92
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IKeyBeforeQueueingHandler;

    .line 93
    .local v0, "handler":Lcom/android/server/policy/IKeyBeforeQueueingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/IKeyBeforeQueueingHandler;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J

    move-result-wide v4

    .line 95
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 96
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercept Key Before Queueing result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v4

    .line 102
    .end local v0    # "handler":Lcom/android/server/policy/IKeyBeforeQueueingHandler;
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_1
    return-wide v6

    .line 100
    .end local v6    # "result":J
    .restart local v0    # "handler":Lcom/android/server/policy/IKeyBeforeQueueingHandler;
    .restart local v4    # "result":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 101
    goto :goto_0

    .end local v0    # "handler":Lcom/android/server/policy/IKeyBeforeQueueingHandler;
    :cond_1
    move-wide v6, v4

    .line 102
    .end local v4    # "result":J
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method interceptMotionAfterPressKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/FeatureFunctionManager;->interceptMotionAfterPressKey(I)Z

    move-result v0

    return v0
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "keyguardOn"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/FeatureFunctionManager;->playSoundEffect(Landroid/view/KeyEvent;IZ)V

    .line 168
    return-void
.end method

.method systemBooted()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->systemBooted()V

    .line 159
    return-void
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/server/policy/SmartFaceManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-virtual {v0}, Lcn/nubia/server/policy/SmartFaceManager;->startSmartFaceService()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->systemReady()V

    .line 155
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/FeatureFunctionManager;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method updateSettings()V
    .locals 3

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v2, v2, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ISettingListener;

    .line 75
    .local v0, "handler":Lcom/android/server/policy/ISettingListener;
    invoke-interface {v0}, Lcom/android/server/policy/ISettingListener;->updateSettings()V

    goto :goto_0

    .line 78
    .end local v0    # "handler":Lcom/android/server/policy/ISettingListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
