.class public Lnubia/preference/ProtoPreference;
.super Ljava/lang/Object;
.source "ProtoPreference.java"

# interfaces
.implements Lnubia/preference/IPreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnubia/preference/ProtoPreference;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getDialogTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    return-object p1
.end method

.method public getPreferenceEdittextContainerId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x102038f

    return v0
.end method

.method public getPreferenceMessageId()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x102000b

    return v0
.end method

.method public getPreferenceNubiaSwitchId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x1020399

    return v0
.end method

.method public getPreferenceSeekBarId()I
    .locals 1

    .prologue
    .line 21
    const v0, 0x1020390

    return v0
.end method

.method public getSeekBarPreferenceLayout()I
    .locals 1

    .prologue
    .line 16
    const v0, 0x10900b5

    return v0
.end method
