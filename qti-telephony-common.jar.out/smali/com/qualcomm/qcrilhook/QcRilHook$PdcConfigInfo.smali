.class public Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
.super Ljava/lang/Object;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PdcConfigInfo"
.end annotation


# instance fields
.field private mSize:I

.field private mSubscription:Ljava/lang/String;

.field private mSubscription_length:I

.field private mValid:Z

.field private mVersion:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V
    .locals 12
    .param p2, "pdcConfig"    # [B

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1759
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1753
    iput v9, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    .line 1754
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    .line 1755
    iput v9, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1756
    iput v9, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1757
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1761
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1762
    .local v4, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1764
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PdcConfigInfo raw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    .line 1767
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PdcConfigInfo mConfig_subscription_length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    if-gtz v6, :cond_0

    .line 1771
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1772
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v7, "PdcConfigInfo mSubscription_length is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :goto_0
    array-length v6, p2

    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    .line 1784
    .local v3, "length":I
    if-eq v3, v10, :cond_1

    .line 1785
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1786
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v7, "PdcConfigInfo length is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    .end local v3    # "length":I
    .end local v4    # "payload":Ljava/nio/ByteBuffer;
    :goto_1
    return-void

    .line 1775
    .restart local v4    # "payload":Ljava/nio/ByteBuffer;
    :cond_0
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    new-array v0, v6, [B

    .line 1776
    .local v0, "data":[B
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1778
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    .line 1779
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PdcConfigInfo mSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1819
    .end local v0    # "data":[B
    .end local v4    # "payload":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1820
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    iput-boolean v9, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    .line 1821
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PdcConfigInfo to parse payload w/ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1788
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v3    # "length":I
    .restart local v4    # "payload":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v2, 0x1

    .line 1790
    .local v2, "i":I
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v11, :cond_4

    .line 1791
    :try_start_1
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v2

    aget-byte v6, p2, v6

    if-gez v6, :cond_3

    .line 1792
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v2

    aget-byte v6, p2, v6

    int-to-char v5, v6

    .line 1793
    .local v5, "temp":C
    and-int/lit16 v6, v5, 0xff

    int-to-char v5, v6

    .line 1794
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1798
    .end local v5    # "temp":C
    :goto_3
    if-ge v2, v11, :cond_2

    .line 1799
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    shl-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    .line 1790
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1796
    :cond_3
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v7, v2

    aget-byte v7, p2, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    goto :goto_3

    .line 1802
    :cond_4
    const/4 v2, 0x5

    :goto_4
    if-gt v2, v10, :cond_7

    .line 1803
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v2

    aget-byte v6, p2, v6

    if-gez v6, :cond_6

    .line 1804
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v6, v2

    aget-byte v6, p2, v6

    int-to-char v5, v6

    .line 1805
    .restart local v5    # "temp":C
    and-int/lit16 v6, v5, 0xff

    int-to-char v5, v6

    .line 1806
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1810
    .end local v5    # "temp":C
    :goto_5
    if-ge v2, v10, :cond_5

    .line 1811
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    shl-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    .line 1802
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1808
    :cond_6
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription_length:I

    add-int/2addr v7, v2

    aget-byte v7, p2, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    goto :goto_5

    .line 1814
    :cond_7
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PdcConfigInfo mSize = 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PdcConfigInfo mVersion = 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getSubscription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mSubscription:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1830
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mVersion:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1834
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;->mValid:Z

    return v0
.end method
