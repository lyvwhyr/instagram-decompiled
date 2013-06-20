.class public Lorg/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .parameter "str"
    .parameter "delimiters"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 201
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 202
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 216
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 201
    .restart local p0
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 207
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 208
    aget-char v5, v4, v0

    .line 209
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 207
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 211
    :cond_4
    if-eqz v2, :cond_3

    .line 212
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v1

    .line 213
    goto :goto_3

    .line 216
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "delimiters"

    .prologue
    .line 270
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 271
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 275
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 270
    .restart local p0
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9
    .parameter "str"
    .parameter "delimiters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    .end local p0
    :goto_0
    return-object p0

    .line 455
    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_1

    .line 456
    const-string p0, ""

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 459
    div-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [C

    move v4, v2

    move v0, v1

    move v3, v2

    .line 462
    :goto_1
    if-ge v4, v5, :cond_4

    .line 463
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 465
    invoke-static {v7, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v1

    .line 462
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 467
    :cond_3
    if-eqz v0, :cond_2

    .line 468
    add-int/lit8 v0, v3, 0x1

    aput-char v7, v6, v3

    move v3, v0

    move v0, v2

    .line 469
    goto :goto_2

    .line 474
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v6, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method private static isDelimiter(C[C)Z
    .locals 4
    .parameter "ch"
    .parameter "delimiters"

    .prologue
    const/4 v0, 0x0

    .line 486
    if-nez p1, :cond_1

    .line 487
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-char v3, p1, v1

    .line 490
    if-ne p0, v3, :cond_2

    .line 491
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    .end local p0
    :goto_0
    return-object p0

    .line 371
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 373
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 375
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 376
    aget-char v4, v3, v0

    .line 377
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    .line 375
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 381
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    .line 382
    goto :goto_2

    .line 383
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 384
    if-eqz v2, :cond_3

    .line 385
    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    .line 386
    goto :goto_2

    .line 388
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v3, v0

    goto :goto_2

    .line 391
    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    goto :goto_2

    .line 394
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .parameter "str"
    .parameter "delimiters"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 326
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 327
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 341
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 326
    .restart local p0
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 332
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 333
    aget-char v5, v4, v0

    .line 334
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 332
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 336
    :cond_4
    if-eqz v2, :cond_3

    .line 337
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v1

    .line 338
    goto :goto_3

    .line 341
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "wrapLength"

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "wrapLength"
    .parameter "newLineStr"
    .parameter "wrapLongWords"

    .prologue
    const/16 v4, 0x20

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 92
    :cond_0
    if-nez p2, :cond_1

    .line 93
    sget-object p2, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 95
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 96
    const/4 p1, 0x1

    .line 98
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 99
    const/4 v0, 0x0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    :goto_1
    sub-int v3, v1, v0

    if-le v3, p1, :cond_7

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    goto :goto_1

    .line 107
    :cond_3
    add-int v3, p1, v0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 109
    if-lt v3, v0, :cond_4

    .line 111
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 117
    :cond_4
    if-eqz p3, :cond_5

    .line 119
    add-int v3, p1, v0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/2addr v0, p1

    goto :goto_1

    .line 124
    :cond_5
    add-int v3, p1, v0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 125
    if-ltz v3, :cond_6

    .line 126
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 130
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 131
    goto :goto_1

    .line 138
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
