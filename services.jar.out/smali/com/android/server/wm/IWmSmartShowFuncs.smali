.class public interface abstract Lcom/android/server/wm/IWmSmartShowFuncs;
.super Ljava/lang/Object;
.source "IWmSmartShowFuncs.java"


# virtual methods
.method public abstract adjustAlphaLw(Lcom/android/server/wm/WindowState;F)F
.end method

.method public abstract adjustAppTransitLw(I)I
.end method

.method public abstract adjustInputWindowLw(Ljava/lang/Object;)V
.end method

.method public abstract adjustLayerLw(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract adjustShownFrameLw(Ljava/lang/Object;Landroid/graphics/Matrix;)V
.end method

.method public abstract adjustTouchableRegion(Landroid/graphics/Region;Ljava/lang/Object;)V
.end method

.method public abstract adjustTransparentRegion(Landroid/graphics/Region;Ljava/lang/Object;)V
.end method

.method public abstract beginComputeFrameLw(Ljava/lang/Object;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract beginLayoutLw(I)V
.end method

.method public abstract canBeFocusedWindowLw(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract canBeImeTargetLw(Ljava/lang/Object;)Z
.end method

.method public abstract createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract displayReady()V
.end method

.method public abstract finishAssignLayersLw()V
.end method

.method public abstract finishComputeFrameLw(Ljava/lang/Object;)V
.end method

.method public abstract finishLayoutLw(I)V
.end method

.method public abstract getConfigurationLocked(Lcom/android/server/wm/WindowState;)Landroid/content/res/Configuration;
.end method

.method public abstract getInputWindowListLw(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getSmartShowAnimationLw(I)Lcom/android/server/wm/ISmartShowInnerAnimation;
.end method

.method public abstract getSurfaceFlags(Ljava/lang/Object;)I
.end method

.method public abstract initWindowManagerService(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract isClipNeeded(Ljava/lang/Object;)Z
.end method

.method public abstract isHiddenRequestedLw(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract moveStackLw(Lcom/android/server/wm/TaskStack;Z)Z
.end method

.method public abstract needAdjustShownFrameLw(Ljava/lang/Object;)Z
.end method

.method public abstract onFocusedWindowChangedLw(ILjava/lang/Object;)V
.end method

.method public abstract onRotationChangedLw(I)V
.end method

.method public abstract onStackAttachedLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V
.end method

.method public abstract onStackDetachedLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V
.end method

.method public abstract onStackMovedLw(Lcom/android/server/wm/TaskStack;Z)V
.end method

.method public abstract setDisplayCrop(Lcom/android/server/wm/WindowStateAnimator;Z)V
.end method

.method public abstract setFocusedStackFrameLw()Z
.end method

.method public abstract setFocusedStackLayerLw()Z
.end method

.method public abstract setInputWindowsLw(Ljava/lang/Object;)V
.end method

.method public abstract shouldIgnoreAppTokenOrientationLocked(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract shouldIgnoreWindowOrientationLocked(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract shouldUpdateStatusBarColor(ILjava/lang/String;)[I
.end method

.method public abstract shouldUpdateWindowFocus(Lcom/android/server/wm/WindowState;Z)Z
.end method

.method public abstract stackBoxStatusChangedLw(II)V
.end method

.method public abstract withoutMultiWindow()Z
.end method

.method public abstract withoutSmartConfiguration()Z
.end method

.method public abstract withoutSmartData()Z
.end method
