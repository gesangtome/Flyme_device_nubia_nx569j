.class public interface abstract Lcom/android/server/am/IAMSFunc;
.super Ljava/lang/Object;
.source "IAMSFunc.java"


# virtual methods
.method public abstract checkStartActivityLockedForBox(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract getCloneCpr(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/am/ContentProviderRecord;
.end method

.method public abstract processReceiverComponents(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation
.end method

.method public abstract processRegisterReceivers(Ljava/util/List;Ljava/util/Set;Landroid/content/Intent;Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III)I"
        }
    .end annotation
.end method

.method public abstract processSpecialIntent(Landroid/content/Intent;II)I
.end method

.method public abstract queueFinalBroadcastForClone(Ljava/util/List;Lcom/android/server/am/BroadcastRecord;Ljava/util/Set;Landroid/content/Intent;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "IZ)V"
        }
    .end annotation
.end method

.method public abstract queueNOrderedRegisteredBroadcastForClone(Ljava/util/List;Lcom/android/server/am/BroadcastRecord;Ljava/util/Set;Landroid/content/Intent;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "Z)V"
        }
    .end annotation
.end method
