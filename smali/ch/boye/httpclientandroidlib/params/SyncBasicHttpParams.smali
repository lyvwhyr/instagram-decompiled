.class public Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;
.super Lch/boye/httpclientandroidlib/params/BasicHttpParams;
.source "SyncBasicHttpParams.java"


# static fields
.field private static final serialVersionUID:J = 0x4ac56f4476f17222L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParameterSet(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->isParameterSet(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParameterSetLocally(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->isParameterSetLocally(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeParameter(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "names"
    .parameter "value"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;->setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
