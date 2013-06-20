.class interface abstract Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;
.super Ljava/lang/Object;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract processResponseInBackground(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract requestFinished(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
