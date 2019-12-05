.class Lnubia/fancydrawable/DateDrawable$1;
.super Ljava/lang/Object;
.source "DateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/fancydrawable/DateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/fancydrawable/DateDrawable;


# direct methods
.method constructor <init>(Lnubia/fancydrawable/DateDrawable;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lnubia/fancydrawable/DateDrawable$1;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable$1;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    # setter for: Lnubia/fancydrawable/DateDrawable;->mStartTime:J
    invoke-static {v0, v2, v3}, Lnubia/fancydrawable/DateDrawable;->access$002(Lnubia/fancydrawable/DateDrawable;J)J

    .line 143
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable$1;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-virtual {v0}, Lnubia/fancydrawable/DateDrawable;->invalidateSelf()V

    .line 144
    return-void
.end method
