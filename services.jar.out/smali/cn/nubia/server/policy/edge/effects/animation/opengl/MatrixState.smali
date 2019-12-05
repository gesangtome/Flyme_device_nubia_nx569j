.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;
.super Ljava/lang/Object;
.source "MatrixState.java"


# static fields
.field private static mMMatrix:[F

.field private static final mMatrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<[F>;"
        }
    .end annotation
.end field

.field private static final mPMatrix:[F

.field private static final mVMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 8
    new-array v0, v1, [F

    sput-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    .line 9
    new-array v0, v1, [F

    sput-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mVMatrix:[F

    .line 10
    new-array v0, v1, [F

    sput-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    .line 11
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMatrixStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMMatrix()[F
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    return-object v0
.end method

.method public static getMVPMatrix()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 66
    .local v0, "mMVPMatrix":[F
    sget-object v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mVMatrix:[F

    sget-object v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 67
    sget-object v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 68
    return-object v0
.end method

.method public static getPMatrix()[F
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    return-object v0
.end method

.method public static getVMatrix()[F
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mVMatrix:[F

    return-object v0
.end method

.method public static getVPMatrix()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 73
    .local v0, "mVPMatrix":[F
    sget-object v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    sget-object v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mVMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 74
    return-object v0
.end method

.method public static glFrustum(FFFFFF)V
    .locals 8
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    .line 42
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 43
    return-void
.end method

.method public static glOrtho(FFFFFF)V
    .locals 8
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    .line 49
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 50
    return-void
.end method

.method public static glRotatef(FFFF)V
    .locals 6
    .param p0, "angle"    # F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 31
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 32
    return-void
.end method

.method public static glScalef(FFF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 35
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 36
    return-void
.end method

.method public static glTranslatef(FFF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 27
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 28
    return-void
.end method

.method public static gluLookAt(FFFFFFFFF)V
    .locals 11
    .param p0, "cx"    # F
    .param p1, "cy"    # F
    .param p2, "cz"    # F
    .param p3, "tx"    # F
    .param p4, "ty"    # F
    .param p5, "tz"    # F
    .param p6, "upx"    # F
    .param p7, "upy"    # F
    .param p8, "upz"    # F

    .prologue
    .line 61
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mVMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 62
    return-void
.end method

.method public static gluPerspective(FFFF)V
    .locals 6
    .param p0, "fovy"    # F
    .param p1, "aspect"    # F
    .param p2, "near"    # F
    .param p3, "far"    # F

    .prologue
    .line 54
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mPMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 55
    return-void
.end method

.method public static popMatrix()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMatrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sput-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    .line 24
    return-void
.end method

.method public static pushMatrix()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMatrixStack:Ljava/util/Stack;

    sget-object v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public static setInitStack()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    .line 15
    sget-object v0, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 16
    return-void
.end method
