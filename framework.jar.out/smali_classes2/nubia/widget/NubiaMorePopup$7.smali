.class Lnubia/widget/NubiaMorePopup$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$7;->this$0:Lnubia/widget/NubiaMorePopup;

    iput-object p2, p0, Lnubia/widget/NubiaMorePopup$7;->val$popup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 530
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$7;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 531
    return-void
.end method
