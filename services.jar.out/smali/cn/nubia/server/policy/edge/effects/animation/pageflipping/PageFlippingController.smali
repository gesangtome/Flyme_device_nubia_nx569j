.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;


# static fields
.field public static final LEFT_BUTTOM_TO_UP:I = 0x1

.field public static final LEFT_UP_TO_BUTTOM:I = 0x0

.field public static final MAX_LOOP_PAGE_NUM:I = 0x7

.field public static final RIGHT_BUTTOM_TO_UP:I = 0x3

.field public static final RIGHT_UP_TO_BUTTOM:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PageFlippingController"


# instance fields
.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field private final mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

.field private final mContext:Landroid/content/Context;

.field private mFactorPageStart:F

.field private final mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

.field private mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

.field private mGuideAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

.field private mGuideCancelAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

.field private mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

.field private mIsEnterPreAnim:Z

.field private mIsGuideCancelAnimFinished:Z

.field private mIsGuidePageUpLoadTextures:Z

.field private mIsLoopPageUpLoadTextures:Z

.field private mIsSinglePageUpLoadTextures:Z

.field private mIsSurfaceCreated:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

.field private mPageFlippingView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

.field private mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

.field private mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 61
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    .line 62
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    .line 63
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    .line 64
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    .line 65
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    .line 66
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->initWindowParams()V

    .line 67
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setGuideCancelAnimationCallback()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->reset()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;IFFLjava/util/List;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # F

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingPreAnimEx(IFFLjava/util/List;F)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingSuccAnimEx(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;IFFLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingLoopAnimEx(IFFLjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->initGLSurfaceView()V

    return-void
.end method

.method static synthetic access$702(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelAllAnimation()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->cancelAnimation()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->cancelAnimation()V

    .line 288
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->cancelAnimation()V

    .line 291
    :cond_2
    return-void
.end method

.method private destroyTextures()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->destroy()V

    .line 277
    return-void
.end method

.method private getDownY(FF)F
    .locals 1
    .param p1, "deltaY"    # F
    .param p2, "currY"    # F

    .prologue
    .line 294
    sub-float v0, p2, p1

    return v0
.end method

.method private initGLSurfaceView()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 143
    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    .line 144
    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 145
    .local v8, "thisWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .line 146
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setRender(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 150
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSize(II)V

    .line 151
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSurfaceListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v9}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 156
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 157
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 158
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 159
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v9}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    .line 161
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setWindowType(I)V

    .line 163
    return-void
.end method

.method private initWindowParams()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 73
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x538

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FitGestureAnimWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->reset()V

    .line 229
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    .line 230
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    .line 231
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    .line 232
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuidePageUpLoadTextures:Z

    .line 233
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSinglePageUpLoadTextures:Z

    .line 234
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsLoopPageUpLoadTextures:Z

    .line 235
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    .line 236
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 237
    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .line 238
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->setAnimState(I)V

    .line 239
    return-void
.end method

.method private setGuideCancelAnimationCallback()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideCancelAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    .line 140
    return-void
.end method

.method private startPageFlippingFailAnimEx()V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 511
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforeFailAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 513
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->startFailAnim(FF)V

    .line 514
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0
.end method

.method private startPageFlippingLoopAnimEx(IFFLjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    .line 555
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->initBeforeLoopAnim(IFFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 557
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->startLoopAnim(F)V

    .line 558
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadLoopPageFlippingTextures()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0
.end method

.method private startPageFlippingPreAnimEx(IFFLjava/util/List;F)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .param p5, "startFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "PageFlippingController"

    const-string v1, "startPageFlippingPreAnimEx"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 413
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforePreAnim(IFFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    .line 416
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    cmpg-float v0, v0, p5

    if-gez v0, :cond_1

    .line 417
    iput p5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    .line 420
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 421
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    invoke-virtual {v0, p5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->startPreAnim(FF)V

    .line 422
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0
.end method

.method private startPageFlippingSuccAnimEx(ILjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 483
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforeSuccAnim(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 485
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->startSuccAnim(FF)V

    .line 486
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0
.end method

.method private toUserCoordinateY(F)F
    .locals 5
    .param p1, "deviceY"    # F

    .prologue
    .line 298
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v1

    .line 299
    .local v1, "rotation":I
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 300
    .local v0, "height":F
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 301
    .local v3, "width":F
    const/4 v2, 0x0

    .line 303
    .local v2, "userY":F
    packed-switch v1, :pswitch_data_0

    .line 321
    :goto_0
    return v2

    .line 305
    :pswitch_0
    move v2, p1

    .line 306
    goto :goto_0

    .line 309
    :pswitch_1
    move v2, p1

    .line 310
    goto :goto_0

    .line 313
    :pswitch_2
    sub-float v2, v0, p1

    .line 314
    goto :goto_0

    .line 317
    :pswitch_3
    sub-float v2, v3, p1

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private uploadGuidePageFlippingTextures()V
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuidePageUpLoadTextures:Z

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuidePageUpLoadTextures:Z

    .line 589
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V

    goto :goto_0
.end method

.method private uploadLoopPageFlippingTextures()V
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsLoopPageUpLoadTextures:Z

    if-eqz v0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsLoopPageUpLoadTextures:Z

    .line 607
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V

    goto :goto_0
.end method

.method private uploadPageFlippingTextures()V
    .locals 10

    .prologue
    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v0, "delHashcodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v1, "delTextures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v7, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getNeedDelTextures(Ljava/util/List;Ljava/util/List;)V

    .line 617
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 619
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 620
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    invoke-direct {v9, p0, v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 645
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v4, "uploadBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v5, "uploadHashcodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v6, "uploadTextures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v7, v5, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getNeedUploadTextures(Ljava/util/List;Ljava/util/List;)V

    .line 649
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 651
    if-lez v3, :cond_3

    .line 652
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 653
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x2

    invoke-virtual {v8, v7, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setStatus(II)V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_1
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    invoke-direct {v9, p0, v6, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 703
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 699
    :cond_3
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    if-eqz v7, :cond_2

    .line 700
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    invoke-virtual {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->notifyGpuPreparedAppTexData()V

    goto :goto_1
.end method

.method private uploadSinglePageFlippingTextures()V
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSinglePageUpLoadTextures:Z

    if-eqz v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSinglePageUpLoadTextures:Z

    .line 598
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V

    goto :goto_0
.end method


# virtual methods
.method public addFitWindow()V
    .locals 4

    .prologue
    .line 242
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFitWindow mIsFitWindowAdded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mIsSurfaceCreated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 247
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFitWindowAdded(Z)V

    .line 255
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsSurfaceCreated:Z

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "PageFlippingController"

    const-string v2, "addFitWindow mFitWindowCallback.onSurfaceCreated()"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    invoke-interface {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;->onSurfaceCreated()V

    goto :goto_0
.end method

.method public onDrawFirstFrame()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$4;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public removeFitWindow()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "PageFlippingController"

    const-string v1, "removeFitWindow"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 260
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->destroyTextures()V

    .line 262
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$5;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V
    .locals 1
    .param p1, "animSync"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 176
    return-void
.end method

.method public setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    .prologue
    .line 179
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitWindowCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    .line 180
    return-void
.end method

.method public setGuideAnimCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    .prologue
    .line 183
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    .line 184
    return-void
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 188
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 189
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public setSystemGestureService(Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V
    .locals 0
    .param p1, "service"    # Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .prologue
    .line 171
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .line 172
    return-void
.end method

.method public setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 1
    .param p1, "management"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 167
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V

    .line 168
    return-void
.end method

.method public startPageFlippingDoubleAnim()V
    .locals 2

    .prologue
    .line 579
    const-string v0, "PageFlippingController"

    const-string v1, "startPageFlippingDoubleAnim"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 581
    return-void
.end method

.method public startPageFlippingFailAnim()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 493
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPageFlippingFailAnim mDirect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getDirect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mHashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 498
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 500
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingFailAnimEx()V

    goto :goto_0
.end method

.method public startPageFlippingGuideCancelAnim()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 356
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPageFlippingGuideCancelAnim mDirect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getDirect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mHashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 361
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 363
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0
.end method

.method public startPageFlippingGuideStartAnim(IFLjava/util/List;)V
    .locals 3
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p3, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPageFlippingGuideStartAnim direct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; downY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; hashcodeList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 331
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    .line 333
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuideCancelAnimCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->setCancelAnimationCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$CancelAnimationCallback;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->initStartAnim(IFLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->cancelAllAnimation()V

    .line 338
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startStartAnim()V

    .line 339
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadGuidePageFlippingTextures()V

    .line 341
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;I)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    goto :goto_0
.end method

.method public startPageFlippingInnerAnim()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 565
    const-string v0, "PageFlippingController"

    const-string v1, "startPageFlippingInnerAnim"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 568
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 570
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnimInner()V

    .line 571
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 574
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startPageFlippingLoopAnim(IFFLjava/util/List;)V
    .locals 6
    .param p1, "direct"    # I
    .param p2, "deltaY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x7

    .line 522
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPageFlippingLoopAnim direct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; deltaY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; currY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mHashcodeList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mFactor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v2, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 529
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDownY(FF)F

    move-result v0

    .line 530
    .local v0, "downY":F
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result v0

    .line 531
    invoke-direct {p0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result p3

    .line 533
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    if-nez v2, :cond_0

    .line 534
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v5, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 535
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p1, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 536
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v0, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDownY:F

    .line 537
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p3, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mCurrY:F

    .line 538
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput-object p4, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 540
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getCurrFactor()F

    move-result v1

    .line 541
    .local v1, "factor":F
    const/16 v2, 0x32

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByAnimationTime(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 542
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    move-result v1

    .line 543
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v1, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 547
    .end local v1    # "factor":F
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingLoopAnimEx(IFFLjava/util/List;)V

    goto :goto_0
.end method

.method public startPageFlippingPreAnim(IFFLjava/util/List;)V
    .locals 7
    .param p1, "direct"    # I
    .param p2, "deltaY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    .line 371
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsEnterPreAnim:Z

    .line 377
    const-string v0, "PageFlippingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPageFlippingPreAnim direct = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; deltaY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; currY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; hashcodeList = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 383
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDownY(FF)F

    move-result v2

    .line 384
    .local v2, "downY":F
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result v2

    .line 385
    invoke-direct {p0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result p3

    .line 387
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    .line 391
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v6

    .line 393
    .local v6, "factor":F
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 394
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 395
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDownY:F

    .line 396
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mCurrY:F

    .line 397
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput-object p4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 398
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    move-result v6

    .line 399
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    goto :goto_0

    .line 401
    .end local v6    # "factor":F
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingPreAnimEx(IFFLjava/util/List;F)V

    goto/16 :goto_0
.end method

.method public startPageFlippingSuccAnim(ILjava/util/List;)V
    .locals 5
    .param p1, "direct"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x5

    .line 459
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPageFlippingSuccAnim direct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; hashcodeList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mFactor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactor()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    invoke-virtual {v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 464
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mIsGuideCancelAnimFinished:Z

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v4, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFitAnimState:I

    .line 466
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput p1, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mDirect:I

    .line 467
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput-object p2, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mHashcodeList:Ljava/util/List;

    .line 469
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->getCurrFactor()F

    move-result v0

    .line 470
    .local v0, "factor":F
    const/16 v1, 0x32

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByAnimationTime(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 471
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->startCancelAnim()F

    move-result v0

    .line 472
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFitAnimStateParm:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitAnimStateParm;->mFactor:F

    .line 476
    .end local v0    # "factor":F
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingSuccAnimEx(ILjava/util/List;)V

    goto :goto_0
.end method

.method public updatePageFlippingAnim(IFFLjava/util/List;)V
    .locals 4
    .param p1, "direct"    # I
    .param p2, "deltaY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimStateChecker:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->validate(I)V

    .line 438
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mGuidePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->isCancelAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    const-string v1, "PageFlippingController"

    const-string v2, "updatePageFlippingAnim return"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    if-nez v1, :cond_2

    .line 445
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 448
    :cond_2
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->getDownY(FF)F

    move-result v0

    .line 449
    .local v0, "downY":F
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result v0

    .line 450
    invoke-direct {p0, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->toUserCoordinateY(F)F

    move-result p3

    .line 452
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->initBeforeUpdateAnim(IFFLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadSinglePageFlippingTextures()V

    .line 454
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mSinglePageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mFactorPageStart:F

    invoke-virtual {v1, v0, p3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->updateAnim(FFF)V

    goto :goto_0
.end method
