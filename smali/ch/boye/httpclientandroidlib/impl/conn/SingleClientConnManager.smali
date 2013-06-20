.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected final alwaysShutDown:Z

.field protected final connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

.field protected connectionExpiresTime:J
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected volatile isShutDown:Z

.field protected lastReleaseTime:J
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

.field protected uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 3
    .parameter "schreg"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 123
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    .line 124
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 127
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 128
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 129
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .locals 0
    .parameter "params"
    .parameter "schreg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method public declared-synchronized closeExpiredConnections()V
    .locals 4

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 311
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .parameter "idletime"
    .parameter "tunit"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 319
    if-nez p3, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 326
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 328
    :try_start_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Problem closing idle connection."

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected createConnectionOperator(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
    .locals 1
    .parameter "schreg"

    .prologue
    .line 165
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 6
    .parameter "route"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    monitor-enter p0

    if-nez p1, :cond_0

    .line 207
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 211
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get connection for route "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 225
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    .line 227
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    :goto_0
    move v5, v0

    move v0, v1

    move v1, v5

    .line 238
    :goto_1
    if-eqz v1, :cond_7

    .line 241
    :try_start_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :goto_2
    if-eqz v2, :cond_4

    .line 248
    :try_start_3
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    .line 250
    :cond_4
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0, v1, p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 252
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    move v0, v1

    .line 227
    goto :goto_0

    :cond_6
    move v0, v2

    .line 235
    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Problem shutting down connection."

    invoke-virtual {v1, v3, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_7
    move v2, v0

    goto :goto_2
.end method

.method public getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public declared-synchronized releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .parameter "conn"
    .parameter "validDuration"
    .parameter "timeUnit"

    .prologue
    const-wide/16 v3, 0x0

    .line 258
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 260
    instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    .restart local p1
    :cond_0
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 270
    :cond_1
    check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 271
    .end local p1
    iget-object v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_3

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 284
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Released connection open but not reusable."

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 292
    :cond_5
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 299
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 302
    cmp-long v0, p2, v3

    if-lez v0, :cond_7

    .line 303
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_0

    .line 305
    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    :try_start_5
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Exception shutting down released connection."

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 299
    :cond_8
    :try_start_6
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 302
    cmp-long v0, p2, v3

    if-lez v0, :cond_9

    .line 303
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_0

    .line 305
    :cond_9
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto/16 :goto_0

    .line 299
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 302
    cmp-long v1, p2, v3

    if-lez v1, :cond_a

    .line 303
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_1
    throw v0

    :cond_a
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public final requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
    .locals 1
    .parameter "route"
    .parameter "state"

    .prologue
    .line 182
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected declared-synchronized revokeConnection()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 369
    :goto_0
    monitor-exit p0

    return-void

    .line 362
    :cond_0
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Problem while shutting down connection."

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    .prologue
    .line 339
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 341
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->managedConn:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Problem while shutting down manager."

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
