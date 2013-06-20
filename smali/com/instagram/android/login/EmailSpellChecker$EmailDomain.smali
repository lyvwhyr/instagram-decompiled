.class public final enum Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;
.super Ljava/lang/Enum;
.source "EmailSpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum AOL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum COMCAST:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum GMAIL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum HOTMAIL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum HOTMAIL_FR:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum HOTMAIL_UK:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum LIVE:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum MAIL_RU:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum MSN:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

.field public static final enum YAHOO:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;


# instance fields
.field public address:Ljava/lang/String;

.field public misspellings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "HOTMAIL"

    const-string v2, "hotmail.com"

    sget-object v3, Lcom/instagram/android/login/EmailSpellChecker;->HOTMAIL_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->HOTMAIL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 18
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "YAHOO"

    const-string v2, "yahoo.com"

    sget-object v3, Lcom/instagram/android/login/EmailSpellChecker;->YAHOO_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->YAHOO:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 19
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "GMAIL"

    const-string v2, "gmail.com"

    sget-object v3, Lcom/instagram/android/login/EmailSpellChecker;->GMAIL_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->GMAIL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 20
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "AOL"

    const-string v2, "aol.com"

    sget-object v3, Lcom/instagram/android/login/EmailSpellChecker;->AOL_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->AOL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 21
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "HOTMAIL_UK"

    const-string v2, "hotmail.co.uk"

    sget-object v3, Lcom/instagram/android/login/EmailSpellChecker;->HOTMAIL_UK_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->HOTMAIL_UK:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 22
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "LIVE"

    const/4 v2, 0x5

    const-string v3, "live.com"

    sget-object v4, Lcom/instagram/android/login/EmailSpellChecker;->LIVE_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->LIVE:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 23
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "MAIL_RU"

    const/4 v2, 0x6

    const-string v3, "mail.ru"

    sget-object v4, Lcom/instagram/android/login/EmailSpellChecker;->MAIL_RU_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->MAIL_RU:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 24
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "HOTMAIL_FR"

    const/4 v2, 0x7

    const-string v3, "hotmail.fr"

    sget-object v4, Lcom/instagram/android/login/EmailSpellChecker;->HOTMAIL_FR_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->HOTMAIL_FR:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 25
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "MSN"

    const/16 v2, 0x8

    const-string v3, "msn.com"

    sget-object v4, Lcom/instagram/android/login/EmailSpellChecker;->MSN_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->MSN:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 26
    new-instance v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    const-string v1, "COMCAST"

    const/16 v2, 0x9

    const-string v3, "comcast.net"

    sget-object v4, Lcom/instagram/android/login/EmailSpellChecker;->COMCAST_MISSPELLINGS:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->COMCAST:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    sget-object v1, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->HOTMAIL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->YAHOO:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->GMAIL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v1, v0, v7

    sget-object v1, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->AOL:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v1, v0, v8

    sget-object v1, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->HOTMAIL_UK:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->LIVE:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->MAIL_RU:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->HOTMAIL_FR:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->MSN:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->COMCAST:Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->$VALUES:[Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, misspellings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->address:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->misspellings:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->$VALUES:[Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    invoke-virtual {v0}, [Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    return-object v0
.end method
