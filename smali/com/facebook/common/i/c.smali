.class public Lcom/facebook/common/i/c;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static areStringsEqualEmptyAndNullEquivalent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/a/a/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "args"

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/facebook/common/i/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUTf8([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/a/a/a/b;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hash64(Ljava/lang/String;)J
    .locals 6
    .parameter "string"

    .prologue
    .line 61
    const-wide v1, 0x3ffffffffffe5L

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 65
    const-wide/16 v4, 0x1f

    mul-long/2addr v1, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-wide v1
.end method

.method public static varargs isAnyEmptyOrNull([Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "charSequences"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {p0}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    array-length v2, p0

    move v1, v0

    .line 28
    :goto_0
    if-ge v1, v2, :cond_0

    .line 29
    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/facebook/common/i/c;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/facebook/common/i/c;->isEmptyAfterTrimOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyAfterTrimOrNull(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-static {p0}, Lcom/facebook/common/i/c;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 109
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 104
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 105
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toUTf8(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 54
    :try_start_0
    sget-object v0, Lcom/a/a/a/b;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static trimRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "s"

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 73
    :goto_0
    if-le v0, v1, :cond_0

    .line 74
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 82
    .end local p0
    :goto_1
    return-object p0

    .line 77
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "length"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/a/a/a/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 135
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v1, p1, v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
