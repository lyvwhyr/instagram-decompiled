.class public Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/message/LineFormatter;


# static fields
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatHeader(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "header"
    .parameter "formatter"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    .line 278
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "version"
    .parameter "formatter"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatRequestLine(Lch/boye/httpclientandroidlib/RequestLine;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "reqline"
    .parameter "formatter"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatStatusLine(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "statline"
    .parameter "formatter"

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "version"

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    .line 112
    if-nez p1, :cond_1

    .line 113
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 118
    :goto_0
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 120
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 121
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 122
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 124
    return-object p1

    .line 115
    .restart local p1
    :cond_1
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method protected doFormatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)V
    .locals 4
    .parameter "buffer"
    .parameter "header"

    .prologue
    .line 313
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 317
    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 320
    :cond_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 322
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 323
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 324
    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 327
    :cond_1
    return-void
.end method

.method protected doFormatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)V
    .locals 5
    .parameter "buffer"
    .parameter "reqline"

    .prologue
    const/16 v4, 0x20

    .line 185
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 191
    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 193
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 195
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 197
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 198
    return-void
.end method

.method protected doFormatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 4
    .parameter "buffer"
    .parameter "statline"

    .prologue
    const/16 v3, 0x20

    .line 246
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 248
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 252
    :cond_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 254
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 255
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 256
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 258
    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 261
    :cond_1
    return-void
.end method

.method protected estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
    .locals 1
    .parameter "version"

    .prologue
    .line 138
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "header"

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    instance-of v0, p2, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v0, :cond_1

    .line 293
    check-cast p2, Lch/boye/httpclientandroidlib/FormattedHeader;

    .end local p2
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 295
    .restart local p2
    :cond_1
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    .line 296
    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->doFormatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_0
.end method

.method public formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "reqline"

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->doFormatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)V

    .line 171
    return-object v0
.end method

.method public formatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "statline"

    .prologue
    .line 223
    if-nez p2, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->doFormatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 231
    return-object v0
.end method

.method protected initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 1
    .parameter "buffer"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 78
    :goto_0
    return-object p1

    .line 76
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .end local p1
    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .restart local p1
    goto :goto_0
.end method
