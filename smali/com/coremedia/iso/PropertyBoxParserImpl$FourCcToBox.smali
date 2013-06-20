.class Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
.super Ljava/lang/Object;
.source "PropertyBoxParserImpl.java"


# instance fields
.field private clazzName:Ljava/lang/String;

.field private param:[Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field final synthetic this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

.field private type:Ljava/lang/String;

.field private userType:[B


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/PropertyBoxParserImpl;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "userType"
    .parameter "parent"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->parent:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getClazzName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->param:[Ljava/lang/String;

    return-object v0
.end method

.method public invoke()Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    if-eqz v0, :cond_4

    .line 167
    const-string v0, "uuid"

    iget-object v1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "we have a userType but no uuid box type. Something\'s wrong"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->parent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-uuid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_3
    if-nez v0, :cond_5

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No box object found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->parent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    iget-object v1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_5
    iget-object v1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v1, v1, Lcom/coremedia/iso/PropertyBoxParserImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 191
    if-nez v2, :cond_6

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot work with that constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;

    .line 195
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->param:[Ljava/lang/String;

    .line 196
    return-object p0
.end method
