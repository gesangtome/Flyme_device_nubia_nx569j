.class public Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;
.super Ljava/lang/Object;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectedConfig"
.end annotation


# instance fields
.field private mConifgId:Ljava/lang/String;

.field private mIsActivated:Z

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V
    .locals 9
    .param p2, "selectedConfig"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1889
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;

    .line 1879
    iput-boolean v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    .line 1892
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1893
    .local v2, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1895
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectedConfig raw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1898
    .local v3, "tempLenth":I
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SelectedConfig ConfigLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    if-gtz v3, :cond_0

    .line 1901
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v7, "selectedConfig ConfigLength is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :goto_0
    array-length v6, p2

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ne v6, v4, :cond_2

    .line 1917
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p2, v6

    if-ne v6, v4, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    .line 1918
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectedConfig mIsActivated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    .end local v3    # "tempLenth":I
    :goto_2
    return-void

    .line 1904
    .restart local v2    # "payload":Ljava/nio/ByteBuffer;
    .restart local v3    # "tempLenth":I
    :cond_0
    new-array v0, v3, [B

    .line 1905
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO8859-1"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1912
    :goto_3
    :try_start_2
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectedConfig mConifgId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1924
    .end local v0    # "data":[B
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    .end local v3    # "tempLenth":I
    :catch_0
    move-exception v1

    .line 1925
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SelectedConfig to parse payload w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1908
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "data":[B
    .restart local v2    # "payload":Ljava/nio/ByteBuffer;
    .restart local v3    # "tempLenth":I
    :catch_1
    move-exception v1

    .line 1909
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v7, "unsupport ISO8859-1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    move v4, v5

    .line 1917
    goto :goto_1

    .line 1921
    :cond_2
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "selectedConfig mIsActivated is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getConfigId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mConifgId:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;->mIsActivated:Z

    return v0
.end method
