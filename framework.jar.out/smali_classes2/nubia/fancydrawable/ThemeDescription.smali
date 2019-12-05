.class public Lnubia/fancydrawable/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# instance fields
.field private final DEFAULT_THEME_ENG_NAME:Ljava/lang/String;

.field private final DEFAULT_THEME_TYPE:Ljava/lang/String;

.field private final THEME_DESC_FILE:Ljava/lang/String;

.field private final THEME_TITLE:Ljava/lang/String;

.field private final THEME_TYPE:Ljava/lang/String;

.field private mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "themeType"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->THEME_TYPE:Ljava/lang/String;

    .line 13
    const-string v0, "title"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->THEME_TITLE:Ljava/lang/String;

    .line 14
    const-string v0, "default"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->DEFAULT_THEME_TYPE:Ljava/lang/String;

    .line 15
    const-string v0, "nubia theme"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->DEFAULT_THEME_ENG_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "data/system/theme/current/description.xml"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->THEME_DESC_FILE:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    return-void
.end method

.method private getThemeTypeInfo()Lnubia/fancydrawable/ThemeDescriptionInfo;
    .locals 4

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "data/system/theme/current/description.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lnubia/fancydrawable/ThemeDescription;->parseXML(Ljava/io/InputStream;)Lnubia/fancydrawable/ThemeDescriptionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 73
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v3, 0x0

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public isDefaultTheme()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-direct {p0}, Lnubia/fancydrawable/ThemeDescription;->getThemeTypeInfo()Lnubia/fancydrawable/ThemeDescriptionInfo;

    move-result-object v1

    .line 49
    .local v1, "themeInfo":Lnubia/fancydrawable/ThemeDescriptionInfo;
    invoke-virtual {v1}, Lnubia/fancydrawable/ThemeDescriptionInfo;->getThemeType()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "themeType":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v4

    .line 53
    :cond_1
    invoke-virtual {v1}, Lnubia/fancydrawable/ThemeDescriptionInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "themeTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 55
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30c0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "defaultThemeCnName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "nubia theme"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    .end local v0    # "defaultThemeCnName":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public parseXML(Ljava/io/InputStream;)Lnubia/fancydrawable/ThemeDescriptionInfo;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 22
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "UTF-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 24
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 25
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 42
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 28
    :pswitch_1
    new-instance v2, Lnubia/fancydrawable/ThemeDescriptionInfo;

    invoke-direct {v2}, Lnubia/fancydrawable/ThemeDescriptionInfo;-><init>()V

    iput-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    goto :goto_1

    .line 31
    :pswitch_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "themeType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 33
    iget-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnubia/fancydrawable/ThemeDescriptionInfo;->setThemeType(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 36
    iget-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnubia/fancydrawable/ThemeDescriptionInfo;->setThemeTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_2
    iget-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    return-object v2

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
