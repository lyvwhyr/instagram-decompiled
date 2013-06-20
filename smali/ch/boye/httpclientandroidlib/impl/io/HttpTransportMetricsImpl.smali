.class public Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;


# instance fields
.field private bytesTransferred:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 43
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    return-wide v0
.end method

.method public incrementBytesTransferred(J)V
    .locals 2
    .parameter "count"

    .prologue
    .line 54
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 55
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 59
    return-void
.end method

.method public setBytesTransferred(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 50
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 51
    return-void
.end method
