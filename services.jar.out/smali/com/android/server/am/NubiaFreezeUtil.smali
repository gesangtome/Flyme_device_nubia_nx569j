.class Lcom/android/server/am/NubiaFreezeUtil;
.super Ljava/lang/Object;
.source "NubiaFreezeUtil.java"


# static fields
.field private static final DEBUGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaFreezeUtil"


# instance fields
.field private mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 1
    .param p1, "selfStartUtil"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 40
    iput-object p1, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    return-void
.end method


# virtual methods
.method isAllowedStartFrozenPkgFromContentProvider(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "result":Z
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 63
    .local v1, "cpi":Landroid/content/pm/ProviderInfo;
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 70
    .local v0, "callingUid":I
    const/16 v3, 0x3e9

    if-eq v0, v3, :cond_0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "ContentProviderImpl"

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :cond_0
    const/4 v2, 0x1

    .line 77
    :cond_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 78
    const-string v3, "NubiaFreezeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROZEN] isAllowedStartFrozenPkgFromContentProvider() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    return v2
.end method

.method public isAllowedStartFrozenPkgFromService(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 6
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "s"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "result":Z
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 46
    .local v1, "callingUid":I
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 47
    .local v0, "callingPid":I
    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v3, p2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    :cond_0
    const/4 v2, 0x1

    .line 54
    :cond_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 55
    const-string v3, "NubiaFreezeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROZEN] isAllowedStartFrozenPkgFromService() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    return v2
.end method

.method isAllowedStartFrozenPkgFromeBroadcast(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, "result":Z
    const/4 v4, 0x0

    .line 101
    .local v4, "act":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 106
    :cond_0
    const/4 v7, 0x1

    .line 107
    .local v7, "isAllowStartFrozen":Z
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    :cond_1
    const/4 v8, 0x1

    .line 125
    :cond_2
    :goto_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "NubiaFreezeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FROZEN] isAllowedStartFrozenPkgFromeBroadcast()1 result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , act = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , r.callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", r.callingPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    return v8

    .line 112
    :cond_4
    const/4 v0, 0x1

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager$Trigger;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 114
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 115
    if-eqz v7, :cond_2

    .line 116
    const/4 v8, 0x1

    goto :goto_0

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    move v8, v7

    goto :goto_0
.end method

.method isAllowedStartFrozenPkgFromeBroadcast(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    const/4 v1, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    .local v9, "result":Z
    const/4 v4, 0x0

    .line 135
    .local v4, "act":Ljava/lang/String;
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 136
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 140
    :cond_0
    const/4 v7, 0x1

    .line 141
    .local v7, "isAllowStartFrozen":Z
    const-string v8, "nubia.pay.broadcast.action"

    .line 142
    .local v8, "nubiaPayAction":Ljava/lang/String;
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    :cond_1
    const/4 v9, 0x1

    .line 161
    :cond_2
    :goto_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 162
    const-string v0, "NubiaFreezeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FROZEN] isAllowedStartFrozenPkgFromeBroadcast()2 result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , act = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , r.callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", r.callingPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    return v9

    .line 148
    :cond_4
    const/4 v0, 0x2

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager$Trigger;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 150
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 151
    if-eqz v7, :cond_2

    .line 152
    const/4 v9, 0x1

    goto :goto_0

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    move v9, v7

    goto :goto_0
.end method

.method isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_1
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "NubiaFreezeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FROZEN] packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
