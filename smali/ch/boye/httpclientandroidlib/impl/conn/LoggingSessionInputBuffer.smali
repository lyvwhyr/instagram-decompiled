.class public Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/EofSensor;
.implements Lch/boye/httpclientandroidlib/io/SessionInputBuffer;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private final wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;)V
    .locals 1
    .parameter "in"
    .parameter "wire"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V
    .locals 1
    .parameter "in"
    .parameter "wire"
    .parameter "charset"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 68
    instance-of v0, p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_0

    check-cast p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    .end local p1
    :goto_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 69
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    .line 70
    if-eqz p3, :cond_1

    .end local p3
    :goto_1
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    .line 71
    return-void

    .line 68
    .restart local p1
    .restart local p3
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 70
    .end local p1
    :cond_1
    const-string p3, "ASCII"

    goto :goto_1
.end method


# virtual methods
.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable(I)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/EofSensor;->isEof()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    .line 91
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input(I)V

    .line 94
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 98
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([B)I

    move-result v0

    .line 99
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 100
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([BII)V

    .line 102
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 82
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 83
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([BII)V

    .line 86
    :cond_0
    return v0
.end method

.method public readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
    .locals 4
    .parameter "buffer"

    .prologue
    .line 115
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 118
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([B)V

    .line 122
    :cond_0
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([B)V

    .line 111
    :cond_0
    return-object v0
.end method
