.class public Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;
.super Landroid/os/AsyncTask;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/notification/NotificationBlackWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadAllAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;


# direct methods
.method public constructor <init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;

    # invokes: Lcn/nubia/server/notification/NotificationBlackWhiteList;->getAllAppsFlag()Ljava/util/Map;
    invoke-static {v0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->access$100(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;

    # getter for: Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;
    invoke-static {v0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->access$200(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcn/nubia/server/notification/NotificationBlackWhiteList;

    # getter for: Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;
    invoke-static {v0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->access$200(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    :cond_0
    return-void
.end method
