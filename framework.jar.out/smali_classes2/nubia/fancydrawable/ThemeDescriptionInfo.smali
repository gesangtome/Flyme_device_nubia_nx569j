.class public Lnubia/fancydrawable/ThemeDescriptionInfo;
.super Ljava/lang/Object;
.source "ThemeDescriptionInfo.java"


# instance fields
.field private mThemeTitle:Ljava/lang/String;

.field private mThemeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/ThemeDescriptionInfo;->mThemeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnubia/fancydrawable/ThemeDescriptionInfo;->mThemeType:Ljava/lang/String;

    return-object v0
.end method

.method public setThemeTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "themeTitle"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lnubia/fancydrawable/ThemeDescriptionInfo;->mThemeTitle:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setThemeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "themeType"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lnubia/fancydrawable/ThemeDescriptionInfo;->mThemeType:Ljava/lang/String;

    .line 12
    return-void
.end method
