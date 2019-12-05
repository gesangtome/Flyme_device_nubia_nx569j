.class final Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;
.super Lnubia/os/IClipService$Stub;
.source "ClipExtraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/ClipExtraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClipServiceExtraStub"
.end annotation


# static fields
.field private static final MAX_CLIP_DATA_NUMBER:I = 0xa

.field private static final MIN_CLIP_DATA_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ClipServiceExtraStub"


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/server/ClipExtraService;


# direct methods
.method constructor <init>(Lcn/nubia/server/ClipExtraService;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->this$0:Lcn/nubia/server/ClipExtraService;

    invoke-direct {p0}, Lnubia/os/IClipService$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;)V
    .locals 4
    .param p1, "pastedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 44
    .local v0, "size":I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getData(I)Ljava/util/List;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    .local v0, "size":I
    if-ge v0, p1, :cond_0

    .line 52
    iget-object v1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    .line 53
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/ClipExtraService$ClipServiceExtraStub;->mDatas:Ljava/util/ArrayList;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
