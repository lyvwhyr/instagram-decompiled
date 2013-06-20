.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final created:J

.field private expiry:J

.field private updated:J

.field private validUntil:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 6
    .parameter "op"
    .parameter "route"

    .prologue
    .line 76
    const-wide/16 v3, -0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .parameter "op"
    .parameter "route"
    .parameter "connTTL"
    .parameter "timeunit"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 92
    if-nez p2, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 97
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    .line 101
    :goto_0
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    .line 102
    return-void

    .line 99
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    goto :goto_0
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .parameter "op"
    .parameter "route"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;",
            "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    .local p3, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J

    .line 64
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    .line 65
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    .line 66
    return-void
.end method


# virtual methods
.method protected final getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J

    return-wide v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    return-wide v0
.end method

.method protected final getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updated:J

    return-wide v0
.end method

.method public getValidUntil()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    return-wide v0
.end method

.method protected final getWeakRef()Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntryRef;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExpired(J)Z
    .locals 2
    .parameter "now"

    .prologue
    .line 165
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shutdownEntry()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 120
    return-void
.end method

.method public updateExpiry(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .parameter "time"
    .parameter "timeunit"

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updated:J

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 154
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updated:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 158
    :goto_0
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    .line 159
    return-void

    .line 156
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method
