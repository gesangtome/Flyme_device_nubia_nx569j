.class Lnubia/widget/NubiaDigitalBigClockWithCity$1$1;
.super Ljava/lang/Object;
.source "NubiaDigitalBigClockWithCity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaDigitalBigClockWithCity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnubia/widget/NubiaDigitalBigClockWithCity$1;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaDigitalBigClockWithCity$1;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lnubia/widget/NubiaDigitalBigClockWithCity$1$1;->this$1:Lnubia/widget/NubiaDigitalBigClockWithCity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnubia/widget/NubiaDigitalBigClockWithCity$1$1;->this$1:Lnubia/widget/NubiaDigitalBigClockWithCity$1;

    iget-object v0, v0, Lnubia/widget/NubiaDigitalBigClockWithCity$1;->this$0:Lnubia/widget/NubiaDigitalBigClockWithCity;

    # invokes: Lnubia/widget/NubiaDigitalBigClockWithCity;->onTimeChanged()V
    invoke-static {v0}, Lnubia/widget/NubiaDigitalBigClockWithCity;->access$100(Lnubia/widget/NubiaDigitalBigClockWithCity;)V

    .line 70
    return-void
.end method
