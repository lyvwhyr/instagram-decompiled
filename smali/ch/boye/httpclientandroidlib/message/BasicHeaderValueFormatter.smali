.class public Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;


# static fields
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter; = null

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatElements([Lch/boye/httpclientandroidlib/HeaderElement;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "elems"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 89
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    .line 90
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatHeaderElement(Lch/boye/httpclientandroidlib/HeaderElement;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "elem"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatNameValuePair(Lch/boye/httpclientandroidlib/NameValuePair;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "nvp"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 313
    if-nez p2, :cond_0

    .line 314
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    .line 315
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatParameters([Lch/boye/httpclientandroidlib/NameValuePair;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "nvps"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 245
    if-nez p2, :cond_0

    .line 246
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    .line 247
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4
    .parameter "buffer"
    .parameter "value"
    .parameter "quote"

    .prologue
    const/16 v3, 0x22

    const/4 v1, 0x0

    .line 381
    if-nez p3, :cond_0

    move v0, v1

    .line 382
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 383
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    if-eqz p3, :cond_1

    .line 388
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 390
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 391
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 392
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 395
    :cond_2
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    :cond_3
    if-eqz p3, :cond_4

    .line 398
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 400
    :cond_4
    return-void
.end method

.method protected estimateElementsLen([Lch/boye/httpclientandroidlib/HeaderElement;)I
    .locals 3
    .parameter "elems"

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    :cond_0
    move v1, v0

    .line 137
    :cond_1
    return v1

    .line 132
    :cond_2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    .line 133
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 134
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I

    move-result v2

    add-int/2addr v1, v2

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I
    .locals 4
    .parameter "elem"

    .prologue
    const/4 v1, 0x0

    .line 206
    if-nez p1, :cond_1

    move v0, v1

    .line 224
    :cond_0
    return v0

    .line 209
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 210
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    .line 216
    :cond_2
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterCount()I

    move-result v2

    .line 217
    if-lez v2, :cond_0

    .line 218
    :goto_0
    if-ge v1, v2, :cond_0

    .line 219
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I
    .locals 2
    .parameter "nvp"

    .prologue
    .line 354
    if-nez p1, :cond_1

    .line 355
    const/4 v0, 0x0

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 358
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected estimateParametersLen([Lch/boye/httpclientandroidlib/NameValuePair;)I
    .locals 3
    .parameter "nvps"

    .prologue
    const/4 v0, 0x0

    .line 286
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    :cond_0
    move v1, v0

    .line 294
    :cond_1
    return v1

    .line 289
    :cond_2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    .line 290
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 291
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public formatElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "elems"
    .parameter "quote"

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header element array must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateElementsLen([Lch/boye/httpclientandroidlib/HeaderElement;)I

    move-result v0

    .line 104
    if-nez p1, :cond_2

    .line 105
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 110
    .restart local p1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 111
    if-lez v0, :cond_1

    .line 112
    const-string v1, ", "

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 114
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 117
    :cond_3
    return-object p1
.end method

.method public formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 3
    .parameter "buffer"
    .parameter "elem"
    .parameter "quote"

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header element must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I

    move-result v0

    .line 173
    if-nez p1, :cond_2

    .line 174
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 179
    .restart local p1
    :goto_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 180
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 183
    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 186
    :cond_1
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterCount()I

    move-result v1

    .line 187
    if-lez v1, :cond_3

    .line 188
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 189
    const-string v2, "; "

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 190
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 194
    :cond_3
    return-object p1
.end method

.method public formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "nvp"
    .parameter "quote"

    .prologue
    .line 323
    if-nez p2, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NameValuePair must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v0

    .line 329
    if-nez p1, :cond_2

    .line 330
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 335
    .restart local p1
    :goto_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 336
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    .line 338
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 339
    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 342
    :cond_1
    return-object p1

    .line 332
    :cond_2
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public formatParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2
    .parameter "buffer"
    .parameter "nvps"
    .parameter "quote"

    .prologue
    .line 255
    if-nez p2, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateParametersLen([Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v0

    .line 261
    if-nez p1, :cond_2

    .line 262
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 267
    .restart local p1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 268
    if-lez v0, :cond_1

    .line 269
    const-string v1, "; "

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 271
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 274
    :cond_3
    return-object p1
.end method

.method protected isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 412
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnsafe(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 425
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
