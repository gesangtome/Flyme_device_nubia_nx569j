.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
.super Ljava/lang/Object;
.source "TextureManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageFlippingController"


# instance fields
.field private final mTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    .line 17
    iput-wide p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mThreadId:J

    .line 18
    return-void
.end method

.method private checkThread(Ljava/lang/String;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 273
    .local v0, "currentThreadId":J
    iget-wide v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mThreadId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 274
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextureManagement should call in the same thread. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mThreadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentThreadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-void
.end method

.method private getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    .locals 4
    .param p1, "hashcode"    # I

    .prologue
    .line 250
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 252
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 253
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .line 255
    .local v1, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    if-ne p1, v3, :cond_0

    .line 260
    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :goto_1
    return-object v1

    .line 252
    .restart local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isValidate(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)Z
    .locals 2
    .param p1, "item"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .prologue
    .line 264
    if-eqz p1, :cond_2

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-lez v0, :cond_0

    const/4 v0, 0x3

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "hashcode"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 31
    const-string v1, "addItem"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 32
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v1, "invalide_up_package"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    const-string v1, "invalide_down_package"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    const-string v1, "invalide_split_package"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 44
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v4, v1, :cond_3

    .line 45
    :cond_2
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isRecycled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TextureManagement addItem error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_3
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(I)V

    .line 53
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V

    .line 54
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    iput p1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    .line 55
    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    .line 58
    iput-object p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public delItem(I)V
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    .line 63
    const-string v1, "delItem"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 66
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)V

    .line 69
    :cond_0
    return-void
.end method

.method public delItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)V
    .locals 2
    .param p1, "item"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v0, "delItem"

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 74
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 78
    :cond_0
    iput v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    .line 79
    iput v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    .line 81
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 83
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    :cond_1
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-lez v0, :cond_2

    .line 88
    const/4 v0, 0x4

    iput v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteBitmap(I)V
    .locals 3
    .param p1, "hashcode"    # I

    .prologue
    .line 126
    const-string v1, "deleteBitmap"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 129
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-eq v1, v2, :cond_0

    .line 132
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 21
    const-string v1, "destroy"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    return-void
.end method

.method public getAllItemHashcode()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-string v4, "getAllItemHashcode"

    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 189
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 190
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .line 192
    .local v2, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isValidate(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    iget v4, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_1
    return-object v0
.end method

.method public getNeedDelTextures(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "textureIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "getNeedDelTextures"

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 208
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 209
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .line 211
    .local v1, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-lez v3, :cond_0

    const/4 v3, 0x4

    iget v4, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-ne v3, v4, :cond_0

    .line 217
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_2
    return-void
.end method

.method public getNeedUploadTextures(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v3, "getNeedUploadTextures"

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 231
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 232
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .line 234
    .local v1, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-nez v3, :cond_0

    iget-object v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 239
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_2
    return-void
.end method

.method public getStatus(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    .line 106
    const-string v1, "getStatus"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 109
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 110
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureHeight(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    .line 149
    const-string v1, "getTextureHeight"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 152
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 153
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    .line 156
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureId(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    .line 160
    const-string v1, "getTextureId"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 163
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 164
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    .line 167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureWidth(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    .line 138
    const-string v1, "getTextureWidth"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 141
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 142
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    .line 145
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExist(I)Z
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    .line 95
    const-string v1, "isExist"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 98
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isValidate(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)Z

    move-result v1

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStatus(II)V
    .locals 2
    .param p1, "hashcode"    # I
    .param p2, "status"    # I

    .prologue
    .line 117
    const-string v1, "setStatus"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 120
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 121
    iput p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    .line 123
    :cond_0
    return-void
.end method

.method public setTextureId(II)V
    .locals 2
    .param p1, "hashcode"    # I
    .param p2, "textureId"    # I

    .prologue
    .line 171
    const-string v1, "setTextureId"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .line 174
    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    .line 175
    iput p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    .line 177
    :cond_0
    return-void
.end method
