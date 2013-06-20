.class public Lch/boye/httpclientandroidlib/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderElement;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "parameters"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    .line 64
    if-eqz p3, :cond_1

    .line 65
    iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 125
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 119
    .restart local p1
    :cond_1
    instance-of v2, p1, Lch/boye/httpclientandroidlib/HeaderElement;

    if-eqz v2, :cond_3

    .line 120
    check-cast p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;

    .line 121
    .end local p1
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_3
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 1
    .parameter "index"

    .prologue
    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 4
    .parameter "name"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 108
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    aget-object v1, v1, v0

    .line 109
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 114
    :goto_1
    return-object v0

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getParameterCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0x11

    .line 131
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 132
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 133
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 141
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "="

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 147
    const-string v2, "; "

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
