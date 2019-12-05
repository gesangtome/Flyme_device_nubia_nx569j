.class public Lnubia/preference/NubiaPreference;
.super Ljava/lang/Object;
.source "NubiaPreference.java"

# interfaces
.implements Lnubia/preference/IPreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnubia/preference/NubiaPreference;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getDialogTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceEdittextContainerId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x30d0066

    return v0
.end method

.method public getPreferenceMessageId()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x30d0033

    return v0
.end method

.method public getPreferenceNubiaSwitchId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x30d006e

    return v0
.end method

.method public getPreferenceSeekBarId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x30d006d

    return v0
.end method

.method public getSeekBarPreferenceLayout()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x3030029

    return v0
.end method
