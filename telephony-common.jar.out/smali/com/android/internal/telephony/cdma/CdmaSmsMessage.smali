.class public Lcom/android/internal/telephony/cdma/CdmaSmsMessage;
.super Ljava/lang/Object;
.source "CdmaSmsMessage.java"


# static fields
.field private static final CDMA_SMS_STATUS_FAILED:I = 0x3

.field private static final CDMA_SMS_STATUS_NO_ERROR:I = 0x0

.field private static final CDMA_SMS_STATUS_PENDING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleveryAck(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 20
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 11
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :pswitch_2
    const/16 v0, 0x20

    goto :goto_0

    .line 17
    :pswitch_3
    const/16 v0, 0x40

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
