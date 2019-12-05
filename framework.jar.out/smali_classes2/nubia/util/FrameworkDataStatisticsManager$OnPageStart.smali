.class Lnubia/util/FrameworkDataStatisticsManager$OnPageStart;
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
    name = "OnPageStart"
.end annotation


# instance fields
.field private mPageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnPageStart;->mPageName:Ljava/lang/String;

    .line 481
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
    .line 486
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$OnPageStart;->mPageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lnubia/util/IFrameworkDataStatisticsService;->onPageStart(Ljava/lang/String;)V

    .line 487
    return-void
.end method
