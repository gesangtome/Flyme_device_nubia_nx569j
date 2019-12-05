.class Lnubia/util/FrameworkDataStatisticsManager$SetSessionContinueMillis;
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
    name = "SetSessionContinueMillis"
.end annotation


# instance fields
.field private mMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-wide p1, p0, Lnubia/util/FrameworkDataStatisticsManager$SetSessionContinueMillis;->mMillis:J

    .line 260
    return-void
.end method


# virtual methods
.method public run(Lnubia/util/IFrameworkDataStatisticsService;)V
    .locals 2
    .param p1, "service"    # Lnubia/util/IFrameworkDataStatisticsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    iget-wide v0, p0, Lnubia/util/FrameworkDataStatisticsManager$SetSessionContinueMillis;->mMillis:J

    invoke-interface {p1, v0, v1}, Lnubia/util/IFrameworkDataStatisticsService;->setSessionContinueMillis(J)V

    .line 266
    return-void
.end method
