.class public interface abstract Lcom/instagram/android/http/ListenableHttpDownloader$DownloadListener;
.super Ljava/lang/Object;
.source "ListenableHttpDownloader.java"


# virtual methods
.method public abstract onBytesReceived([BI)V
.end method

.method public abstract onCompleted()V
.end method

.method public abstract onError()V
.end method

.method public abstract onHeadersReceived(Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;J)V
.end method

.method public abstract onRequestStarted()V
.end method
