.class Lcn/nubia/server/notification/NotificationBlackWhiteList$1;
.super Landroid/os/Handler;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/notification/NotificationBlackWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;


# direct methods
.method constructor <init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList$1;->this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList$1;->this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;

    # invokes: Lcn/nubia/server/notification/NotificationBlackWhiteList;->handleNotifyDbChange()V
    invoke-static {v0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->access$000(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
