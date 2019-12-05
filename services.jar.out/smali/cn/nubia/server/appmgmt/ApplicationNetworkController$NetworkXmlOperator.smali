.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator",
        "<",
        "Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 1122
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .line 1123
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 1124
    return-void
.end method


# virtual methods
.method public createObject()Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .locals 7

    .prologue
    .line 1196
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;JJLjava/util/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .locals 28
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    move-result-object v25

    .line 1156
    .local v25, "temp":Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_3

    .line 1157
    const/4 v3, 0x3

    move/from16 v0, v26

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    move/from16 v0, v26

    if-eq v0, v3, :cond_0

    .line 1160
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1161
    .local v24, "tag":Ljava/lang/String;
    const-string v3, "delay_mills"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1162
    const/4 v3, 0x0

    const-string v4, "delay_mills"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1163
    .local v15, "defAttr":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 1164
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v25

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J
    invoke-static {v0, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$202(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;J)J

    .line 1166
    :cond_1
    const/4 v3, 0x0

    const-string v4, "screen_off_delay_mills"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1167
    .local v22, "screenDelay":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 1168
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v25

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J
    invoke-static {v0, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$302(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;J)J

    goto :goto_0

    .line 1170
    .end local v15    # "defAttr":Ljava/lang/String;
    .end local v22    # "screenDelay":Ljava/lang/String;
    :cond_2
    const-string v3, "app_settings"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1171
    const/4 v3, 0x0

    const-string v4, "app"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1172
    .local v17, "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "mobile_background"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1173
    .local v2, "bMobile":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "wifi_background"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1174
    .local v14, "bWifi":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "mobile_screen_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1175
    .local v20, "sMobile":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "wifi_screen_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1176
    .local v21, "sWifi":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "g_in_screen_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1177
    .local v19, "s2g":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "return_no_network"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1178
    .local v18, "rnn":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "delay_control_mills"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1179
    .local v23, "sdelay":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "restore_time_interval"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1180
    .local v16, "interval":Ljava/lang/String;
    if-eqz v17, :cond_0

    if-eqz v2, :cond_0

    if-eqz v14, :cond_0

    if-eqz v20, :cond_0

    if-eqz v21, :cond_0

    if-eqz v19, :cond_0

    if-eqz v18, :cond_0

    if-eqz v23, :cond_0

    if-eqz v16, :cond_0

    .line 1183
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;

    move-result-object v27

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZJZZZZJ)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1191
    .end local v2    # "bMobile":Ljava/lang/String;
    .end local v14    # "bWifi":Ljava/lang/String;
    .end local v16    # "interval":Ljava/lang/String;
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v18    # "rnn":Ljava/lang/String;
    .end local v19    # "s2g":Ljava/lang/String;
    .end local v20    # "sMobile":Ljava/lang/String;
    .end local v21    # "sWifi":Ljava/lang/String;
    .end local v23    # "sdelay":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    :cond_3
    return-object v25
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
    .line 1121
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)V
    .locals 9
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1130
    const-string v4, "delay_mills"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    const-string v4, "delay_mills"

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    const-string v4, "screen_off_delay_mills"

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    const-string v4, "delay_mills"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1136
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1137
    .local v0, "app":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 1138
    .local v1, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    const-string v4, "app_settings"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    const-string v4, "app"

    invoke-interface {p2, v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1140
    const-string v4, "mobile_background"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1141
    const-string v4, "wifi_background"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    const-string v4, "mobile_screen_off"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1143
    const-string v4, "wifi_screen_off"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1144
    const-string v4, "g_in_screen_off"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1145
    const-string v4, "return_no_network"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1146
    const-string v4, "delay_control_mills"

    iget-wide v6, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    const-string v4, "restore_time_interval"

    iget-wide v6, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    const-string v4, "app_settings"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1150
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
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
    .line 1121
    check-cast p3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)V

    return-void
.end method
