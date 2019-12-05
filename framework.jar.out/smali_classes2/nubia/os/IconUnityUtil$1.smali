.class final Lnubia/os/IconUnityUtil$1;
.super Ljava/lang/Object;
.source "IconUnityUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/os/IconUnityUtil;->removePackageBitmap(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lnubia/os/IconUnityUtil$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lnubia/os/IconUnityUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnubia/os/IconUnityUtil$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lnubia/os/IconUnityUtil$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v0, p0, Lnubia/os/IconUnityUtil$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnubia/os/IconUnityUtil$1;->val$packageName:Ljava/lang/String;

    # invokes: Lnubia/os/IconUnityUtil;->deleteBitmap(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lnubia/os/IconUnityUtil;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method
