.class Landroid/media/Ringtone$MyOnCompletionListener;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 494
    # getter for: Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;
    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 495
    :try_start_0
    # getter for: Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;
    invoke-static {}, Landroid/media/Ringtone;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mAudioFocusChangeListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mAudioFocusChangeListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Ringtone$MyOnCompletionListener;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 501
    :cond_0
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
