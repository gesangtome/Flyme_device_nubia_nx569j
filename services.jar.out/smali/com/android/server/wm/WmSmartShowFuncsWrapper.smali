.class public Lcom/android/server/wm/WmSmartShowFuncsWrapper;
.super Ljava/lang/Object;
.source "WmSmartShowFuncsWrapper.java"

# interfaces
.implements Lcom/android/server/wm/IWmSmartShowFuncs;


# instance fields
.field final mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field public mWithoutMultiWindow:Z

.field public mWithoutSmartConfiguration:Z

.field public mWithoutSmartData:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/IWmSmartShowFuncs;)V
    .locals 1
    .param p1, "funcs"    # Lcom/android/server/wm/IWmSmartShowFuncs;

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mWithoutSmartConfiguration:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mWithoutSmartData:Z

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    .line 48
    return-void
.end method


# virtual methods
.method public adjustAlphaLw(Lcom/android/server/wm/WindowState;F)F
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "alpha"    # F

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/high16 v0, 0x3f800000    # 1.0f

    .line 279
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustAlphaLw(Lcom/android/server/wm/WindowState;F)F

    move-result v0

    goto :goto_0
.end method

.method public adjustAppTransitLw(I)I
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    .end local p1    # "transit":I
    :goto_0
    return p1

    .restart local p1    # "transit":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustAppTransitLw(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustInputWindowLw(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustInputWindowLw(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method public adjustLayerLw(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustLayerLw(Lcom/android/server/wm/WindowState;)V

    .line 220
    :cond_0
    return-void
.end method

.method public adjustShownFrameLw(Ljava/lang/Object;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustShownFrameLw(Ljava/lang/Object;Landroid/graphics/Matrix;)V

    .line 73
    :cond_0
    return-void
.end method

.method public adjustTouchableRegion(Landroid/graphics/Region;Ljava/lang/Object;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustTouchableRegion(Landroid/graphics/Region;Ljava/lang/Object;)V

    .line 295
    :cond_0
    return-void
.end method

.method public adjustTransparentRegion(Landroid/graphics/Region;Ljava/lang/Object;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->adjustTransparentRegion(Landroid/graphics/Region;Ljava/lang/Object;)V

    .line 240
    :cond_0
    return-void
.end method

.method public beginComputeFrameLw(Ljava/lang/Object;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;
    .param p8, "sf"    # Landroid/graphics/Rect;
    .param p9, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/server/wm/IWmSmartShowFuncs;->beginComputeFrameLw(Ljava/lang/Object;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public beginLayoutLw(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->beginLayoutLw(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public canBeFocusedWindowLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->canBeFocusedWindowLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_0
.end method

.method public canBeImeTargetLw(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->canBeImeTargetLw(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutSmartData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public displayReady()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->displayReady()V

    .line 174
    return-void
.end method

.method public finishAssignLayersLw()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->finishAssignLayersLw()V

    .line 200
    :cond_0
    return-void
.end method

.method public finishComputeFrameLw(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->finishComputeFrameLw(Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public finishLayoutLw(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->finishLayoutLw(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public getConfigurationLocked(Lcom/android/server/wm/WindowState;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutSmartConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->getConfigurationLocked(Lcom/android/server/wm/WindowState;)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputWindowListLw(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    .end local p2    # "data":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "data":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->getInputWindowListLw(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public getSmartShowAnimationLw(I)Lcom/android/server/wm/ISmartShowInnerAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->getSmartShowAnimationLw(I)Lcom/android/server/wm/ISmartShowInnerAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->getSurfaceFlags(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public initWindowManagerService(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->initWindowManagerService(Lcom/android/server/wm/WindowManagerService;)V

    .line 53
    return-void
.end method

.method public isClipNeeded(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->isClipNeeded(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isHiddenRequestedLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->isHiddenRequestedLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_0
.end method

.method public moveStackLw(Lcom/android/server/wm/TaskStack;Z)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "top"    # Z

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->moveStackLw(Lcom/android/server/wm/TaskStack;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public needAdjustShownFrameLw(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->needAdjustShownFrameLw(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onFocusedWindowChangedLw(ILjava/lang/Object;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "newFocus"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->onFocusedWindowChangedLw(ILjava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onRotationChangedLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->onRotationChangedLw(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public onStackAttachedLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "content"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutSmartData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->onStackAttachedLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onStackDetachedLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "content"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutSmartData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->onStackDetachedLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onStackMovedLw(Lcom/android/server/wm/TaskStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->onStackMovedLw(Lcom/android/server/wm/TaskStack;Z)V

    .line 301
    :cond_0
    return-void
.end method

.method public setDisplayCrop(Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 1
    .param p1, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "recoveringMemory"    # Z

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->setDisplayCrop(Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public setFocusedStackFrameLw()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->setFocusedStackFrameLw()Z

    move-result v0

    goto :goto_0
.end method

.method public setFocusedStackLayerLw()Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->setFocusedStackLayerLw()Z

    move-result v0

    goto :goto_0
.end method

.method public setInputWindowsLw(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->setInputWindowsLw(Ljava/lang/Object;)V

    .line 234
    :cond_0
    return-void
.end method

.method public shouldIgnoreAppTokenOrientationLocked(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->shouldIgnoreAppTokenOrientationLocked(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldIgnoreWindowOrientationLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWmSmartShowFuncs;->shouldIgnoreWindowOrientationLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldUpdateStatusBarColor(ILjava/lang/String;)[I
    .locals 1
    .param p1, "color"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->shouldUpdateStatusBarColor(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public shouldUpdateWindowFocus(Lcom/android/server/wm/WindowState;Z)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "focused"    # Z

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->shouldUpdateWindowFocus(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public stackBoxStatusChangedLw(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "stackBoxId"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->withoutMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->stackBoxStatusChangedLw(II)V

    .line 246
    :cond_0
    return-void
.end method

.method public withoutMultiWindow()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mWithoutMultiWindow:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->withoutMultiWindow()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutSmartConfiguration()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mWithoutSmartConfiguration:Z

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->withoutSmartConfiguration()Z

    move-result v0

    goto :goto_0
.end method

.method public withoutSmartData()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mWithoutSmartData:Z

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmSmartShowFuncsWrapper;->mImpl:Lcom/android/server/wm/IWmSmartShowFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/IWmSmartShowFuncs;->withoutSmartData()Z

    move-result v0

    goto :goto_0
.end method
