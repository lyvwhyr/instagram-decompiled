.class public Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;


# instance fields
.field private exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    .line 62
    return-void
.end method

.method private isForPublicSuffix(Lch/boye/httpclientandroidlib/cookie/Cookie;)Z
    .locals 6
    .parameter "cookie"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 121
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    .line 115
    :cond_3
    const-string v3, "*."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_4
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 117
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    :goto_1
    move v0, v1

    .line 121
    goto :goto_0

    .line 118
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_1
.end method


# virtual methods
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
    .locals 1
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lch/boye/httpclientandroidlib/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .parameter "cookie"
    .parameter "value"

    .prologue
    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, exceptions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    .line 81
    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, suffixes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    .line 72
    return-void
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .locals 1
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 96
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    .line 97
    return-void
.end method
