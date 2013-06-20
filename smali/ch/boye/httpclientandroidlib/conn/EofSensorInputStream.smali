.class public Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;)V
    .locals 2
    .parameter "in"
    .parameter "watcher"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    .line 96
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    .line 97
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    .line 291
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 292
    return-void
.end method

.method public available()I
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :cond_0
    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 175
    throw v0
.end method

.method protected checkAbort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 263
    const/4 v0, 0x1

    .line 264
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 265
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_1
    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 272
    :cond_2
    return-void

    .line 269
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected checkClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x1

    .line 236
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 237
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    .line 238
    :cond_0
    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_1
    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 244
    :cond_2
    return-void

    .line 241
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected checkEOF(I)V
    .locals 3
    .parameter "eof"

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    .line 209
    const/4 v0, 0x1

    .line 210
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 211
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 218
    :cond_2
    return-void

    .line 215
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    .line 186
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkClose()V

    .line 187
    return-void
.end method

.method protected isReadAllowed()Z
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 117
    const/4 v0, -0x1

    .line 119
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 125
    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 151
    const/4 v0, -0x1

    .line 153
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 156
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 159
    throw v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 134
    const/4 v0, -0x1

    .line 136
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 139
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 142
    throw v0
.end method

.method public releaseConnection()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->close()V

    .line 279
    return-void
.end method
