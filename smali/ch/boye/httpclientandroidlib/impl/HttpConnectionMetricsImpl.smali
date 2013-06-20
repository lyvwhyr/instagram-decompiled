.class public Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpConnectionMetrics;


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/HashMap;

.field private final outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)V
    .locals 2
    .parameter "inTransportMetric"
    .parameter "outTransportMetric"

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 49
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 60
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    .line 61
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    .line 62
    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "metricName"

    .prologue
    const/4 v1, 0x0

    .line 99
    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    :goto_0
    if-nez v0, :cond_0

    .line 104
    const-string v2, "http.request-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 122
    :cond_0
    :goto_1
    return-object v0

    .line 106
    :cond_1
    const-string v2, "http.response-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    .line 108
    :cond_2
    const-string v2, "http.received-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_3

    .line 110
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 112
    goto :goto_1

    .line 114
    :cond_4
    const-string v2, "http.sent-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_5

    .line 116
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 118
    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getRequestCount()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public incrementRequestCount()V
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 88
    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 96
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 133
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->reset()V

    .line 136
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->reset()V

    .line 139
    :cond_1
    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 140
    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 142
    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "metricName"
    .parameter "obj"

    .prologue
    .line 126
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    .line 129
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method
