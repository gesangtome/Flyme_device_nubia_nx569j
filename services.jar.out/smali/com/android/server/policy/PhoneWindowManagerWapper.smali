.class public final Lcom/android/server/policy/PhoneWindowManagerWapper;
.super Ljava/lang/Object;
.source "PhoneWindowManagerWapper.java"


# instance fields
.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "mPhoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    return-void
.end method


# virtual methods
.method public dismissKeyguardLw()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    .line 20
    return-void
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public updateRotation(Z)V
    .locals 2
    .param p1, "oriention"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerWapper;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 27
    return-void
.end method
