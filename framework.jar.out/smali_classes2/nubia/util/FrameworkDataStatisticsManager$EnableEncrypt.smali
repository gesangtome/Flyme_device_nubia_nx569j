.class Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;
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
    name = "EnableEncrypt"
.end annotation


# instance fields
.field private mEnable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;->mEnable:Z

    .line 219
    iput-boolean p1, p0, Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;->mEnable:Z

    .line 220
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
    .line 225
    iget-boolean v0, p0, Lnubia/util/FrameworkDataStatisticsManager$EnableEncrypt;->mEnable:Z

    invoke-interface {p1, v0}, Lnubia/util/IFrameworkDataStatisticsService;->enableEncrypt(Z)V

    .line 226
    return-void
.end method
