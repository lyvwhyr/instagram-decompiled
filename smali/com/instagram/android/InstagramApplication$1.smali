.class final Lcom/instagram/android/InstagramApplication$1;
.super Ljava/lang/Object;
.source "InstagramApplication.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 91
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maps.googleapis.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/instagram/android/InstagramApplication;->access$000()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    .line 94
    :cond_0
    return-void
.end method
