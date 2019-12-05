.class Lcom/android/server/policy/NubiaShutdownRebootDialog$4;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaShutdownRebootDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/server/policy/NubiaShutdownRebootDialog;->isCanInterrupt()Z
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$1100(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$4;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->dismiss()V

    .line 179
    :cond_0
    return-void
.end method
