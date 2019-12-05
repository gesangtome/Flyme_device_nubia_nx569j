.class Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;
.super Landroid/os/AsyncTask;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkHistoryWrite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeletedEphemeralSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2354
    .local p2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "deletedSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "deletedEphemeralSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2355
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->mNetworks:Ljava/util/List;

    .line 2356
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->mDeletedSSIDs:Ljava/util/List;

    .line 2357
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->mDeletedEphemeralSSIDs:Ljava/util/List;

    .line 2358
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->mNetworks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->mDeletedSSIDs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->mDeletedEphemeralSSIDs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2349
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    # getter for: Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->access$800(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/net/DelayedDiskWrite;

    move-result-object v0

    # getter for: Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite$1;-><init>(Lcom/android/server/wifi/WifiConfigStore$NetworkHistoryWrite;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 2542
    const/4 v0, 0x0

    return-object v0
.end method
