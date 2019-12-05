.class final Landroid/app/NubiaThemeHelper$UnitEntry;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NubiaThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitEntry"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field scale:F

.field type:I

.field unit:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "unit"    # I
    .param p4, "scale"    # F

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    .line 369
    iput p2, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    .line 370
    iput p3, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    .line 371
    iput p4, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    .line 372
    return-void
.end method
