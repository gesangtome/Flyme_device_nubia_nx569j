.class Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationPushController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPushController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator",
        "<",
        "Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 150
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 151
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 152
    return-void
.end method


# virtual methods
.method public createObject()Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/util/HashSet;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    move-result-object v3

    .line 174
    .local v3, "temp":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 175
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 178
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "tag":Ljava/lang/String;
    const-string v5, "dependce"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    const-string v5, "include_pkg"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "dependence":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 182
    # getter for: Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->prefixs:Ljava/util/HashSet;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v1    # "dependence":Ljava/lang/String;
    :cond_1
    const-string v5, "push"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    const-string v5, "include_pkg"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "accessPkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    # getter for: Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->alloweds:Ljava/util/HashSet;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v0    # "accessPkg":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)V
    .locals 5
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 157
    # getter for: Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->prefixs:Ljava/util/HashSet;
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, "name":Ljava/lang/String;
    const-string v3, "dependce"

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const-string v3, "include_pkg"

    invoke-interface {p2, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v3, "dependce"

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 163
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    # getter for: Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->alloweds:Ljava/util/HashSet;
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "push"

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const-string v3, "include_pkg"

    invoke-interface {p2, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v3, "push"

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 168
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public bridge synthetic writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/BufferedOutputStream;
    .param p2, "x1"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    check-cast p3, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)V

    return-void
.end method
