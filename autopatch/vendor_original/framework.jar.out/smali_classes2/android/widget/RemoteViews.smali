.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$4;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntentList;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MutablePair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I

.field private static final sInvokeArgsTls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodsLock:[Ljava/lang/Object;


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/content/pm/ApplicationInfo;

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPair:Landroid/widget/RemoteViews$MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPortrait:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    .line 3022
    new-instance v0, Landroid/widget/RemoteViews$3;

    invoke-direct {v0}, Landroid/widget/RemoteViews$3;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 2
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 128
    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 129
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 182
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1869
    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 1870
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1871
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1873
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1874
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1875
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1918
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1919
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 128
    iput-object v7, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 129
    iput-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 138
    iput-boolean v6, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 182
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, v7, v7}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1925
    .local v2, "mode":I
    if-nez p2, :cond_0

    .line 1926
    new-instance v4, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1932
    :goto_0
    if-nez v2, :cond_2

    .line 1933
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 1934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1938
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 1939
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1942
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1994
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1928
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "tag":I
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1929
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    goto :goto_0

    :cond_1
    move v4, v6

    .line 1935
    goto :goto_1

    .line 1944
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "tag":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1948
    :sswitch_1
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1952
    :sswitch_2
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1955
    :sswitch_3
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1958
    :sswitch_4
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v5, p0, p1, v6}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1961
    :sswitch_5
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1964
    :sswitch_6
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1967
    :sswitch_7
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1970
    :sswitch_8
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1973
    :sswitch_9
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1976
    :sswitch_a
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1979
    :sswitch_b
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1982
    :sswitch_c
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1985
    :sswitch_d
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1988
    :sswitch_e
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1991
    :sswitch_f
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2000
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "tag":I
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2001
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 2002
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v4, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2003
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 2007
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v4, p0, v7}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 2008
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 2009
    return-void

    .line 1942
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_d
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_e
        0x11 -> :sswitch_f
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p3, "x2"    # Landroid/widget/RemoteViews$1;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    .line 1888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 128
    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 129
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 182
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v2, v2}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1889
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1890
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1892
    :cond_1
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1894
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1896
    :cond_3
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 1897
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1899
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 1900
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 1903
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1905
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1906
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1907
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1909
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1910
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .prologue
    .line 1842
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 1843
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "layoutId"    # I

    .prologue
    .line 1856
    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 1857
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Class;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/widget/RemoteViews;->wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    .prologue
    .line 2103
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2108
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 2111
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2115
    return-void
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1427
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1428
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1429
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    .line 1430
    return-void
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 2994
    if-nez p0, :cond_1

    .line 2995
    const/4 v1, 0x0

    .line 3016
    :cond_0
    :goto_0
    return-object v1

    .line 2999
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3000
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_2

    .line 3001
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot create remote views out of an aplication."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3004
    :cond_2
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3005
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3008
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p0, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 3010
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 3011
    .end local v2    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 3012
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getContextForResources(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2921
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 2922
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2934
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object p1

    .line 2927
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 2929
    :catch_0
    move-exception v0

    .line 2930
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 858
    .local p3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 860
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v5, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 861
    :try_start_0
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 862
    .local v3, "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_0

    .line 863
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 864
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_0
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p2, v4, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    .line 868
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p3, v4, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    .line 870
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_3

    .line 873
    if-nez p3, :cond_1

    .line 874
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 883
    :goto_0
    :try_start_2
    const-class v4, Landroid/view/RemotableViewMethod;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 884
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t use method with RemoteViews: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 891
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 876
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :cond_1
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 889
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, p2, p3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :cond_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 893
    return-object v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    const-string v0, "()"

    .line 898
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2815
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2816
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2817
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2818
    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2823
    .end local v0    # "orientation":I
    .end local p0    # "this":Landroid/widget/RemoteViews;
    :cond_0
    :goto_0
    return-object p0

    .line 2820
    .restart local v0    # "orientation":I
    .restart local p0    # "this":Landroid/widget/RemoteViews;
    :cond_1
    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 843
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 845
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 846
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 848
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 849
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 850
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 851
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 852
    aget v3, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 853
    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2910
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2911
    if-nez p3, :cond_0

    sget-object p3, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2912
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2913
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2914
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2915
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2913
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2918
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    .prologue
    .line 2051
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    .line 2053
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2055
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2056
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2057
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2058
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2057
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2061
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_1

    .line 2062
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2069
    :cond_1
    :goto_1
    return-void

    .line 2065
    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 2066
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 2067
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_1
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 2075
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2076
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2077
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2078
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2079
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2080
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2079
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2084
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2085
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2087
    :cond_1
    return-void
.end method

.method private static wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 902
    sget-object v1, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 903
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 904
    return-object v0
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2128
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2129
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2838
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2843
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 2850
    .local v4, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2851
    .local v0, "contextForResources":Landroid/content/Context;
    new-instance v2, Landroid/widget/RemoteViews$2;

    invoke-direct {v2, p0, p1, v0}, Landroid/widget/RemoteViews$2;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;)V

    .line 2866
    .local v2, "inflationContext":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2871
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2872
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 2873
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2875
    .local v3, "result":Landroid/view/View;
    invoke-direct {v4, v3, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2877
    return-object v3
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2014
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2015
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2016
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 2017
    .local v1, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2018
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2956
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 2033
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2022
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 2943
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 10
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 291
    .local v1, "copy":Landroid/widget/RemoteViews;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 293
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 296
    :cond_2
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 297
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 298
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 299
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    :cond_3
    iget-object v7, v1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 303
    .local v7, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-eqz v7, :cond_0

    .line 304
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 305
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 306
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 307
    .restart local v0    # "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v6

    .line 309
    .local v6, "mergeBehavior":I
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    .line 310
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_4
    if-eqz v6, :cond_5

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    .line 316
    :cond_5
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 321
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "mergeBehavior":I
    :cond_7
    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v8}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 322
    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    goto/16 :goto_0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 2952
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 2889
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2890
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2894
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2899
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2900
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2901
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2906
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2907
    return-void
.end method

.method public removeAllViews(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 2138
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2139
    return-void
.end method

.method public setAccessibilityTraversalAfter(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .prologue
    .line 2801
    const-string v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2802
    return-void
.end method

.method public setAccessibilityTraversalBefore(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .prologue
    .line 2791
    const-string v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2792
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2738
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2739
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 2607
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2608
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    .prologue
    .line 2749
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2750
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 2618
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2619
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 2684
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2685
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 2706
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2707
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .prologue
    .line 2351
    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2352
    const-string v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2354
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 2781
    const-string v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2782
    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    .prologue
    .line 2166
    const-string v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2167
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 2673
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2674
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "alpha"    # I
    .param p4, "colorFilter"    # I
    .param p5, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p6, "level"    # I

    .prologue
    .line 2462
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2464
    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    .prologue
    .line 2333
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2334
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 2662
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2663
    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2771
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2772
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2313
    const-string v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2314
    return-void
.end method

.method public setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2323
    const-string v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 2324
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .prologue
    .line 2293
    const-string v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2294
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2303
    const-string v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 2304
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 2640
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2641
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    .prologue
    .line 2760
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2761
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .param p1, "isWidgetCollectionChild"    # Z

    .prologue
    .line 2044
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 2045
    return-void
.end method

.method public setLabelFor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    .prologue
    .line 2811
    const-string v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2812
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 2651
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2652
    return-void
.end method

.method setNotRoot()V
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 1434
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 2431
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2432
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2392
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2393
    return-void
.end method

.method public setOnClickPendingIntentList(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p2, "pendingIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 840
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .prologue
    .line 2408
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2409
    return-void
.end method

.method public setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2486
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v3, "setProgressBackgroundTintList"

    const/16 v4, 0xf

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2488
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .prologue
    .line 2371
    const-string v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2372
    if-nez p4, :cond_0

    .line 2373
    const-string v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2374
    const-string v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2376
    :cond_0
    return-void
.end method

.method public setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2498
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v3, "setIndeterminateTintList"

    const/16 v4, 0xf

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2500
    return-void
.end method

.method public setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2474
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v3, "setProgressTintList"

    const/16 v4, 0xf

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2476
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    .prologue
    .line 2583
    const-string v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2584
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2526
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 2527
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2538
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2539
    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2563
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2564
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 2573
    const-string v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2574
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 2629
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2630
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2695
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2696
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 2510
    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2511
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2211
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2212
    return-void
.end method

.method public setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "left"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "right"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2265
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2266
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2226
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2227
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "start"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "end"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2283
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2284
    return-void
.end method

.method public setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "index"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2245
    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    .line 2246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be in range [0, 3]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2248
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2249
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2186
    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2187
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .prologue
    .line 2197
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2198
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 2717
    if-eqz p3, :cond_0

    .line 2719
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 2720
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2721
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 2724
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2725
    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2596
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2597
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 2176
    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2177
    return-void
.end method

.method public showNext(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 2147
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2148
    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 2156
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2157
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2960
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2961
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v5, :cond_0

    .line 2965
    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 2967
    :cond_0
    iget-object v5, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2968
    iget v5, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2971
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 2972
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2976
    .local v1, "count":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2977
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 2978
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2979
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2977
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    move v3, v4

    .line 2969
    goto :goto_0

    .line 2974
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "count":I
    goto :goto_1

    .line 2982
    .end local v1    # "count":I
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2985
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_4

    .line 2986
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 2988
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2989
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2991
    :cond_5
    return-void
.end method
