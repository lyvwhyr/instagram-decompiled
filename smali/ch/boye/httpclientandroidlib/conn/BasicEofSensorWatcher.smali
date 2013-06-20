.class public Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected final managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V
    .locals 2
    .parameter "conn"
    .parameter "reuse"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 63
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z

    .line 64
    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "wrapped"

    .prologue
    .line 70
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V

    .line 79
    const/4 v0, 0x0

    return v0

    .line 77
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "wrapped"

    .prologue
    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->abortConnection()V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "wrapped"

    .prologue
    .line 86
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V

    .line 95
    const/4 v0, 0x0

    return v0

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V

    throw v0
.end method
