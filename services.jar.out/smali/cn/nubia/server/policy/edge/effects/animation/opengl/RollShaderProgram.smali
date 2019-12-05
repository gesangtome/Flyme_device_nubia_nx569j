.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;
.super Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;
.source "RollShaderProgram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "program"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;-><init>(I)V

    .line 9
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mId:I

    const-string v1, "uRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mRadiusHandle:I

    .line 10
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mId:I

    const-string v1, "uColorScaleStart"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mColorScaleStartHandle:I

    .line 11
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mId:I

    const-string v1, "uColorScaleEnd"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mColorScaleEndHandle:I

    .line 12
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mId:I

    const-string v1, "uColorDeltaStart"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mColorDeltaStartHandle:I

    .line 13
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mId:I

    const-string v1, "uColorDeltaEnd"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mColorDeltaEndHandle:I

    .line 14
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mId:I

    const-string v1, "uFgDim"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;->mFgDimHandle:I

    .line 15
    return-void
.end method
