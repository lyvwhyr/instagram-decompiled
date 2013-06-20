.class public Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException;
.super Ljava/lang/Exception;
.source "HttpCacheUpdateException.java"


# static fields
.field private static final serialVersionUID:J = 0xb6debcfdc7d692cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    return-void
.end method
