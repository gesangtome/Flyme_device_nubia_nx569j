.class Landroid/app/LongSnapClientJobManager$WorkHandler;
.super Landroid/os/Handler;
.source "LongSnapClientJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LongSnapClientJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LongSnapClientJobManager;


# direct methods
.method public constructor <init>(Landroid/app/LongSnapClientJobManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/app/LongSnapClientJobManager$WorkHandler;->this$0:Landroid/app/LongSnapClientJobManager;

    .line 29
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Landroid/app/LongSnapClientJobManager$WorkHandler;->this$0:Landroid/app/LongSnapClientJobManager;

    const/4 v1, 0x0

    # setter for: Landroid/app/LongSnapClientJobManager;->mSnapJob:Landroid/app/LongSnapClientJob;
    invoke-static {v0, v1}, Landroid/app/LongSnapClientJobManager;->access$002(Landroid/app/LongSnapClientJobManager;Landroid/app/LongSnapClientJob;)Landroid/app/LongSnapClientJob;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
