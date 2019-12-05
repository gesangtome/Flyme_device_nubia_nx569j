.class Landroid/app/LongSnapClientJob$ClientWorkHandler;
.super Landroid/os/Handler;
.source "LongSnapClientJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LongSnapClientJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LongSnapClientJob;


# direct methods
.method public constructor <init>(Landroid/app/LongSnapClientJob;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    return-void
.end method

.method private onNativeMsgPrepareLongSnap(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "nextMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # invokes: Landroid/app/LongSnapClientJob;->doCheckScrollable()V
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$600(Landroid/app/LongSnapClientJob;)V

    .line 147
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # invokes: Landroid/app/LongSnapClientJob;->sendNotifyActivityReady()V
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$700(Landroid/app/LongSnapClientJob;)V

    .line 148
    return-void
.end method

.method private onRequestLayoutInfo(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, "msgPrep":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    return-void
.end method

.method private onRequestScroll(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "nextMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd5

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 127
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method private onRequestScrollOver(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "nextMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd6

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 133
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method

.method private onRequestTerminate(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/LongSnapClientJob;->access$500(Landroid/app/LongSnapClientJob;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # getter for: Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$400(Landroid/app/LongSnapClientJob;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 90
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onNativeMsgPrepareLongSnap(Landroid/os/Message;)V

    goto :goto_0

    .line 94
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onRequestScroll(Landroid/os/Message;)V

    goto :goto_0

    .line 98
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onRequestScrollOver(Landroid/os/Message;)V

    goto :goto_0

    .line 103
    :sswitch_3
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    # invokes: Landroid/app/LongSnapClientJob;->sendDragEvent(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/app/LongSnapClientJob;->access$300(Landroid/app/LongSnapClientJob;Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :sswitch_4
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-virtual {v0, p1}, Landroid/app/LongSnapClientJob;->sendDragEventOver(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :sswitch_5
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onRequestTerminate(Landroid/os/Message;)V

    goto :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x6b -> :sswitch_5
        0x6c -> :sswitch_2
        0xc8 -> :sswitch_0
        0xd5 -> :sswitch_3
        0xd6 -> :sswitch_4
    .end sparse-switch
.end method
