.class Landroid/app/NotificationDateTimeView$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationDateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationDateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationDateTimeView;


# direct methods
.method constructor <init>(Landroid/app/NotificationDateTimeView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/NotificationDateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 246
    iget-object v1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    invoke-virtual {v1}, Landroid/app/NotificationDateTimeView;->update()V

    .line 247
    return-void
.end method
