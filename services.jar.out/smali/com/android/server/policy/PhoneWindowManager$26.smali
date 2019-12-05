.class Lcom/android/server/policy/PhoneWindowManager$26;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;IZ)V
    .locals 0

    .prologue
    .line 7075
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$visibility:I

    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 7079
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 7080
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 7082
    sget-boolean v2, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPolicyFuncs:Lcom/android/server/policy/IPolicySmartShowFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/IPolicySmartShowFuncs;->canAffectSystemUiLw(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7083
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$visibility:I

    if-eqz v2, :cond_0

    .line 7084
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$visibility:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 7085
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V

    .line 7097
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 7088
    .restart local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$visibility:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 7089
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7093
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 7095
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
