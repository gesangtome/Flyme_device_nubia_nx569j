.class public Lcn/nubia/server/appmgmt/actmutex/MutexRule;
.super Ljava/lang/Object;
.source "MutexRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;,
        Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexRuleHolder;
    }
.end annotation


# instance fields
.field private mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/actmutex/ItemRule;",
            ">;"
        }
    .end annotation
.end field

.field private mRuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    .line 36
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->initAction()V

    .line 37
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->initRule()V

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->setActionPreNextMode()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcn/nubia/server/appmgmt/actmutex/MutexRule;
    .locals 1

    .prologue
    .line 15
    # getter for: Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexRuleHolder;->sInstance:Lcn/nubia/server/appmgmt/actmutex/MutexRule;
    invoke-static {}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexRuleHolder;->access$000()Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    move-result-object v0

    return-object v0
.end method

.method private initAction()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "multi-window"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "multi-window"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "single-hand"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "single-hand"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "Fit-slide"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "Fit-slide"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "wifi-display"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "wifi-display"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "heads-up-notifications"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "heads-up-notifications"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "persist-float"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "persist-float"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "Fit-card"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "Fit-card"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "fit"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "Fit-card"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "power-save"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "power-save"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "super-screenshot-caping"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "super-screenshot-caping"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "notifications-open"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "notifications-open"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "control-center-open"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "control-center-open"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "temp2app"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "temp2app"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "control-center-close"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "control-center-close"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "super-screenshot-closeapp"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "super-screenshot-closeapp"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "wlan-camera-ing"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "wlan-camera-ing"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "wlan-camera-waiting"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "wlan-camera-waiting"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "super-screenshot-fingerprint"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "super-screenshot-fingerprint"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    const-string v1, "temp2openDialog"

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    const-string v3, "temp2openDialog"

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private initRule()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 68
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "multi-window"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "multi-window"

    const-string v3, "wifi-display"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "multi-window"

    const-string v3, "Fit-card"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "multi-window"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "single-hand"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "single-hand"

    const-string v3, "wifi-display"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "single-hand"

    const-string v3, "Fit-card"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "single-hand"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-slide"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wifi-display"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wifi-display"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wifi-display"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "persist-float"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "Fit-slide"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "temp2app"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "control-center-close"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "Fit-card"

    const-string v3, "super-screenshot-closeapp"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "wifi-display"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "heads-up-notifications"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "persist-float"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "Fit-card"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "super-screenshot-caping"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "super-screenshot-closeapp"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "notifications-open"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "power-save"

    const-string v3, "control-center-open"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "super-screenshot-caping"

    const-string v3, "Fit-card"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "super-screenshot-caping"

    const-string v3, "power-save"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "super-screenshot-caping"

    const-string v3, "wlan-camera-ing"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "super-screenshot-caping"

    const-string v3, "wlan-camera-waiting"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "notifications-open"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "notifications-open"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "notifications-open"

    const-string v3, "Fit-card"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "notifications-open"

    const-string v3, "super-screenshot-caping"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "control-center-open"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "control-center-open"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "control-center-open"

    const-string v3, "Fit-card"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "control-center-open"

    const-string v3, "super-screenshot-caping"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "control-center-open"

    const-string v3, "temp2openDialog"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wlan-camera-ing"

    const-string v3, "super-screenshot-caping"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wlan-camera-ing"

    const-string v3, "super-screenshot-fingerprint"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wlan-camera-waiting"

    const-string v3, "super-screenshot-caping"

    invoke-direct {v1, p0, v2, v3, v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wlan-camera-ing"

    const-string v3, "fit"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wlan-camera-ing"

    const-string v3, "single-hand"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    const-string v2, "wlan-camera-ing"

    const-string v3, "multi-window"

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;-><init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method private setActionPreNextMode()V
    .locals 6

    .prologue
    .line 146
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 147
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 148
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->getPro()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "pAct":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->getNext()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "nAct":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mRuleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->getMode()I

    move-result v1

    .line 152
    .local v1, "mode":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    invoke-virtual {v5, v3, v1}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;->setNextActionMode(Ljava/lang/String;I)V

    .line 154
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 155
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    invoke-virtual {v5, v4, v1}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;->setPreActionMode(Ljava/lang/String;I)V

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "mode":I
    .end local v3    # "nAct":Ljava/lang/String;
    .end local v4    # "pAct":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getProMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "preact"    # Ljava/lang/String;
    .param p2, "nextact"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  getProMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/actmutex/ItemRule;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ItemRule;->getPreMode(Ljava/lang/String;)I

    move-result v0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
