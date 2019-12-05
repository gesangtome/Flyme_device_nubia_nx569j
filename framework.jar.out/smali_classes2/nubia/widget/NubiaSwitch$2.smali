.class final Lnubia/widget/NubiaSwitch$2;
.super Landroid/util/FloatProperty;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lnubia/widget/NubiaSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1246
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lnubia/widget/NubiaSwitch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lnubia/widget/NubiaSwitch;

    .prologue
    .line 1249
    # getter for: Lnubia/widget/NubiaSwitch;->mThumbPosition:F
    invoke-static {p1}, Lnubia/widget/NubiaSwitch;->access$100(Lnubia/widget/NubiaSwitch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1246
    check-cast p1, Lnubia/widget/NubiaSwitch;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaSwitch$2;->get(Lnubia/widget/NubiaSwitch;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 1246
    check-cast p1, Lnubia/widget/NubiaSwitch;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lnubia/widget/NubiaSwitch$2;->setValue(Lnubia/widget/NubiaSwitch;F)V

    return-void
.end method

.method public setValue(Lnubia/widget/NubiaSwitch;F)V
    .locals 0
    .param p1, "object"    # Lnubia/widget/NubiaSwitch;
    .param p2, "value"    # F

    .prologue
    .line 1254
    # invokes: Lnubia/widget/NubiaSwitch;->setThumbPosition(F)V
    invoke-static {p1, p2}, Lnubia/widget/NubiaSwitch;->access$200(Lnubia/widget/NubiaSwitch;F)V

    .line 1255
    return-void
.end method
