.class public Lnubia/fancydrawable/DateDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "DateDrawable.java"


# static fields
.field private static final ANIMATION_LAST_TIME:J = 0x3e8L

.field private static final REFRESH_TIME_GAP:I = 0x2710


# instance fields
.field private final CALENDAR_URI:Landroid/net/Uri;

.field private final DEFAULT_FESTIVAL:Ljava/lang/String;

.field backsrc:Landroid/graphics/Bitmap;

.field bstarted:Z

.field private daybitmapH:I

.field private daybitmapW:I

.field isTurnPage:Z

.field private mCalendarCurrBitmap:Landroid/graphics/Bitmap;

.field private mCalendarDstBitmap:Landroid/graphics/Bitmap;

.field private mCalendarLastBitmap:Landroid/graphics/Bitmap;

.field private mCalendarSrcBitmap:Landroid/graphics/Bitmap;

.field private mChanged:Z

.field private mCurrTime:J

.field private mCurrentFestival:I

.field mDstDay:I

.field private mFestivalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultTheme:Z

.field private mPaused:Z

.field mShowDay:I

.field private mStartTime:J

.field private mdrawableBg:Landroid/graphics/drawable/Drawable;

.field private mdrawableMask:Landroid/graphics/drawable/Drawable;

.field private mdrawcanvas:Landroid/graphics/Canvas;

.field mtime:Landroid/text/format/Time;

.field private oneRunnable:Ljava/lang/Runnable;

.field private redrawCalendarRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const v7, 0x3020013

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 64
    invoke-static {v8}, Lnubia/fancydrawable/DateDrawable;->getBitmapByday(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lnubia/fancydrawable/FancyDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    iput-boolean v6, p0, Lnubia/fancydrawable/DateDrawable;->mPaused:Z

    .line 36
    iput-wide v10, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    .line 37
    iput-wide v10, p0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    .line 38
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 39
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 40
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .line 41
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 47
    iput v6, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 48
    iput v6, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 49
    iput-boolean v6, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    .line 53
    iput-boolean v6, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 58
    const-string v4, "-1"

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->DEFAULT_FESTIVAL:Ljava/lang/String;

    .line 59
    const-string v4, "content://cn.nubia.calendar.provider.CustomFestivalProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->CALENDAR_URI:Landroid/net/Uri;

    .line 140
    new-instance v4, Lnubia/fancydrawable/DateDrawable$1;

    invoke-direct {v4, p0}, Lnubia/fancydrawable/DateDrawable$1;-><init>(Lnubia/fancydrawable/DateDrawable;)V

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance v4, Lnubia/fancydrawable/DateDrawable$2;

    invoke-direct {v4, p0}, Lnubia/fancydrawable/DateDrawable$2;-><init>(Lnubia/fancydrawable/DateDrawable;)V

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    .line 65
    const-string v4, "DateDrawable"

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mID:Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    .local v2, "systemResources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 69
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 71
    const v4, 0x3020014

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 73
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 76
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 79
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    .line 80
    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lnubia/fancydrawable/DateDrawable;->setIntrinsicSize(II)V

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iput-wide v4, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    .line 85
    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 86
    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iput v4, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    .line 87
    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iput v4, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 88
    invoke-static {v8}, Lnubia/fancydrawable/DateDrawable;->getBitmapByday(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "bitmapday":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    invoke-direct {p0}, Lnubia/fancydrawable/DateDrawable;->initFestivalList()V

    .line 95
    invoke-direct {p0}, Lnubia/fancydrawable/DateDrawable;->getFestivalDayByCode()V

    .line 97
    new-instance v3, Lnubia/fancydrawable/ThemeDescription;

    invoke-direct {v3}, Lnubia/fancydrawable/ThemeDescription;-><init>()V

    .line 98
    .local v3, "themeDes":Lnubia/fancydrawable/ThemeDescription;
    invoke-virtual {v3}, Lnubia/fancydrawable/ThemeDescription;->isDefaultTheme()Z

    move-result v4

    iput-boolean v4, p0, Lnubia/fancydrawable/DateDrawable;->mIsDefaultTheme:Z

    .line 99
    return-void
.end method

.method static synthetic access$002(Lnubia/fancydrawable/DateDrawable;J)J
    .locals 1
    .param p0, "x0"    # Lnubia/fancydrawable/DateDrawable;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    return-wide p1
.end method

.method private static getBitmapByday(I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "day"    # I

    .prologue
    const v8, 0x3020017

    .line 180
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 181
    .local v5, "systemResources":Landroid/content/res/Resources;
    const/4 v6, 0x1

    if-lt p0, v6, :cond_0

    const/16 v6, 0x1f

    if-le p0, v6, :cond_1

    .line 182
    :cond_0
    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 184
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fancydrawable_day_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "bitmapName":Ljava/lang/String;
    const-class v2, Lcn/nubia/internal/R$drawable;

    .line 187
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 188
    .local v4, "id":I
    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "bitmapDay":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 189
    .end local v0    # "bitmapDay":Landroid/graphics/Bitmap;
    .end local v4    # "id":I
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmapDay":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getDatebyProvider()Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 123
    .local v2, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lnubia/fancydrawable/DateDrawable;->CALENDAR_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 125
    const-string v3, "festival_info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 127
    if-eqz v0, :cond_1

    const-string v3, "FS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    const-string v3, "FS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 137
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 135
    :cond_0
    const-string v3, "-1"

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v3, "-1"

    goto :goto_0
.end method

.method private getFestivalDayByCode()V
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Lnubia/fancydrawable/DateDrawable;->getDatebyProvider()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "festivalCode":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 114
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method private getFestivalDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "day"    # I

    .prologue
    .line 219
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 220
    .local v7, "systemResources":Landroid/content/res/Resources;
    const v8, 0x3020036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 222
    .local v6, "is":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v3, "festival":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const/4 v8, 0x6

    if-le p1, v8, :cond_1

    :cond_0
    move-object v4, v3

    .line 234
    .end local v3    # "festival":Landroid/graphics/drawable/Drawable;
    .local v4, "festival":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 226
    .end local v4    # "festival":Ljava/lang/Object;
    .restart local v3    # "festival":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fancydrawable_festival_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "bitmapName":Ljava/lang/String;
    const-class v1, Lcn/nubia/internal/R$drawable;

    .line 229
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 230
    .local v5, "id":I
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "festival":Landroid/graphics/drawable/Drawable;
    .local v4, "festival":Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .end local v4    # "festival":Landroid/graphics/drawable/Drawable;
    .end local v5    # "id":I
    .restart local v3    # "festival":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object v4, v3

    .line 234
    .local v4, "festival":Ljava/lang/Object;
    goto :goto_0

    .line 231
    .end local v4    # "festival":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getbitmapDayAndBG(I)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "day"    # I

    .prologue
    .line 238
    const/4 v6, 0x0

    .line 239
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 240
    .local v15, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 241
    .local v4, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v20, v0

    if-eqz v4, :cond_2

    .end local v4    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 243
    .local v9, "dayandBG":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v6, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 245
    .local v10, "drawablebg":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    move-object/from16 v0, p0

    iget v8, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 251
    .local v8, "dayAvailableWidth":I
    move-object/from16 v0, p0

    iget v7, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 252
    .local v7, "dayAvailableHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v13, v0

    .line 255
    .local v13, "fAvailableWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v12, v0

    .line 256
    .local v12, "fAvailableHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v13, v19

    .line 257
    .local v17, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v17

    move/from16 v0, v19

    float-to-int v8, v0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v12, v19

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v17

    move/from16 v0, v19

    float-to-int v7, v0

    .line 261
    .end local v12    # "fAvailableHeight":F
    .end local v13    # "fAvailableWidth":F
    .end local v17    # "scale":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v8

    div-int/lit8 v14, v19, 0x2

    .line 262
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v7

    div-int/lit8 v18, v19, 0x2

    .line 263
    .local v18, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v19, v0

    add-int v19, v19, v8

    div-int/lit8 v16, v19, 0x2

    .line 264
    .local v16, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v19, v0

    add-int v19, v19, v7

    div-int/lit8 v5, v19, 0x2

    .line 267
    .local v5, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnubia/fancydrawable/DateDrawable;->mIsDefaultTheme:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mCurrentFestival:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lnubia/fancydrawable/DateDrawable;->getFestivalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 272
    .local v11, "drawableday":Landroid/graphics/drawable/Drawable;
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v11, v14, v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    return-object v9

    .line 241
    .end local v5    # "bottom":I
    .end local v7    # "dayAvailableHeight":I
    .end local v8    # "dayAvailableWidth":I
    .end local v9    # "dayandBG":Landroid/graphics/Bitmap;
    .end local v10    # "drawablebg":Landroid/graphics/drawable/Drawable;
    .end local v11    # "drawableday":Landroid/graphics/drawable/Drawable;
    .end local v14    # "left":I
    .end local v16    # "right":I
    .end local v18    # "top":I
    .restart local v4    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_0

    .line 270
    .end local v4    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "bottom":I
    .restart local v7    # "dayAvailableHeight":I
    .restart local v8    # "dayAvailableWidth":I
    .restart local v9    # "dayandBG":Landroid/graphics/Bitmap;
    .restart local v10    # "drawablebg":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "left":I
    .restart local v16    # "right":I
    .restart local v18    # "top":I
    :cond_3
    invoke-direct/range {p0 .. p1}, Lnubia/fancydrawable/DateDrawable;->getdrawableByday(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .restart local v11    # "drawableday":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private getdrawableByday(I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "day"    # I

    .prologue
    .line 200
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 201
    .local v7, "systemResources":Landroid/content/res/Resources;
    const v8, 0x3020017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 203
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 204
    .local v5, "mdrawableday":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const/16 v8, 0x1f

    if-le p1, v8, :cond_1

    :cond_0
    move-object v6, v5

    .line 215
    .end local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    .local v6, "mdrawableday":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 206
    .end local v6    # "mdrawableday":Ljava/lang/Object;
    .restart local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fancydrawable_day_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "bitmapName":Ljava/lang/String;
    const-class v1, Lcn/nubia/internal/R$drawable;

    .line 209
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 210
    .local v3, "id":I
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 211
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    .local v6, "mdrawableday":Landroid/graphics/drawable/Drawable;
    move-object v5, v6

    .end local v3    # "id":I
    .end local v6    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object v6, v5

    .line 215
    .local v6, "mdrawableday":Ljava/lang/Object;
    goto :goto_0

    .line 212
    .end local v6    # "mdrawableday":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initFestivalList()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    .line 103
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh0505"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh0815"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "ws1001"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "ws0101"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh1230"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mFestivalList:Ljava/util/ArrayList;

    const-string v1, "zh0101"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private onTimeChanged()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method private showToday(I)V
    .locals 4
    .param p1, "today"    # I

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 279
    return-void
.end method

.method private showTurnPage(IILandroid/graphics/Canvas;)V
    .locals 26
    .param p1, "ShowDay"    # I
    .param p2, "DstDay"    # I
    .param p3, "drawcanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 284
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 285
    invoke-direct/range {p0 .. p1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .line 286
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 288
    .local v6, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v22, v0

    if-eqz v6, :cond_1

    .end local v6    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .line 295
    const/16 v17, 0x0

    .line 296
    .local v17, "srcRect":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 297
    .local v10, "dstRect":Landroid/graphics/Rect;
    const/16 v16, 0x0

    .line 298
    .local v16, "matrixEx":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    .line 299
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 300
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .line 301
    .local v5, "bitmapCanvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    .line 302
    .local v13, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/4 v12, 0x0

    .line 304
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    move-wide/from16 v24, v0

    sub-long v14, v22, v24

    .line 307
    .local v14, "lastTime":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v14, v22

    if-ltz v21, :cond_2

    .line 308
    const/high16 v18, 0x3f800000    # 1.0f

    .line 313
    .local v18, "value":F
    :goto_1
    new-instance v12, Landroid/view/animation/AccelerateInterpolator;

    .end local v12    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v12}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 314
    .restart local v12    # "interpolator":Landroid/view/animation/Interpolator;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 317
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 318
    .local v11, "height":I
    div-int/lit8 v20, v11, 0x2

    .line 319
    .local v20, "y":I
    new-instance v17, Landroid/graphics/Rect;

    .end local v17    # "srcRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 320
    .restart local v17    # "srcRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    .end local v10    # "dstRect":Landroid/graphics/Rect;
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 321
    .restart local v10    # "dstRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Canvas;

    .end local v8    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Matrix;

    .end local v16    # "matrixEx":Landroid/graphics/Matrix;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 324
    .restart local v16    # "matrixEx":Landroid/graphics/Matrix;
    new-instance v13, Lnubia/fancydrawable/Matrix4x4;

    .end local v13    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-direct {v13}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 330
    .restart local v13    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    move/from16 v0, v20

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v10, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 334
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 335
    move/from16 v0, v20

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v10, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    if-ltz v20, :cond_0

    move/from16 v0, v20

    if-lt v0, v11, :cond_3

    .line 385
    :cond_0
    :goto_2
    return-void

    .line 288
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "dstRect":Landroid/graphics/Rect;
    .end local v11    # "height":I
    .end local v12    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v13    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    .end local v14    # "lastTime":J
    .end local v16    # "matrixEx":Landroid/graphics/Matrix;
    .end local v17    # "srcRect":Landroid/graphics/Rect;
    .end local v18    # "value":F
    .end local v19    # "width":I
    .end local v20    # "y":I
    .restart local v6    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_0

    .line 310
    .end local v6    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "dstRect":Landroid/graphics/Rect;
    .restart local v12    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v13    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    .restart local v14    # "lastTime":J
    .restart local v16    # "matrixEx":Landroid/graphics/Matrix;
    .restart local v17    # "srcRect":Landroid/graphics/Rect;
    :cond_2
    long-to-float v0, v14

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v18, v21, v22

    .restart local v18    # "value":F
    goto/16 :goto_1

    .line 342
    .restart local v11    # "height":I
    .restart local v19    # "width":I
    .restart local v20    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 343
    .local v7, "bmConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v7, :cond_4

    .line 345
    :goto_3
    const/high16 v21, 0x3f000000    # 0.5f

    cmpg-float v21, v18, v21

    if-gez v21, :cond_5

    .line 346
    const/high16 v21, 0x43340000    # 180.0f

    mul-float v9, v21, v18

    .line 347
    .local v9, "degree":F
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 348
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    .restart local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 350
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 351
    invoke-virtual {v13, v9}, Lnubia/fancydrawable/Matrix4x4;->postRotateX(F)Z

    .line 352
    const/16 v21, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 371
    :goto_4
    invoke-virtual {v13}, Lnubia/fancydrawable/Matrix4x4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v16

    .line 373
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v8, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 377
    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v18, v21

    if-gez v21, :cond_6

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 343
    .end local v9    # "degree":F
    :cond_4
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_3

    .line 354
    :cond_5
    const/high16 v21, 0x43340000    # 180.0f

    const/high16 v22, 0x3f000000    # 0.5f

    sub-float v22, v18, v22

    mul-float v21, v21, v22

    const/high16 v22, 0x43870000    # 270.0f

    add-float v9, v21, v22

    .line 355
    .restart local v9    # "degree":F
    sub-int v21, v11, v20

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 356
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .restart local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 358
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 359
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 360
    move-object/from16 v0, v17

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 361
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 362
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 363
    move/from16 v0, v19

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 364
    sub-int v21, v11, v20

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v5, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 367
    invoke-virtual {v13, v9}, Lnubia/fancydrawable/Matrix4x4;->postRotateX(F)Z

    .line 368
    const/16 v21, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    goto/16 :goto_4

    .line 382
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    goto/16 :goto_2
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v0, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    .line 451
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    if-nez v0, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/DateDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    .line 158
    invoke-virtual {p0}, Lnubia/fancydrawable/DateDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    .line 160
    :cond_1
    iput-object p1, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 161
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 162
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 165
    iget-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    if-nez v0, :cond_2

    .line 166
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    invoke-direct {p0, v0}, Lnubia/fancydrawable/DateDrawable;->showToday(I)V

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_2
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    if-eq v0, v1, :cond_3

    .line 169
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    invoke-direct {p0, v0, v1, p1}, Lnubia/fancydrawable/DateDrawable;->showTurnPage(IILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 172
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    invoke-direct {p0, v0}, Lnubia/fancydrawable/DateDrawable;->showToday(I)V

    goto :goto_0
.end method

.method public pageChange()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 435
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 436
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    if-eq v0, v1, :cond_0

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 438
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_0
    return-void
.end method

.method public pauseRun()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public startToRun()V
    .locals 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    .line 406
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public timeChange()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method
