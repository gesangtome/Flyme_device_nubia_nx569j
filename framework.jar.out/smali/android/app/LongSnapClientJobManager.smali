.class public Landroid/app/LongSnapClientJobManager;
.super Ljava/lang/Object;
.source "LongSnapClientJobManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LongSnapClientJobManager$WorkHandler;
    }
.end annotation


# instance fields
.field private MAX_SNAP_PAGE_CNT:I

.field private mDispHeight:I

.field private mDispWidth:I

.field private mSnapJob:Landroid/app/LongSnapClientJob;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "dispWidth"    # I
    .param p2, "dispHeight"    # I
    .param p3, "maxPage"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Landroid/app/LongSnapClientJobManager;->mSnapJob:Landroid/app/LongSnapClientJob;

    .line 44
    iput-object v1, p0, Landroid/app/LongSnapClientJobManager;->mWorkHandler:Landroid/os/Handler;

    .line 46
    iput v0, p0, Landroid/app/LongSnapClientJobManager;->mDispWidth:I

    .line 47
    iput v0, p0, Landroid/app/LongSnapClientJobManager;->mDispHeight:I

    .line 48
    iput v0, p0, Landroid/app/LongSnapClientJobManager;->MAX_SNAP_PAGE_CNT:I

    .line 14
    iput p1, p0, Landroid/app/LongSnapClientJobManager;->mDispWidth:I

    .line 15
    iput p2, p0, Landroid/app/LongSnapClientJobManager;->mDispHeight:I

    .line 16
    iput p3, p0, Landroid/app/LongSnapClientJobManager;->MAX_SNAP_PAGE_CNT:I

    .line 18
    new-instance v0, Landroid/app/LongSnapClientJobManager$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/LongSnapClientJobManager$WorkHandler;-><init>(Landroid/app/LongSnapClientJobManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/LongSnapClientJobManager;->mWorkHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$002(Landroid/app/LongSnapClientJobManager;Landroid/app/LongSnapClientJob;)Landroid/app/LongSnapClientJob;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJobManager;
    .param p1, "x1"    # Landroid/app/LongSnapClientJob;

    .prologue
    .line 11
    iput-object p1, p0, Landroid/app/LongSnapClientJobManager;->mSnapJob:Landroid/app/LongSnapClientJob;

    return-object p1
.end method


# virtual methods
.method public startOneJob(Landroid/content/Context;Landroid/view/View;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    new-instance v0, Landroid/app/LongSnapClientJob;

    iget-object v2, p0, Landroid/app/LongSnapClientJobManager;->mWorkHandler:Landroid/os/Handler;

    iget v4, p0, Landroid/app/LongSnapClientJobManager;->mDispWidth:I

    iget v5, p0, Landroid/app/LongSnapClientJobManager;->mDispHeight:I

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/LongSnapClientJob;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;II)V

    iput-object v0, p0, Landroid/app/LongSnapClientJobManager;->mSnapJob:Landroid/app/LongSnapClientJob;

    .line 23
    iget-object v0, p0, Landroid/app/LongSnapClientJobManager;->mSnapJob:Landroid/app/LongSnapClientJob;

    invoke-virtual {v0, p3}, Landroid/app/LongSnapClientJob;->execute(Landroid/content/Intent;)V

    .line 24
    return-void
.end method
