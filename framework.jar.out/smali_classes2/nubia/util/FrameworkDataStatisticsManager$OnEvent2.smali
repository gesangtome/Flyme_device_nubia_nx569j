.class Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;
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
    name = "OnEvent2"
.end annotation


# instance fields
.field private mEventId:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;->mEventId:Ljava/lang/String;

    .line 322
    iput-object p2, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;->mValue:Ljava/lang/String;

    .line 323
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
    .line 328
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;->mEventId:Ljava/lang/String;

    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent2;->mValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lnubia/util/IFrameworkDataStatisticsService;->onEvent2(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method
