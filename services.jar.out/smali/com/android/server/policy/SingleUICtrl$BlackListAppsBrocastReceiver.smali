.class Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SingleUICtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleUICtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlackListAppsBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleUICtrl;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SingleUICtrl;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;->this$0:Lcom/android/server/policy/SingleUICtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SingleUICtrl;Lcom/android/server/policy/SingleUICtrl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/SingleUICtrl;
    .param p2, "x1"    # Lcom/android/server/policy/SingleUICtrl$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;-><init>(Lcom/android/server/policy/SingleUICtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 390
    const-string v0, "SingleHand"

    const-string v1, "onReceive black list to close singleUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    return-void
.end method
