.class public Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;
.super Lch/boye/httpclientandroidlib/entity/StringEntity;
.source "UrlEncodedFormEntity.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, parameters:Ljava/util/List;,"Ljava/util/List<+Lch/boye/httpclientandroidlib/NameValuePair;>;"
    const-string v0, "ISO-8859-1"

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, parameters:Ljava/util/List;,"Ljava/util/List<+Lch/boye/httpclientandroidlib/NameValuePair;>;"
    invoke-static {p1, p2}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lch/boye/httpclientandroidlib/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 62
    return-void

    .line 60
    .restart local p2
    :cond_0
    const-string p2, "ISO-8859-1"

    goto :goto_0
.end method
