.class Lcom/android/server/policy/NubiaGlobalActions$3;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions;->setAllClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    .line 320
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$100(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 323
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 324
    .local v4, "ringerMode":I
    if-eq v4, v8, :cond_0

    .line 325
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 334
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 335
    .local v5, "vibratorModeOn":I
    if-ne v5, v8, :cond_1

    .line 336
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 338
    .local v0, "currentRingVolume":I
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 340
    .local v1, "maxRingVolume":I
    mul-int/lit8 v6, v0, 0x64

    div-int v2, v6, v1

    .line 341
    .local v2, "powerVolume":I
    const-string v6, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSilentLayout onClick powerVolume is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v6, "persist.sys.power.volume"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v0    # "currentRingVolume":I
    .end local v1    # "maxRingVolume":I
    .end local v2    # "powerVolume":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->setRingerModeView()V
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$300(Lcom/android/server/policy/NubiaGlobalActions;)V

    .line 350
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->dismiss()V

    .line 351
    return-void

    .line 330
    .end local v5    # "vibratorModeOn":I
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$3;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 346
    .restart local v5    # "vibratorModeOn":I
    :cond_1
    const-string v6, "GlobalActions"

    const-string v7, "mSilentLayout onClick silent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v6, "persist.sys.power.volume"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
