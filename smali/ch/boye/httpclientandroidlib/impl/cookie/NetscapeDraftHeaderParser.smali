.class public Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 8
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x3b

    const/4 v0, 0x1

    .line 79
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v3

    .line 82
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v1

    .line 83
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I

    move-result v5

    .line 87
    :goto_0
    if-ge v3, v5, :cond_0

    .line 88
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    .line 89
    const/16 v6, 0x3d

    if-ne v4, v6, :cond_1

    .line 99
    :cond_0
    :goto_1
    if-ne v3, v5, :cond_3

    .line 101
    invoke-virtual {p1, v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v0

    .line 107
    :goto_2
    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 109
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_3
    return-object v0

    .line 92
    :cond_1
    if-ne v4, v7, :cond_2

    move v2, v0

    .line 94
    goto :goto_1

    .line 96
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 97
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1, v1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 104
    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    move v1, v2

    goto :goto_2

    :cond_4
    move v2, v3

    .line 116
    :goto_4
    if-ge v2, v5, :cond_9

    .line 117
    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    .line 118
    if-ne v6, v7, :cond_5

    .line 127
    :goto_5
    if-ge v3, v2, :cond_8

    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 122
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_4

    .line 131
    :goto_6
    if-le v1, v3, :cond_6

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 132
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 134
    :cond_6
    invoke-virtual {p1, v3, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v0, :cond_7

    .line 136
    add-int/lit8 v0, v2, 0x1

    .line 138
    :goto_7
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 139
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    invoke-direct {v0, v4, v1}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_5
.end method


# virtual methods
.method public parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 5
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :goto_0
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v2

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_2
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-direct {v2, v3, v4, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V

    return-object v2
.end method
