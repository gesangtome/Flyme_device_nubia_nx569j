.class Lnubia/widget/NubiaSwitch$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaSwitch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaSwitch;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaSwitch;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lnubia/widget/NubiaSwitch$1;->this$0:Lnubia/widget/NubiaSwitch;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 854
    iget-object v0, p0, Lnubia/widget/NubiaSwitch$1;->this$0:Lnubia/widget/NubiaSwitch;

    iget-object v1, p0, Lnubia/widget/NubiaSwitch$1;->this$0:Lnubia/widget/NubiaSwitch;

    # getter for: Lnubia/widget/NubiaSwitch;->mInitThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lnubia/widget/NubiaSwitch;->access$000(Lnubia/widget/NubiaSwitch;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 855
    return-void
.end method
