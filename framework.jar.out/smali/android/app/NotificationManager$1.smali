.class Landroid/app/NotificationManager$1;
.super Landroid/os/Handler;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/NotificationManager;->initHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/app/NotificationManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 841
    iput-object p1, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 844
    iget-object v0, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    # invokes: Landroid/app/NotificationManager;->handleCheck(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/app/NotificationManager;->access$000(Landroid/app/NotificationManager;Landroid/os/Message;)V

    .line 845
    return-void
.end method
