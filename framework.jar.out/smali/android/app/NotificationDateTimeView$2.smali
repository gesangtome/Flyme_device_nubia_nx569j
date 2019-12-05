.class Landroid/app/NotificationDateTimeView$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Landroid/app/NotificationDateTimeView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 250
    iput-object p1, p0, Landroid/app/NotificationDateTimeView$2;->this$0:Landroid/app/NotificationDateTimeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/NotificationDateTimeView$2;->this$0:Landroid/app/NotificationDateTimeView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/NotificationDateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 254
    iget-object v0, p0, Landroid/app/NotificationDateTimeView$2;->this$0:Landroid/app/NotificationDateTimeView;

    invoke-virtual {v0}, Landroid/app/NotificationDateTimeView;->update()V

    .line 255
    return-void
.end method
