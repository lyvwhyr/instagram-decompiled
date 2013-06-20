.class Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;
.super Ljava/lang/Object;
.source "WarningValue.java"


# static fields
.field private static final ASCTIME_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}"

.field private static final DATE1:Ljava/lang/String; = "\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}"

.field private static final DATE2:Ljava/lang/String; = "\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}"

.field private static final DATE3:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d"

.field private static final DOMAINLABEL:Ljava/lang/String; = "\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final HOST:Ljava/lang/String; = "((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+)"

.field private static final HOSTNAME:Ljava/lang/String; = "(\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?"

.field private static final HOSTPORT:Ljava/lang/String; = "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

.field private static final HOSTPORT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_DATE:Ljava/lang/String; = "((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4})"

.field private static final IPV4ADDRESS:Ljava/lang/String; = "\\d+\\.\\d+\\.\\d+\\.\\d+"

.field private static final MONTH:Ljava/lang/String; = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"

.field private static final PORT:Ljava/lang/String; = "\\d*"

.field private static final RFC1123_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final RFC850_DATE:Ljava/lang/String; = "(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final TIME:Ljava/lang/String; = "\\d{2}:\\d{2}:\\d{2}"

.field private static final TOPLABEL:Ljava/lang/String; = "\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final WARN_DATE:Ljava/lang/String; = "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

.field private static final WARN_DATE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final WEEKDAY:Ljava/lang/String; = "Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"

.field private static final WKDAY:Ljava/lang/String; = "Mon|Tue|Wed|Thu|Fri|Sat|Sun"


# instance fields
.field private init_offs:I

.field private offs:I

.field private src:Ljava/lang/String;

.field private warnAgent:Ljava/lang/String;

.field private warnCode:I

.field private warnDate:Ljava/util/Date;

.field private warnText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    .line 245
    const-string v0, "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "s"
    .parameter "offs"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->init_offs:I

    iput p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 60
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnValue()V

    .line 62
    return-void
.end method

.method public static getWarningValues(Lch/boye/httpclientandroidlib/Header;)[Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;
    .locals 5
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 76
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 78
    :try_start_0
    new-instance v4, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    invoke-direct {v4, v3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget v0, v4, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    const/16 v4, 0x2c

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 83
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 87
    :cond_0
    new-array v0, v1, [Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    .line 88
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    return-object v0

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0
.end method

.method private isChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 121
    .line 122
    if-ltz p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isControl(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 130
    .line 131
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 141
    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTokenChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseError()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->init_offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad warn code \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected consumeCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 281
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_1

    .line 283
    :cond_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 285
    :cond_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 286
    return-void
.end method

.method protected consumeHostPort()V
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 176
    :cond_1
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 177
    return-void
.end method

.method protected consumeLinearWhitespace()V
    .locals 2

    .prologue
    .line 96
    :goto_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 115
    :cond_0
    return-void

    .line 99
    :sswitch_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 105
    :cond_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 113
    :sswitch_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method protected consumeQuotedString()V
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 204
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 205
    :cond_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 206
    const/4 v0, 0x0

    .line 207
    :goto_0
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-nez v0, :cond_4

    .line 208
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 209
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    .line 212
    :cond_1
    if-ne v1, v4, :cond_2

    .line 213
    const/4 v0, 0x1

    .line 214
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    .line 215
    :cond_2
    if-eq v1, v4, :cond_3

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    .line 218
    :cond_3
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    goto :goto_0

    .line 221
    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 222
    :cond_5
    return-void
.end method

.method protected consumeToken()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 153
    :cond_0
    :goto_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    :cond_1
    return-void

    .line 155
    :cond_2
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_0
.end method

.method protected consumeWarnAgent()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 185
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeHostPort()V

    .line 188
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 189
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 194
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeToken()V

    .line 195
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V

    goto :goto_0
.end method

.method protected consumeWarnCode()V
    .locals 3

    .prologue
    .line 292
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 297
    :cond_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 299
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    .line 300
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 301
    return-void
.end method

.method protected consumeWarnDate()V
    .locals 4

    .prologue
    .line 251
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 252
    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    .line 254
    :cond_0
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 256
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "couldn\'t parse a parseable date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected consumeWarnText()V
    .locals 3

    .prologue
    .line 228
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    .line 229
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeQuotedString()V

    .line 230
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    .line 231
    return-void
.end method

.method protected consumeWarnValue()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 266
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    .line 267
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnCode()V

    .line 268
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnAgent()V

    .line 269
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnText()V

    .line 270
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 272
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnDate()V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    .line 275
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 276
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 278
    :cond_1
    return-void
.end method

.method public getWarnAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnCode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    return v0
.end method

.method public getWarnDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    return-object v0
.end method

.method public getWarnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "%d %s %s \"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%d %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
