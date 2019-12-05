.class public interface abstract Lcom/android/server/policy/IPolicySmartShowFuncs;
.super Ljava/lang/Object;
.source "IPolicySmartShowFuncs.java"


# static fields
.field public static final WINDOW_TYPE_FLOAT:I = 0x3

.field public static final WINDOW_TYPE_NORMAL:I = 0x0

.field public static final WINDOW_TYPE_SPLIT:I = 0x2

.field public static final WINDOW_TYPE_SPLIT_UNDER_SB:I = 0x1


# virtual methods
.method public abstract canAffectSystemUiLw(Ljava/lang/Object;)Z
.end method

.method public abstract getWindowType(Ljava/lang/Object;)I
.end method

.method public abstract handleGoHome()Z
.end method

.method public abstract initScreenSize(IIIIIII)V
.end method

.method public abstract interceptKeyBeforeDispatchingForSmartShow(Landroid/view/KeyEvent;)Z
.end method

.method public abstract offsetInputMethodWindowLw(Ljava/lang/Object;II)V
.end method

.method public abstract withoutKeyFilter()Z
.end method

.method public abstract withoutMultiWindow()Z
.end method
