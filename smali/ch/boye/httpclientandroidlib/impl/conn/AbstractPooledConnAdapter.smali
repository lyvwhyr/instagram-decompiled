.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# instance fields
.field protected volatile poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .parameter "manager"
    .parameter "entry"

    .prologue
    .line 63
    iget-object v0, p2, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 64
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    .line 65
    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method protected assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 85
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 88
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V

    .line 154
    :cond_1
    return-void
.end method

.method protected declared-synchronized detach()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    .line 107
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    return-object v0
.end method

.method public getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 113
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tracker:Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 170
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "context"
    .parameter "params"

    .prologue
    .line 140
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 142
    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 143
    return-void
.end method

.method public open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "route"
    .parameter "context"
    .parameter "params"

    .prologue
    .line 119
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 121
    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 122
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 174
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 176
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->shutdown()V

    .line 165
    :cond_1
    return-void
.end method

.method public tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "next"
    .parameter "secure"
    .parameter "params"

    .prologue
    .line 133
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 135
    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 136
    return-void
.end method

.method public tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "secure"
    .parameter "params"

    .prologue
    .line 126
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 128
    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 129
    return-void
.end method
