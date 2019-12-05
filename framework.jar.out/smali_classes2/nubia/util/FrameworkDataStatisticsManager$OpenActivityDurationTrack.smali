.class Lnubia/util/FrameworkDataStatisticsManager$OpenActivityDurationTrack;
.super Ljava/lang/Object;
.source "FrameworkDataStatisticsManager.java"

# interfaces
.implements Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/FrameworkDataStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenActivityDurationTrack"
.end annotation


# instance fields
.field private mOpen:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-boolean p1, p0, Lnubia/util/FrameworkDataStatisticsManager$OpenActivityDurationTrack;->mOpen:Z

    .line 461
    return-void
.end method


# virtual methods
.method public run(Lnubia/util/IFrameworkDataStatisticsService;)V
    .locals 1
    .param p1, "service"    # Lnubia/util/IFrameworkDataStatisticsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager$OpenActivityDurationTrack;->mOpen:Z

    invoke-interface {p1, v0}, Lnubia/util/IFrameworkDataStatisticsService;->openActivityDurationTrack(Z)V

    .line 467
    return-void
.end method
