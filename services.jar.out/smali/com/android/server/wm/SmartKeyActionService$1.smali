.class Lcom/android/server/wm/SmartKeyActionService$1;
.super Lnubia/smartkey/ISmartKeyAction$Stub;
.source "SmartKeyActionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SmartKeyActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SmartKeyActionService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SmartKeyActionService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/wm/SmartKeyActionService$1;->this$0:Lcom/android/server/wm/SmartKeyActionService;

    invoke-direct {p0}, Lnubia/smartkey/ISmartKeyAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public takeScreenshot()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SmartKeyActionService$1;->this$0:Lcom/android/server/wm/SmartKeyActionService;

    # getter for: Lcom/android/server/wm/SmartKeyActionService;->mTakeScreenshot:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lcom/android/server/wm/SmartKeyActionService;->access$000(Lcom/android/server/wm/SmartKeyActionService;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/server/wm/SmartKeyActionService$1;->this$0:Lcom/android/server/wm/SmartKeyActionService;

    # getter for: Lcom/android/server/wm/SmartKeyActionService;->mTakeScreenshot:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lcom/android/server/wm/SmartKeyActionService;->access$000(Lcom/android/server/wm/SmartKeyActionService;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wm/SmartKeyActionService$1;->this$0:Lcom/android/server/wm/SmartKeyActionService;

    # getter for: Lcom/android/server/wm/SmartKeyActionService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/wm/SmartKeyActionService;->access$100(Lcom/android/server/wm/SmartKeyActionService;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
