.class public Landroid/content/res/NubiaClassFactory;
.super Ljava/lang/Object;
.source "NubiaClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0}, Landroid/content/res/NubiaResources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 18
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 24
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    return-object v0
.end method
