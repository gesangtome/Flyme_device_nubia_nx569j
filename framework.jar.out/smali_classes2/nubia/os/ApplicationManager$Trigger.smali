.class public Lnubia/os/ApplicationManager$Trigger;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation


# static fields
.field private static sService:Lnubia/os/IApplicationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 7
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "duration"    # J

    .prologue
    .line 780
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 781
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    # invokes: Lnubia/os/ApplicationManager;->acquirePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->access$1900(Lnubia/os/IApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 782
    return-void
.end method

.method public static allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 704
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 705
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$400(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowBackgroundSyncToRun()Z
    .locals 1

    .prologue
    .line 770
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 771
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z
    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$1700(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 709
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 710
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$500(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public static allowFullWakeLockScreenOff(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 685
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowFullWakeLockScreenOffImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 689
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 690
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 695
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$200(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p0, "actname"    # Ljava/lang/String;

    .prologue
    .line 902
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 903
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->checkActionAllowedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4300(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "actname"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 908
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->checkAllowedGetActionNameImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4400(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureService()V
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    if-nez v0, :cond_0

    .line 679
    const-string v0, "nubia.application.manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;

    move-result-object v0

    sput-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    .line 681
    :cond_0
    return-void
.end method

.method public static getActionState(Ljava/lang/String;)Z
    .locals 1
    .param p0, "actname"    # Ljava/lang/String;

    .prologue
    .line 912
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 913
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->getActionStateImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$4500(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getForegroundPackageName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 870
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 871
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->getForegroundPackageNameImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;
    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$3700(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNetAvailable()Z
    .locals 1

    .prologue
    .line 798
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 799
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z
    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$2300(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "reqCode"    # I
    .param p1, "subCode"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "argStr1"    # Ljava/lang/String;
    .param p5, "argStr2"    # Ljava/lang/String;

    .prologue
    .line 855
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 856
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    # invokes: Lnubia/os/ApplicationManager;->isAllowedStartFrozenPackageImpl(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v6}, Lnubia/os/ApplicationManager;->access$3400(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 789
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 790
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$2100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 699
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isDangerousWakeLockImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$300(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 794
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isInNoTransitionAnimImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2200(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKillWhenFrozen(I)Z
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 865
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 866
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isKillWhenFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3600(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isNetworkBlocked(II)Z
    .locals 1
    .param p0, "networkType"    # I
    .param p1, "uid"    # I

    .prologue
    .line 775
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 776
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$1800(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method public static isNotifyDisplayEvent(II)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "state"    # I

    .prologue
    .line 844
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 845
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isNotifyDisplayEventImpl(Lnubia/os/IApplicationManager;II)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$3200(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method public static isProcessFrozen(I)Z
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 829
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 830
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isProcessFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2900(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isProcessFrozenByUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 839
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 840
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isProcessFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3100(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static isProcessRealFrozen(I)Z
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 834
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 835
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isProcessRealFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3000(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method public static noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z
    .param p3, "isSave"    # Z

    .prologue
    .line 884
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 885
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteActionMutexImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$4000(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 887
    return-void
.end method

.method public static noteActivityStackRemoved(I)V
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 750
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 751
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1300(Lnubia/os/IApplicationManager;I)V

    .line 752
    return-void
.end method

.method public static noteAppTransitionAnimation(Z)V
    .locals 1
    .param p0, "execute"    # Z

    .prologue
    .line 760
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 761
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1500(Lnubia/os/IApplicationManager;Z)V

    .line 762
    return-void
.end method

.method public static noteDisplayStateChanged(II)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "state"    # I

    .prologue
    .line 849
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 850
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteDisplayStateChangedImpl(Lnubia/os/IApplicationManager;II)V
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$3300(Lnubia/os/IApplicationManager;II)V

    .line 851
    return-void
.end method

.method public static notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 731
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$900(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public static noteProcessStatus([I[I[Ljava/lang/String;[I[I)V
    .locals 6
    .param p0, "pid"    # [I
    .param p1, "uid"    # [I
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "adj"    # [I
    .param p4, "reasonPid"    # [I

    .prologue
    .line 809
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 810
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    # invokes: Lnubia/os/ApplicationManager;->noteProcessStatusImpl(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I)V
    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->access$2500(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I)V

    .line 811
    return-void
.end method

.method public static noteProcessStatusChanged()V
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 815
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteProcessStatusChangedImpl(Lnubia/os/IApplicationManager;)V
    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$2600(Lnubia/os/IApplicationManager;)V

    .line 816
    return-void
.end method

.method public static noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 746
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$1200(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public static noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 756
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1400(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public static noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z

    .prologue
    .line 725
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 726
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    # invokes: Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->access$800(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 727
    return-void
.end method

.method public static noteScreenState(I)V
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 879
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 880
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteScreenStateImpl(Lnubia/os/IApplicationManager;I)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3900(Lnubia/os/IApplicationManager;I)V

    .line 881
    return-void
.end method

.method public static noteScreenStateChanged(I)V
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 819
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 820
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteScreenStateChangedImpl(Lnubia/os/IApplicationManager;I)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2700(Lnubia/os/IApplicationManager;I)V

    .line 821
    return-void
.end method

.method public static noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 741
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1100(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public static noteStatusBarExpanding(Z)V
    .locals 1
    .param p0, "expanding"    # Z

    .prologue
    .line 765
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 766
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1600(Lnubia/os/IApplicationManager;Z)V

    .line 767
    return-void
.end method

.method public static noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 736
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1000(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public static noteWindowStateChange(III)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "windowId"    # I
    .param p2, "state"    # I

    .prologue
    .line 824
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 825
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteWindowStateChangeImpl(Lnubia/os/IApplicationManager;III)V
    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$2800(Lnubia/os/IApplicationManager;III)V

    .line 826
    return-void
.end method

.method public static registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 891
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 892
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->registerActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$4100(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 893
    return-void
.end method

.method public static registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 1
    .param p0, "cb"    # Lnubia/os/ITaskCallback;
    .param p1, "flag"    # J

    .prologue
    .line 714
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 715
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V
    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$600(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V

    .line 716
    return-void
.end method

.method public static releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 785
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 786
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->releasePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2000(Lnubia/os/IApplicationManager;Landroid/os/IBinder;)V

    .line 787
    return-void
.end method

.method public static setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    .locals 1
    .param p0, "callback"    # Lnubia/os/IFreezeCallback;

    .prologue
    .line 803
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 804
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->setFreezeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$2400(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V

    .line 805
    return-void
.end method

.method public static setNetworkFirewall(ILjava/lang/String;ZZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enableMobile"    # Z
    .param p3, "enableWifi"    # Z

    .prologue
    .line 875
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 876
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->setNetworkFirewallImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ZZ)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$3800(Lnubia/os/IApplicationManager;ILjava/lang/String;ZZ)V

    .line 877
    return-void
.end method

.method public static unfreezeWhenKill(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 860
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 861
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->unfreezeWhenKillImpl(Lnubia/os/IApplicationManager;I)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$3500(Lnubia/os/IApplicationManager;I)V

    .line 862
    return-void
.end method

.method public static unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 897
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 898
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->unregisterActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$4200(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 899
    return-void
.end method

.method public static unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p0, "cb"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 719
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 720
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$700(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V

    .line 721
    return-void
.end method
