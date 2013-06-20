.class public Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderElementIterator;


# instance fields
.field private buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

.field private cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

.field private final headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

.field private final parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
    .locals 1
    .parameter "headerIterator"

    .prologue
    .line 71
    sget-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;-><init>(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)V
    .locals 2
    .parameter "headerIterator"
    .parameter "parser"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    .line 50
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 51
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-nez p2, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    .line 66
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;

    .line 67
    return-void
.end method

.method private bufferHeaderValue()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 76
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 78
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 80
    instance-of v0, v1, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 81
    check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 82
    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v3, v2}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    check-cast v1, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 89
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    goto :goto_0
.end method

.method private parseNextElement()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_6

    .line 100
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :cond_2
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    .line 105
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_0

    .line 107
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_7

    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 111
    :cond_5
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    .line 123
    :cond_6
    return-void

    .line 116
    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 119
    iput-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 129
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->nextElement()Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 137
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    .line 143
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
