.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private stopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 353
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    .line 358
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->closeSockets()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$000(Landroid/net/dhcp/DhcpClient;)V

    .line 359
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 363
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v4, "Receive thread started"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    if-nez v3, :cond_1

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, "length":I
    :try_start_0
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->access$200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    array-length v6, v6

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v2

    .line 370
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const v4, 0x30066

    invoke-virtual {v3, v4, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 372
    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-boolean v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    if-nez v3, :cond_0

    .line 374
    const-string v3, "DhcpClient"

    const-string v4, "Read error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    const-string v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v3, "DhcpClient"

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    invoke-static {v4, v7, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    .end local v0    # "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    .end local v1    # "length":I
    :cond_1
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v4, "Receive thread stopped"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 384
    return-void

    .line 372
    .restart local v1    # "length":I
    :catch_2
    move-exception v0

    goto :goto_1
.end method
