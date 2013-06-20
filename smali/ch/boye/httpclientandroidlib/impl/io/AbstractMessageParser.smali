.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/HttpMessageParser;


# static fields
.field private static final HEADERS:I = 0x1

.field private static final HEAD_LINE:I


# instance fields
.field private final headerLines:Ljava/util/List;

.field protected final lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private message:Lch/boye/httpclientandroidlib/HttpMessage;

.field private final sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private state:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "buffer"
    .parameter "parser"
    .parameter "params"

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-nez p3, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 93
    const-string v0, "http.connection.max-header-count"

    invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxHeaderCount:I

    .line 95
    const-string v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxLineLen:I

    .line 97
    if-eqz p2, :cond_2

    .end local p2
    :goto_0
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    .line 100
    return-void

    .line 97
    .restart local p2
    :cond_2
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;)[Lch/boye/httpclientandroidlib/Header;
    .locals 1
    .parameter "inbuffer"
    .parameter "maxHeaderCount"
    .parameter "maxLineLen"
    .parameter "parser"

    .prologue
    .line 127
    if-nez p3, :cond_0

    .line 128
    sget-object p3, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;

    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;
    .locals 9
    .parameter "inbuffer"
    .parameter "maxHeaderCount"
    .parameter "maxLineLen"
    .parameter "parser"
    .parameter "headerLines"

    .prologue
    const/16 v8, 0x9

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-nez p3, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Line parser may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    if-nez p4, :cond_2

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header line list may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v3, v4

    move-object v0, v4

    .line 179
    :goto_0
    if-nez v0, :cond_4

    .line 180
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 184
    :goto_1
    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v1

    .line 185
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    const/4 v5, 0x1

    if-ge v1, v5, :cond_5

    .line 218
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lch/boye/httpclientandroidlib/Header;

    .line 219
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 220
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 222
    :try_start_0
    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/message/LineParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_6

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_a

    :cond_6
    if-eqz v3, :cond_a

    move v1, v2

    .line 196
    :goto_3
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 197
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    .line 198
    if-eq v5, v7, :cond_8

    if-eq v5, v8, :cond_8

    .line 203
    :cond_7
    if-lez p2, :cond_9

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    if-le v5, p2, :cond_9

    .line 205
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 202
    goto :goto_3

    .line 207
    :cond_9
    invoke-virtual {v3, v7}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 208
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V

    move-object v1, v0

    move-object v0, v3

    .line 214
    :goto_4
    if-lez p1, :cond_b

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p1, :cond_b

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum header count exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_a
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    .line 212
    goto :goto_4

    :cond_b
    move-object v3, v0

    move-object v0, v1

    .line 217
    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_c
    return-object v1
.end method


# virtual methods
.method public parse()Lch/boye/httpclientandroidlib/HttpMessage;
    .locals 5

    .prologue
    .line 248
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    .line 249
    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent parser state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    .line 259
    :pswitch_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 266
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;

    .line 268
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    .line 270
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
.end method
