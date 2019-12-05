.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;
.super Ljava/lang/Object;
.source "OpenGLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTexture(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    const/16 v0, 0x2601

    invoke-static {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static addTexture(Landroid/graphics/Bitmap;I)I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filterType"    # I

    .prologue
    const/4 v2, 0x1

    const v6, 0x47012f00    # 33071.0f

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 20
    new-array v1, v2, [I

    .line 21
    .local v1, "textures":[I
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 22
    aget v0, v1, v5

    .line 23
    .local v0, "textureId":I
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 24
    const/16 v2, 0x2801

    int-to-float v3, p1

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 26
    const/16 v2, 0x2800

    int-to-float v3, p1

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 28
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 30
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 32
    invoke-static {v4, v5, p0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 36
    return v0
.end method

.method public static delTextures(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "textureIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 69
    .local v2, "n":I
    if-gtz v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 75
    .local v1, "idBuffer":Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 76
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 81
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static delTextures([I)V
    .locals 4
    .param p0, "textureIdList"    # [I

    .prologue
    .line 43
    array-length v2, p0

    .line 45
    .local v2, "n":I
    if-gtz v2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 51
    .local v1, "idBuffer":Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 52
    aget v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 57
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method
