.class Lcom/android/server/am/TencentSecurityMd5CheckUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "TencentSecurityMd5CheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TencentSecurityMd5CheckUtil;->regTMSInstallReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TencentSecurityMd5CheckUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/TencentSecurityMd5CheckUtil;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/TencentSecurityMd5CheckUtil$1;->this$0:Lcom/android/server/am/TencentSecurityMd5CheckUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "packagename":Ljava/lang/String;
    const-string v2, "com.tencent.qqpimsecure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const/4 v2, 0x1

    # setter for: Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I
    invoke-static {v2}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->access$002(I)I

    .line 71
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v2, -0x1

    # setter for: Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSExist:I
    invoke-static {v2}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->access$002(I)I

    .line 67
    # setter for: Lcom/android/server/am/TencentSecurityMd5CheckUtil;->isTMSMd5Same:I
    invoke-static {v4}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->access$102(I)I

    .line 68
    # setter for: Lcom/android/server/am/TencentSecurityMd5CheckUtil;->TMSUid:I
    invoke-static {v4}, Lcom/android/server/am/TencentSecurityMd5CheckUtil;->access$202(I)I

    goto :goto_0
.end method
