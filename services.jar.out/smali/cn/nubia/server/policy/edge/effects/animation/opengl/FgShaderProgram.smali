.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;
.super Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;
.source "FgShaderProgram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "program"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;-><init>(I)V

    .line 9
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;->mId:I

    const-string v1, "uFgDim"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;->mFgDimHandle:I

    .line 10
    return-void
.end method
