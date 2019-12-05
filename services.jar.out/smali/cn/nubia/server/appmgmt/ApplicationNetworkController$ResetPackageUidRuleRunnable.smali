.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetPackageUidRuleRunnable"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 873
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mUid:I

    .line 875
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mPackage:Ljava/lang/String;

    .line 876
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 880
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "ApplicationNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset uid rule for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mUid:I

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ResetPackageUidRuleRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    .line 886
    :cond_1
    return-void
.end method
