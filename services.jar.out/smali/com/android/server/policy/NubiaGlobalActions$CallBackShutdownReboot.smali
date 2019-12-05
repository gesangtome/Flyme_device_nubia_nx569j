.class Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBackShutdownReboot"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;Lcom/android/server/policy/NubiaGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;
    .param p2, "x1"    # Lcom/android/server/policy/NubiaGlobalActions$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    return-void
.end method


# virtual methods
.method public rebooting()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public shutdowning()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 266
    return-void
.end method
