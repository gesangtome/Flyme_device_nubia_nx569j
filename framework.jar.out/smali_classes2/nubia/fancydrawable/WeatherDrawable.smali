.class public Lnubia/fancydrawable/WeatherDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "WeatherDrawable.java"


# instance fields
.field private final DEFAULT_TEMP:Ljava/lang/String;

.field private final FIRST_TEMP:Ljava/lang/String;

.field private final NULL_VALUE:Ljava/lang/String;

.field private final WEATHER_CLOUD:I

.field private final WEATHER_FOGGY:I

.field private final WEATHER_OVERCAST:I

.field private final WEATHER_RAIN:I

.field private final WEATHER_SAND:I

.field private final WEATHER_SNOW:I

.field private final WEATHER_SUNNY:I

.field private final WEATHER_URI:Landroid/net/Uri;

.field private mClassification:I

.field private mCurrentCity:Ljava/lang/String;

.field private mTemp:Ljava/lang/String;

.field private mWeatherBgHeight:I

.field private mWeatherBgWidth:I

.field private mWeatherBitmap:Landroid/graphics/Bitmap;

.field private mWeatherCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lnubia/fancydrawable/WeatherDrawable;->initBitmapDrawable()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/fancydrawable/FancyDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_SUNNY:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_CLOUD:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_OVERCAST:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_RAIN:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_SNOW:I

    .line 37
    const/4 v0, 0x6

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_SAND:I

    .line 38
    const/4 v0, 0x7

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_FOGGY:I

    .line 40
    const-string v0, "0"

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->FIRST_TEMP:Ljava/lang/String;

    .line 41
    const-string v0, "N/A"

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->DEFAULT_TEMP:Ljava/lang/String;

    .line 42
    const-string v0, "--"

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->NULL_VALUE:Ljava/lang/String;

    .line 43
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/WeatherForecast"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_URI:Landroid/net/Uri;

    .line 49
    invoke-direct {p0}, Lnubia/fancydrawable/WeatherDrawable;->getWeatherbyProvider()V

    .line 51
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherCode:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lnubia/fancydrawable/WeatherDrawable;->getWeatherInfo(I)I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mClassification:I

    .line 54
    :cond_0
    iget v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mClassification:I

    invoke-static {v0}, Lnubia/fancydrawable/WeatherDrawable;->getBitmapByWeather(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    .line 56
    iget-object v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    .line 57
    iget v0, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    iget v1, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgHeight:I

    invoke-virtual {p0, v0, v1}, Lnubia/fancydrawable/WeatherDrawable;->setIntrinsicSize(II)V

    .line 58
    return-void
.end method

.method private drawTempText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "tempValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, p3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 154
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v5, v6

    .line 155
    .local v3, "textWidth":I
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v5, v6

    .line 156
    .local v2, "textHeight":I
    iget v5, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBgWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    .line 157
    .local v1, "left":I
    if-lez v1, :cond_0

    .line 158
    :goto_0
    int-to-float v4, v1

    add-int/lit8 v5, v2, 0x18

    int-to-float v5, v5

    invoke-virtual {p1, p3, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    const/high16 v4, 0x424c0000    # 51.0f

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    const-string v4, "\u00b0"

    add-int v5, v1, v3

    add-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    add-int/lit8 v6, v2, 0x6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    return-void

    :cond_0
    move v1, v4

    .line 157
    goto :goto_0
.end method

.method private static getBitmapByWeather(I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "classification"    # I

    .prologue
    const v9, 0x302003e

    .line 84
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    .local v4, "systemResources":Landroid/content/res/Resources;
    const/4 v7, 0x1

    if-lt p0, v7, :cond_0

    const/4 v7, 0x7

    if-le p0, v7, :cond_1

    .line 86
    :cond_0
    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "weatherBitmap":Landroid/graphics/Bitmap;
    move-object v6, v5

    .line 101
    .end local v5    # "weatherBitmap":Landroid/graphics/Bitmap;
    .local v6, "weatherBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 91
    .end local v6    # "weatherBitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fancydrawable_weather_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "bitmapName":Ljava/lang/String;
    const-class v1, Lcn/nubia/internal/R$drawable;

    .line 94
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 95
    .local v3, "id":I
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v3    # "id":I
    .restart local v5    # "weatherBitmap":Landroid/graphics/Bitmap;
    :goto_1
    move-object v6, v5

    .line 101
    .end local v5    # "weatherBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "weatherBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 96
    .end local v6    # "weatherBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "weatherBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private getWeatherInfo(I)I
    .locals 5
    .param p1, "code"    # I

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x14

    const/16 v2, 0x12

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 105
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-ne p1, v0, :cond_2

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    if-ne p1, v1, :cond_3

    .line 112
    const/4 v0, 0x3

    goto :goto_0

    .line 114
    :cond_3
    if-le p1, v1, :cond_4

    const/16 v1, 0xd

    if-lt p1, v1, :cond_5

    :cond_4
    const/16 v1, 0x13

    if-eq p1, v1, :cond_5

    if-le p1, v3, :cond_6

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_6

    .line 115
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 117
    :cond_6
    const/16 v1, 0xc

    if-le p1, v1, :cond_7

    if-lt p1, v2, :cond_9

    :cond_7
    const/16 v1, 0x19

    if-le p1, v1, :cond_8

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_9

    :cond_8
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a

    .line 118
    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    .line 120
    :cond_a
    if-eq p1, v3, :cond_c

    const/16 v1, 0x1c

    if-le p1, v1, :cond_b

    if-lt p1, v4, :cond_c

    :cond_b
    const/16 v1, 0x34

    if-le p1, v1, :cond_d

    const/16 v1, 0x39

    if-ge p1, v1, :cond_d

    .line 121
    :cond_c
    const/4 v0, 0x6

    goto :goto_0

    .line 123
    :cond_d
    if-eq p1, v2, :cond_e

    if-eq p1, v4, :cond_e

    const/16 v1, 0x31

    if-eq p1, v1, :cond_e

    const/16 v1, 0x39

    if-eq p1, v1, :cond_e

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_0

    .line 124
    :cond_e
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private getWeatherbyProvider()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lnubia/fancydrawable/WeatherDrawable;->WEATHER_URI:Landroid/net/Uri;

    const-string v4, "getCurrentWeather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 72
    const-string v2, "temp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mTemp:Ljava/lang/String;

    .line 73
    const-string v2, "city"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mCurrentCity:Ljava/lang/String;

    .line 74
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static initBitmapDrawable()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x302003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 63
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 132
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    const/high16 v3, 0x42960000    # 75.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/nubia_bold_fancyable.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 140
    iget-object v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mTemp:Ljava/lang/String;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    iget-object v3, p0, Lnubia/fancydrawable/WeatherDrawable;->mTemp:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lnubia/fancydrawable/WeatherDrawable;->drawTempText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const v1, 0x3020045

    .line 145
    .local v1, "id":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, "defaultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public pageChange()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public pauseRun()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public startToRun()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public timeChange()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method
