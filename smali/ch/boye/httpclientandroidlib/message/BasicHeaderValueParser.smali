.class public Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/message/HeaderValueParser;


# static fields
.field private static final ALL_DELIMITERS:[C = null

.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser; = null

.field private static final ELEM_DELIMITER:C = ','

.field private static final PARAM_DELIMITER:C = ';'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x2ct 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf(C[C)Z
    .locals 3
    .parameter "ch"
    .parameter "chs"

    .prologue
    const/4 v1, 0x0

    .line 288
    if-eqz p1, :cond_0

    move v0, v1

    .line 289
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 290
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_1

    .line 291
    const/4 v1, 0x1

    .line 295
    :cond_0
    return v1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final parseElements(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)[Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 4
    .parameter "value"
    .parameter "parser"

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 86
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    .line 88
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 89
    invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 90
    new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 91
    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public static final parseHeaderElement(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 4
    .parameter "value"
    .parameter "parser"

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    if-nez p1, :cond_1

    .line 137
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    .line 139
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 140
    invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 141
    new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 142
    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public static final parseNameValuePair(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 4
    .parameter "value"
    .parameter "parser"

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    if-nez p1, :cond_1

    .line 272
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    .line 274
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 275
    invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 276
    new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 277
    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public static final parseParameters(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)[Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 4
    .parameter "value"
    .parameter "parser"

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 202
    sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    .line 204
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 205
    invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 206
    new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 207
    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 1
    .parameter "name"
    .parameter "value"
    .parameter "params"

    .prologue
    .line 179
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 399
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 3
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 110
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lch/boye/httpclientandroidlib/HeaderElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/HeaderElement;

    check-cast v0, [Lch/boye/httpclientandroidlib/HeaderElement;

    return-object v0
.end method

.method public parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 4
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    if-nez p2, :cond_1

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v1

    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 161
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    .line 162
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    .line 165
    :cond_2
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 1
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 284
    sget-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;[C)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;[C)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 12
    .parameter "buffer"
    .parameter "cursor"
    .parameter "delimiters"

    .prologue
    const/16 v11, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    if-nez p2, :cond_1

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v5

    .line 312
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v0

    .line 313
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I

    move-result v9

    .line 317
    :goto_0
    if-ge v5, v9, :cond_10

    .line 318
    invoke-virtual {p1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 319
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    move v3, v2

    .line 329
    :goto_1
    if-ne v5, v9, :cond_4

    .line 331
    invoke-virtual {p1, v0, v9}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move v3, v1

    .line 337
    :goto_2
    if-eqz v3, :cond_5

    .line 338
    invoke-virtual {p2, v5}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    .line 386
    :goto_3
    return-object v0

    .line 322
    :cond_2
    invoke-static {v3, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 324
    goto :goto_1

    .line 326
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 327
    goto :goto_0

    .line 333
    :cond_4
    invoke-virtual {p1, v0, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    add-int/lit8 v5, v5, 0x1

    move-object v8, v0

    goto :goto_2

    :cond_5
    move v7, v2

    move v0, v2

    move v4, v5

    .line 348
    :goto_4
    if-ge v4, v9, :cond_f

    .line 349
    invoke-virtual {p1, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v10

    .line 350
    if-ne v10, v11, :cond_e

    if-nez v7, :cond_e

    .line 351
    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    move v6, v0

    .line 353
    :goto_6
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    invoke-static {v10, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    move v2, v5

    .line 367
    :goto_8
    if-ge v2, v4, :cond_d

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_6
    move v0, v2

    .line 351
    goto :goto_5

    .line 357
    :cond_7
    if-eqz v7, :cond_8

    move v0, v2

    .line 362
    :goto_9
    add-int/lit8 v4, v4, 0x1

    move v7, v0

    move v0, v6

    .line 363
    goto :goto_4

    .line 360
    :cond_8
    if-eqz v6, :cond_9

    const/16 v0, 0x5c

    if-ne v10, v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    goto :goto_9

    .line 371
    :goto_a
    if-le v0, v2, :cond_a

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 372
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 375
    :cond_a
    sub-int v3, v0, v2

    const/4 v5, 0x2

    if-lt v3, v5, :cond_b

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_b

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_b

    .line 378
    add-int/lit8 v2, v2, 0x1

    .line 379
    add-int/lit8 v0, v0, -0x1

    .line 381
    :cond_b
    invoke-virtual {p1, v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 382
    if-eqz v1, :cond_c

    .line 383
    add-int/lit8 v0, v4, 0x1

    .line 385
    :goto_b
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 386
    invoke-virtual {p0, v8, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    move v0, v4

    goto :goto_b

    :cond_d
    move v0, v4

    goto :goto_a

    :cond_e
    move v6, v0

    goto :goto_6

    :cond_f
    move v1, v3

    goto :goto_7

    :cond_10
    move v3, v2

    goto/16 :goto_1
.end method

.method public parseParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 3
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    if-nez p2, :cond_1

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v0

    .line 224
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 226
    :goto_0
    if-ge v0, v1, :cond_2

    .line 227
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 228
    invoke-static {v2}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 233
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 235
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    .line 249
    :goto_1
    return-object v0

    .line 239
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    :cond_4
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_5

    .line 241
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v1

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 244
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 249
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    goto :goto_1
.end method
