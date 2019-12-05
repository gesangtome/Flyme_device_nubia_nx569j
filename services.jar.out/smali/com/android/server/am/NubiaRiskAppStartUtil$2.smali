.class Lcom/android/server/am/NubiaRiskAppStartUtil$2;
.super Ljava/lang/Object;
.source "NubiaRiskAppStartUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaRiskAppStartUtil;->checkRiskAndShowDialog(Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

.field final synthetic val$info:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    iput-object p2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->val$info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    iget-object v3, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->val$info:Landroid/content/pm/ApplicationInfo;

    # invokes: Lcom/android/server/am/NubiaRiskAppStartUtil;->isRiskAppStart(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v2, v3}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$100(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.packageinstaller.RISK_APP_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.packageinstaller"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    # getter for: Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$200(Lcom/android/server/am/NubiaRiskAppStartUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NubiaRiskAppStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRiskAndShow error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
