.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.source "SingleClientConnManager.java"


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    .line 381
    iget-object v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 382
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V

    .line 389
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V

    .line 391
    :cond_0
    return-void
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V

    .line 398
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->shutdown()V

    .line 400
    :cond_0
    return-void
.end method
