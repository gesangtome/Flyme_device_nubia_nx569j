.class public Lcn/nubia/server/appmgmt/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# static fields
.field private static final CONSTANT_KEY:Ljava/lang/String; = "?<$-)~@NB1!huan6#beyond8*&^,(+=>"

.field private static final KEYSTORE_PW:[C

.field private static final KEY_STORE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Encryption"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "@#!abAB123"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/Encryption;->KEYSTORE_PW:[C

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decryptWithConstantKey(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "isSuccess":Z
    const-string v1, "?<$-)~@NB1!huan6#beyond8*&^,(+=>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcn/nubia/server/appmgmt/Encryption;->encryptFile(Ljava/io/InputStream;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 176
    return v0
.end method

.method static decryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "isSuccess":Z
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/nubia/server/appmgmt/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-static {}, Lcn/nubia/server/appmgmt/Encryption;->loadSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 202
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    :goto_0
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3}, Lcn/nubia/server/appmgmt/Encryption;->encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 205
    :cond_0
    return v0

    .line 199
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/Encryption;->generateRandomSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 200
    .restart local v1    # "secretKey":Ljavax/crypto/SecretKey;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/Encryption;->storeSecretKey(Ljavax/crypto/SecretKey;)Z

    goto :goto_0
.end method

.method static encryptFile(Ljava/io/InputStream;Ljava/lang/String;[BZ)Z
    .locals 15
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "keyByte"    # [B
    .param p3, "isEncrypt"    # Z

    .prologue
    .line 133
    const/4 v7, 0x1

    .line 134
    .local v7, "isSuccess":Z
    const/4 v10, 0x0

    .line 135
    .local v10, "len":I
    const/16 v11, 0x1400

    new-array v1, v11, [B

    .line 136
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 137
    .local v3, "cipherbuffer":[B
    const/4 v5, 0x0

    .line 138
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 139
    .local v9, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v11, 0x10

    new-array v11, v11, [B

    fill-array-data v11, :array_0

    invoke-direct {v8, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    .local v8, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    const-string v11, "AES/CFB/NoPadding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 143
    .local v2, "cipher":Ljavax/crypto/Cipher;
    if-eqz p3, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v2, v11, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 145
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 147
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v11, v10}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    .line 148
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 149
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 154
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 155
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v11, "Encryption"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encryption exception happen: encryptFile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    const/4 v7, 0x0

    .line 159
    if-eqz p0, :cond_0

    .line 160
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_0
    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 170
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return v7

    .line 143
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    :cond_2
    const/4 v11, 0x2

    goto :goto_0

    .line 151
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v3

    .line 152
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    if-eqz p0, :cond_4

    .line 160
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_4
    if-eqz v6, :cond_5

    .line 163
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v5, v6

    .line 168
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 165
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "Encryption"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v7, 0x0

    move-object v5, v6

    .line 169
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 165
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "Encryption"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v7, 0x0

    .line 169
    goto :goto_3

    .line 158
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 159
    :goto_4
    if-eqz p0, :cond_6

    .line 160
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_6
    if-eqz v5, :cond_7

    .line 163
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 168
    :cond_7
    :goto_5
    throw v11

    .line 165
    :catch_3
    move-exception v4

    .line 166
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "Encryption"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v7, 0x0

    goto :goto_5

    .line 158
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 154
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 139
    nop

    :array_0
    .array-data 1
        0xct
        0x22t
        0x38t
        0x4et
        0x5at
        0x62t
        0x4ct
        0x36t
        0x20t
        0xat
        0xdt
        0x39t
        0x5bt
        0x23t
        0x4ft
        0x18t
    .end array-data
.end method

.method static encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 17
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "keyByte"    # [B
    .param p3, "isEncrypt"    # Z

    .prologue
    .line 90
    const/4 v9, 0x1

    .line 91
    .local v9, "isSuccess":Z
    const/4 v12, 0x0

    .line 92
    .local v12, "len":I
    const/16 v13, 0x1400

    new-array v1, v13, [B

    .line 93
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 94
    .local v3, "cipherbuffer":[B
    const/4 v5, 0x0

    .line 95
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 96
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "AES"

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 97
    .local v11, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v13, 0x10

    new-array v13, v13, [B

    fill-array-data v13, :array_0

    invoke-direct {v10, v13}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 100
    .local v10, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    const-string v13, "AES/CFB/NoPadding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 101
    .local v2, "cipher":Ljavax/crypto/Cipher;
    if-eqz p3, :cond_2

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v2, v13, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 106
    const/4 v13, 0x0

    invoke-virtual {v2, v1, v13, v12}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    .line 107
    invoke-virtual {v8, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 113
    :catch_0
    move-exception v4

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 114
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v13, "Encryption"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encryption exception happen: encryptFile "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    const/4 v9, 0x0

    .line 118
    if-eqz v5, :cond_0

    .line 119
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_0
    if-eqz v7, :cond_1

    .line 122
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return v9

    .line 101
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    :cond_2
    const/4 v13, 0x2

    goto :goto_0

    .line 110
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v3

    .line 111
    invoke-virtual {v8, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 112
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 118
    if-eqz v6, :cond_4

    .line 119
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_4
    if-eqz v8, :cond_5

    .line 122
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 127
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 124
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "Encryption"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v9, 0x0

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 128
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 124
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "Encryption"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v9, 0x0

    .line 128
    goto :goto_3

    .line 117
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 118
    :goto_4
    if-eqz v5, :cond_6

    .line 119
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_6
    if-eqz v7, :cond_7

    .line 122
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 127
    :cond_7
    :goto_5
    throw v13

    .line 124
    :catch_3
    move-exception v4

    .line 125
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "Encryption"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Encryption exception happen: encryptFile close stream "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v9, 0x0

    goto :goto_5

    .line 117
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 113
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 97
    :array_0
    .array-data 1
        0xct
        0x22t
        0x38t
        0x4et
        0x5at
        0x62t
        0x4ct
        0x36t
        0x20t
        0xat
        0xdt
        0x39t
        0x5bt
        0x23t
        0x4ft
        0x18t
    .end array-data
.end method

.method static encryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "isSuccess":Z
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/nubia/server/appmgmt/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-static {}, Lcn/nubia/server/appmgmt/Encryption;->loadSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 188
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    :goto_0
    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v3}, Lcn/nubia/server/appmgmt/Encryption;->encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 191
    :cond_0
    return v0

    .line 185
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/Encryption;->generateRandomSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 186
    .restart local v1    # "secretKey":Ljavax/crypto/SecretKey;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/Encryption;->storeSecretKey(Ljavax/crypto/SecretKey;)Z

    goto :goto_0
.end method

.method static generateRandomSecretKey()Ljavax/crypto/SecretKey;
    .locals 6

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    :try_start_0
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 31
    .local v3, "secureRandom":Ljava/security/SecureRandom;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 32
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v4, 0x100

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 33
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 37
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v3    # "secureRandom":Ljava/security/SecureRandom;
    :goto_0
    return-object v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Encryption"

    const-string v5, "Encryption exception happen: generateRandomSecretKey"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static loadSecretKey()Ljavax/crypto/SecretKey;
    .locals 9

    .prologue
    .line 68
    const/4 v5, 0x0

    .line 69
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x0

    .line 71
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 72
    .local v4, "keyStore":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v6, Lcn/nubia/server/appmgmt/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v6, Lcn/nubia/server/appmgmt/Encryption;->KEYSTORE_PW:[C

    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 74
    const-string v6, "key1"

    sget-object v7, Lcn/nubia/server/appmgmt/Encryption;->KEYSTORE_PW:[C

    invoke-virtual {v4, v6, v7}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object v0, v6

    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    if-eqz v3, :cond_0

    .line 80
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 86
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v5

    .line 82
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Encryption"

    const-string v7, "Encryption exception happen: loadSecretKey close stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 85
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "Encryption"

    const-string v7, "Encryption exception happen: loadSecretKey"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    if-eqz v2, :cond_1

    .line 80
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 82
    :catch_2
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Encryption"

    const-string v7, "Encryption exception happen: loadSecretKey close stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 79
    :goto_2
    if-eqz v2, :cond_2

    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 84
    :cond_2
    :goto_3
    throw v6

    .line 82
    :catch_3
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "Encryption"

    const-string v8, "Encryption exception happen: loadSecretKey close stream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "keyStore":Ljava/security/KeyStore;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 75
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method static storeSecretKey(Ljavax/crypto/SecretKey;)Z
    .locals 10
    .param p0, "secretKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 41
    const/4 v4, 0x1

    .line 42
    .local v4, "isSuccess":Z
    const/4 v2, 0x0

    .line 44
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 45
    .local v5, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 46
    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, p0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 47
    .local v1, "entry":Ljava/security/KeyStore$Entry;
    new-instance v6, Ljava/security/KeyStore$PasswordProtection;

    sget-object v7, Lcn/nubia/server/appmgmt/Encryption;->KEYSTORE_PW:[C

    invoke-direct {v6, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 48
    .local v6, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    const-string v7, "key1"

    invoke-virtual {v5, v7, v1, v6}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 49
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v7, Lcn/nubia/server/appmgmt/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Lcn/nubia/server/appmgmt/Encryption;->KEYSTORE_PW:[C

    invoke-virtual {v5, v3, v7}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz v3, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 64
    .end local v1    # "entry":Ljava/security/KeyStore$Entry;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .end local v6    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return v4

    .line 59
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "entry":Ljava/security/KeyStore$Entry;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "keyStore":Ljava/security/KeyStore;
    .restart local v6    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Encryption"

    const-string v8, "Encryption exception happen: storeSecretKey close stream"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v4, 0x0

    move-object v2, v3

    .line 63
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entry":Ljava/security/KeyStore$Entry;
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .end local v6    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v7, "Encryption"

    const-string v8, "Encryption exception happen: storeSecretKey"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    const/4 v4, 0x0

    .line 56
    if-eqz v2, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 59
    :catch_2
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Encryption"

    const-string v8, "Encryption exception happen: storeSecretKey close stream"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v4, 0x0

    .line 63
    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 56
    :goto_2
    if-eqz v2, :cond_2

    .line 57
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 62
    :cond_2
    :goto_3
    throw v7

    .line 59
    :catch_3
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "Encryption"

    const-string v9, "Encryption exception happen: storeSecretKey close stream"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v4, 0x0

    goto :goto_3

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "entry":Ljava/security/KeyStore$Entry;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "keyStore":Ljava/security/KeyStore;
    .restart local v6    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 51
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
