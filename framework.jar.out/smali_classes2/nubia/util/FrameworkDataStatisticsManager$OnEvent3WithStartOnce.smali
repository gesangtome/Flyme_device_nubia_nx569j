.class Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;
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
    name = "OnEvent3WithStartOnce"
.end annotation


# instance fields
.field private mEventId:Ljava/lang/String;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;->mEventId:Ljava/lang/String;

    .line 388
    iput-object p2, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;->mMap:Ljava/util/Map;

    .line 389
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
    .line 394
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;->mEventId:Ljava/lang/String;

    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager$OnEvent3WithStartOnce;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lnubia/util/IFrameworkDataStatisticsService;->onEvent3(Ljava/lang/String;Ljava/util/Map;)V

    .line 395
    return-void
.end method
