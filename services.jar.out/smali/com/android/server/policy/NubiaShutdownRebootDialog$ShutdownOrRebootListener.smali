.class Lcom/android/server/policy/NubiaShutdownRebootDialog$ShutdownOrRebootListener;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Lcom/android/server/policy/NubiaSlideView$OnShutDownRebootListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownOrRebootListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;Lcom/android/server/policy/NubiaShutdownRebootDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/NubiaShutdownRebootDialog;
    .param p2, "x1"    # Lcom/android/server/policy/NubiaShutdownRebootDialog$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V

    return-void
.end method


# virtual methods
.method public reboot()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mCallbackAction:Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$1500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;->rebooting()V

    .line 271
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mCallbackAction:Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$1500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;->shutdowning()V

    .line 275
    return-void
.end method
