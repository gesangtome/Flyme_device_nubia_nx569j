.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Family;,
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Font;,
        Landroid/graphics/FontListParser$Config;
    }
.end annotation


# static fields
.field private static final CUSTOM_FONT_PREFIX:Ljava/lang/String;

.field private static final DEFAULT_FONT_NAME_N:Ljava/lang/String; = "Roboto-Regular.ttf"

.field private static final NUBIA_COMMON_UI_TITLE_FONT_NAME_N:Ljava/lang/String; = "NubiaFont-Medium.otf"

.field private static final NUBIA_FONT_PATH_PREFIX:Ljava/lang/String; = "/data/system/theme/current/fonts/"

.field private static defaultFontHasBeenRedirect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/graphics/FontListParser;->getCustomFontPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static getCustomFontPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 230
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 231
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v6

    .line 235
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 236
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "tmpName":Ljava/lang/String;
    const-string v7, ".ttc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ".otf"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ".ttf"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 238
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 235
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static getCustomFontPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "/data/system/theme/current/fonts/"

    return-object v0
.end method

.method private static getDefaultFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "Roboto-Regular.ttf"

    return-object v0
.end method

.method private static getNubiaCommonUiFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "NubiaFont-Medium.otf"

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 92
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 94
    invoke-static {v0}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 170
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 171
    const-string/jumbo v2, "to"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 172
    const-string/jumbo v2, "weight"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 174
    const/16 v2, 0x190

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    .line 178
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 179
    return-object v0

    .line 176
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    goto :goto_0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 102
    new-instance v0, Landroid/graphics/FontListParser$Config;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    .line 103
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const/4 v6, 0x0

    const-string v7, "familyset"

    invoke-interface {p0, v9, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    .line 105
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 106
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "family"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;

    move-result-object v4

    .line 112
    .local v4, "tempFamily":Landroid/graphics/FontListParser$Family;
    sget-boolean v6, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    if-eqz v6, :cond_3

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "customFontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    iget-object v6, v4, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Font;

    .line 115
    .local v2, "f":Landroid/graphics/FontListParser$Font;
    iget-object v6, v2, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    sget-object v7, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v2    # "f":Landroid/graphics/FontListParser$Font;
    :cond_2
    const/4 v6, 0x0

    sput-boolean v6, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    .line 120
    new-instance v5, Landroid/graphics/FontListParser$Family;

    iget-object v6, v4, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v8, v4, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v7, v8}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "tempFamily":Landroid/graphics/FontListParser$Family;
    .local v5, "tempFamily":Landroid/graphics/FontListParser$Family;
    move-object v4, v5

    .line 123
    .end local v1    # "customFontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "tempFamily":Landroid/graphics/FontListParser$Family;
    .restart local v4    # "tempFamily":Landroid/graphics/FontListParser$Family;
    :cond_3
    iget-object v6, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v4    # "tempFamily":Landroid/graphics/FontListParser$Family;
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "alias"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 126
    iget-object v6, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_5
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 131
    :cond_6
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;
    .locals 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 136
    const-string/jumbo v11, "name"

    invoke-interface {p0, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v11, "lang"

    invoke-interface {p0, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "lang":Ljava/lang/String;
    const-string/jumbo v11, "variant"

    invoke-interface {p0, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "variant":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_3

    .line 141
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 142
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "tag":Ljava/lang/String;
    const-string v11, "font"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 144
    const-string/jumbo v11, "weight"

    invoke-interface {p0, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, "weightStr":Ljava/lang/String;
    if-nez v10, :cond_1

    const/16 v9, 0x190

    .line 146
    .local v9, "weight":I
    :goto_1
    const-string/jumbo v11, "italic"

    const-string/jumbo v12, "style"

    invoke-interface {p0, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 147
    .local v4, "isItalic":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "filename":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "fullFilename":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v3}, Landroid/graphics/FontListParser;->redirectFontOfTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    :goto_2
    new-instance v11, Landroid/graphics/FontListParser$Font;

    invoke-direct {v11, v3, v9, v4}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "fullFilename":Ljava/lang/String;
    .end local v4    # "isItalic":Z
    .end local v9    # "weight":I
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 154
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "fullFilename":Ljava/lang/String;
    .restart local v4    # "isItalic":Z
    .restart local v9    # "weight":I
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "fullFilename":Ljava/lang/String;
    .end local v4    # "isItalic":Z
    .end local v9    # "weight":I
    .end local v10    # "weightStr":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 164
    .end local v7    # "tag":Ljava/lang/String;
    :cond_3
    new-instance v11, Landroid/graphics/FontListParser$Family;

    invoke-direct {v11, v6, v2, v5, v8}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method private static redirectFontOfTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "fullFilename"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Landroid/graphics/FontListParser;->getDefaultFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/graphics/FontListParser;->getNubiaCommonUiFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    .end local p1    # "fullFilename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 216
    .restart local p1    # "fullFilename":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "fontFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {}, Landroid/graphics/FontListParser;->getCustomFontPath()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "customFontPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    const/4 v2, 0x1

    sput-boolean v2, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    move-object p1, v0

    .line 224
    goto :goto_0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x1

    .line 184
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 185
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_0

    .line 190
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
