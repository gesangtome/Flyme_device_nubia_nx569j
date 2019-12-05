.class Lcom/android/server/NubiaBasePermissionDialog$1;
.super Landroid/os/Handler;
.source "NubiaBasePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaBasePermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaBasePermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaBasePermissionDialog;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/NubiaBasePermissionDialog$1;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/NubiaBasePermissionDialog$1;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z
    invoke-static {v0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->access$002(Lcom/android/server/NubiaBasePermissionDialog;Z)Z

    .line 94
    iget-object v0, p0, Lcom/android/server/NubiaBasePermissionDialog$1;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/NubiaBasePermissionDialog;->setEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->access$100(Lcom/android/server/NubiaBasePermissionDialog;Z)V

    .line 96
    :cond_0
    return-void
.end method
