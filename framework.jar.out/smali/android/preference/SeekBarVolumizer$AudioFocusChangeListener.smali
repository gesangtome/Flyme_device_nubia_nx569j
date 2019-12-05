.class Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 475
    packed-switch p1, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 479
    :pswitch_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$2100(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->postStopSample()V
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$2200(Landroid/preference/SeekBarVolumizer;)V

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->abandonAudioFocus()V
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
