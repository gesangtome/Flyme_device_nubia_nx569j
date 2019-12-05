.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private mBgAlpha:F

.field private mBgDim:F

.field private mFactor:F

.field private mFgAlpha:F

.field private mFgDim:F

.field private final mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private final mOffset:[F

.field private mTextureIdBg:I

.field private mTextureIdFg:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    .line 16
    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    .line 17
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 18
    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    .line 19
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    .line 20
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    .line 21
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    .line 22
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    .line 24
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aput v2, v0, v3

    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 27
    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V
    .locals 3
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "factor"    # F
    .param p3, "textureIdFg"    # I
    .param p4, "textureIdBg"    # I
    .param p5, "fgAlpha"    # F
    .param p6, "bgAlpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    .line 47
    iput p4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    .line 48
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 49
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    .line 50
    iput p5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    .line 51
    iput p6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    .line 52
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    .line 53
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    .line 55
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 58
    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;)V
    .locals 5
    .param p1, "page"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    .line 31
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    .line 32
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 33
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    .line 34
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    .line 35
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    .line 36
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    .line 37
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    .line 39
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 40
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 41
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 42
    return-void
.end method


# virtual methods
.method public getBgAlpha()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    return v0
.end method

.method public getBgDim()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    return v0
.end method

.method public getFactor()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    return v0
.end method

.method public getFgAlpha()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    return v0
.end method

.method public getFgDim()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    return v0
.end method

.method public getLineFlip()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    return-object v0
.end method

.method public getOffset()[F
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 73
    .local v0, "offset":[F
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 74
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 75
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 76
    return-object v0
.end method

.method public getTextureIdBg()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    return v0
.end method

.method public getTextureIdFg()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    return v0
.end method

.method public set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V
    .locals 1
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "factor"    # F
    .param p3, "textureIdFg"    # I
    .param p4, "textureIdBg"    # I
    .param p5, "fgAlpha"    # F
    .param p6, "bgAlpha"    # F

    .prologue
    .line 62
    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    .line 63
    iput p4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    .line 64
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    .line 65
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    .line 66
    iput p5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    .line 67
    iput p6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    .line 68
    return-void
.end method

.method public setBgAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 143
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgAlpha:F

    .line 144
    return-void
.end method

.method public setDim(FF)V
    .locals 0
    .param p1, "fgDim"    # F
    .param p2, "bgDim"    # F

    .prologue
    .line 94
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgDim:F

    .line 95
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mBgDim:F

    .line 96
    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 127
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFactor:F

    .line 128
    return-void
.end method

.method public setFgAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 135
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mFgAlpha:F

    .line 136
    return-void
.end method

.method public setLineFlip(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V
    .locals 1
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    .line 120
    return-void
.end method

.method public setOffset(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 81
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 82
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mOffset:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 83
    return-void
.end method

.method public setTextureIdBg(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 111
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdBg:I

    .line 112
    return-void
.end method

.method public setTextureIdFg(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 103
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->mTextureIdFg:I

    .line 104
    return-void
.end method
