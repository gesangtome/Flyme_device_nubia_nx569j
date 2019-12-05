.class Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
.super Ljava/io/InputStream;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/SimulateNinePngUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NinePathInputStream"
.end annotation


# instance fields
.field private mCount:I

.field private mExtraHeaderData:[B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 164
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 169
    iput-object p1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    .line 170
    iput-object p2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 171
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 172
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 177
    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v3, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 182
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 183
    .local v0, "arrayOfByte":[B
    iget v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 184
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 185
    aget-byte v2, v0, v1

    .line 187
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "i":I
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "paramArrayOfByte"    # [B
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 197
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget v5, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v6, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v6, v6

    if-ge v5, v6, :cond_0

    if-ge v3, p3, :cond_0

    .line 198
    add-int/lit8 v4, v3, 0x1

    .line 199
    .local v4, "l":I
    add-int v1, p2, v3

    .line 200
    .local v1, "i1":I
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 201
    .local v0, "abyte1":[B
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 202
    .local v2, "j1":I
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 203
    aget-byte v5, v0, v2

    aput-byte v5, p1, v1

    .line 197
    move v3, v4

    goto :goto_0

    .line 206
    .end local v0    # "abyte1":[B
    .end local v1    # "i1":I
    .end local v2    # "j1":I
    .end local v4    # "l":I
    :cond_0
    if-ge v3, p3, :cond_1

    .line 207
    iget-object v5, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    add-int v6, p2, v3

    sub-int v7, p3, v3

    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    add-int/2addr v3, v5

    .line 209
    :cond_1
    return v3
.end method
