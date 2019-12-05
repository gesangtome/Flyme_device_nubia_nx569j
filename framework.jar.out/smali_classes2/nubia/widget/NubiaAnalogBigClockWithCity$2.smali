.class Lnubia/widget/NubiaAnalogBigClockWithCity$2;
.super Landroid/database/ContentObserver;
.source "NubiaAnalogBigClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaAnalogBigClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaAnalogBigClockWithCity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 211
    iput-object p1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 216
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    invoke-virtual {v1}, Lnubia/widget/NubiaAnalogBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lnubia/widget/NubiaAnalogBigClockWithCity;->mIs24Hour:Z
    invoke-static {v0, v1}, Lnubia/widget/NubiaAnalogBigClockWithCity;->access$202(Lnubia/widget/NubiaAnalogBigClockWithCity;Z)Z

    .line 217
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    # invokes: Lnubia/widget/NubiaAnalogBigClockWithCity;->updateTime()V
    invoke-static {v0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->access$300(Lnubia/widget/NubiaAnalogBigClockWithCity;)V

    .line 218
    return-void
.end method
