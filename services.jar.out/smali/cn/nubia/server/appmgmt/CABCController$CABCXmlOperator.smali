.class Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CABCXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator",
        "<",
        "Lcn/nubia/server/appmgmt/CABCController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 127
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    .line 128
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 129
    return-void
.end method


# virtual methods
.method public createObject()Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    const/16 v2, 0x1b

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/CABCController$XmlData;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILandroid/util/ArrayMap;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->createObject()Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 148
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->createObject()Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-result-object v4

    .line 150
    .local v4, "temp":Lcn/nubia/server/appmgmt/CABCController$XmlData;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 151
    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "tag":Ljava/lang/String;
    const-string v6, "default_setting"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    const-string v6, "default_mode"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "defattr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Lcn/nubia/server/appmgmt/CABCController$XmlData;->value:I
    invoke-static {v4, v6}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$002(Lcn/nubia/server/appmgmt/CABCController$XmlData;I)I

    goto :goto_0

    .line 160
    .end local v2    # "defattr":Ljava/lang/String;
    :cond_1
    const-string v6, "app_setting"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    const-string v6, "app_name"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "app":Ljava/lang/String;
    const-string v6, "app_mode"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "appMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 164
    # getter for: Lcn/nubia/server/appmgmt/CABCController$XmlData;->array:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "appMode":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    return-object v4
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
    .line 126
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/CABCController$XmlData;)V
    .locals 5
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    const-string v2, "default_setting"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const-string v2, "default_mode"

    # getter for: Lcn/nubia/server/appmgmt/CABCController$XmlData;->value:I
    invoke-static {p3}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$000(Lcn/nubia/server/appmgmt/CABCController$XmlData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string v2, "default_setting"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 138
    const-string v2, "app_setting"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v3, "app_name"

    # getter for: Lcn/nubia/server/appmgmt/CABCController$XmlData;->array:Landroid/util/ArrayMap;
    invoke-static {p3}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 141
    .local v1, "value":I
    const-string v2, "app_mode"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string v2, "app_setting"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "value":I
    :cond_0
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
    .line 126
    check-cast p3, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/CABCController$XmlData;)V

    return-void
.end method
