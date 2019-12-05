.class public Lcn/nubia/mutex/BaseMutexCallback;
.super Lcn/nubia/mutex/IMutexCallback$Stub;
.source "BaseMutexCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/nubia/mutex/IMutexCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    return-object v0
.end method

.method public showResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "nextact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
