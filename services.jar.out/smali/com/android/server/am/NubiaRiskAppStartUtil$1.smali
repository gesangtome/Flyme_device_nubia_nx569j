.class Lcom/android/server/am/NubiaRiskAppStartUtil$1;
.super Landroid/database/ContentObserver;
.source "NubiaRiskAppStartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaRiskAppStartUtil;->registerRiskAppObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$1;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$1;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    # invokes: Lcom/android/server/am/NubiaRiskAppStartUtil;->setBlackListPkgNames()V
    invoke-static {v0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$000(Lcom/android/server/am/NubiaRiskAppStartUtil;)V

    .line 81
    return-void
.end method
