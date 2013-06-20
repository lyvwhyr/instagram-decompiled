.class public Lcom/instagram/android/login/EmailSpellChecker;
.super Ljava/lang/Object;
.source "EmailSpellChecker.java"


# static fields
.field protected static final AOL_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final COMCAST_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final GMAIL_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final HOTMAIL_FR_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final HOTMAIL_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final HOTMAIL_UK_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final LIVE_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MAIL_RU_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MSN_MISSPELLINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final YAHOO_MISSPELLINGS:Ljava/util/List;
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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hotmil.com"

    aput-object v1, v0, v3

    const-string v1, "hotmai.com"

    aput-object v1, v0, v4

    const-string v1, "homail.com"

    aput-object v1, v0, v5

    const-string v1, "hitmail.com"

    aput-object v1, v0, v6

    const-string v1, "hotmail.co"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hotmal.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hormail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hotnail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hotmail.con"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hotmsil.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hotmaill.com"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hotmail.cim"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hoymail.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hotmaol.com"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hotmail.com."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hotmaik.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "htmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hotmaul.com"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hotmail.comm"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hotamail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hotmeil.com"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hotail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gotmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "jotmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "hatmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "hptmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hotmaii.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hotmail.cm"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "hotmail.clm"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "hotmail.come"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "hotmail.co."

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "hotmail.cpm"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "hotmaiil.com"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "hotmail.comi"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "hotmaim.com"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "hotmaio.com"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "hotmail.om"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "hotmail.col"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "hotmail.como"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "hotmmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "hotmail.coml"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "hotmailm.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "hottmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "hotimail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "hootmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "otmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "hotmail.coma"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "hotmall.com"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "botmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "hotmail.comp"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "hotmail.comu"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "hotmail.cok"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "hogmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "hotmaip.com"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "hotmail.com.com"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "hotmial.com"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "hotamil.com"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "hotmail.comcom"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "hotmali.com"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "hotma.com"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "hotmel.com"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "hotmile.com"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->HOTMAIL_MISSPELLINGS:Ljava/util/List;

    .line 95
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gmai.com"

    aput-object v1, v0, v3

    const-string v1, "gmail.co"

    aput-object v1, v0, v4

    const-string v1, "gmail.con"

    aput-object v1, v0, v5

    const-string v1, "gmil.com"

    aput-object v1, v0, v6

    const-string v1, "gmal.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "gmail.cim"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gmsil.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gmaill.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gamail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gemail.com"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "gmail.com."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "gimail.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "gmail.comm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "g-mail.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "g.mail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "tmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "gmaik.com"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "gail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gmaol.com"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "gmaul.com"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "fmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gmail.come"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "jmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gmail.cm"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "gmail.clm"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "gmail.cpm"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "gmeil.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "gmail.co."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "gmail.om"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "gmail.col"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gmall.com"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "gmail.comi"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "gmaiil.com"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "gmail.coml"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "gmaim.com"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "gmail.como"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "gnail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "gmail.com.com"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "gamil.com"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "gmail.net"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "gmial.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "gmail.comcom"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "gmali.com"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->GMAIL_MISSPELLINGS:Ljava/util/List;

    .line 105
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yahoo.co"

    aput-object v1, v0, v3

    const-string v1, "yaho.com"

    aput-object v1, v0, v4

    const-string v1, "yahoo.con"

    aput-object v1, v0, v5

    const-string v1, "yhoo.com"

    aput-object v1, v0, v6

    const-string v1, "yahho.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "yahooo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tahoo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "uahoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "yahoo.comm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "yaoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "yahoo.cim"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "yahoo.com."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "yahoo.cm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "yahoo.come"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "yahoi.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "yahool.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "yohoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "yahoo.cpm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "yahoo.co."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "yahop.com"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "yahoo.om"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "yahhoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "yahoo.clm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "yajoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "yaboo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "yahio.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ahoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "yahpo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "yahoo.comi"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "yagoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "yahoom.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "yahoo.cok"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "yahol.com"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "yahoo.coom"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "yahoo.com.com"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "yhaoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "yahoo.comcom"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->YAHOO_MISSPELLINGS:Ljava/util/List;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ail.com"

    aput-object v1, v0, v3

    const-string v1, "aol.con"

    aput-object v1, v0, v4

    const-string v1, "ol.com"

    aput-object v1, v0, v5

    const-string v1, "apl.com"

    aput-object v1, v0, v6

    const-string v1, "sol.com"

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->AOL_MISSPELLINGS:Ljava/util/List;

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hotmail.co.ul"

    aput-object v1, v0, v3

    const-string v1, "homail.co.uk"

    aput-object v1, v0, v4

    const-string v1, "hitmail.co.uk"

    aput-object v1, v0, v5

    const-string v1, "hotmail.co.ik"

    aput-object v1, v0, v6

    const-string v1, "hotnail.co.uk"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hotmail.co.uj"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hotmai.co.uk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hormail.co.uk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hotmail.com.uk"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->HOTMAIL_UK_MISSPELLINGS:Ljava/util/List;

    .line 124
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "live.con"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->LIVE_MISSPELLINGS:Ljava/util/List;

    .line 128
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mail.ri"

    aput-object v1, v0, v3

    const-string v1, "mai.ru"

    aput-object v1, v0, v4

    const-string v1, "mail.ry"

    aput-object v1, v0, v5

    const-string v1, "maul.ru"

    aput-object v1, v0, v6

    const-string v1, "mail.tu"

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->MAIL_RU_MISSPELLINGS:Ljava/util/List;

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hotmail.fi"

    aput-object v1, v0, v3

    const-string v1, "hotmail.fe"

    aput-object v1, v0, v4

    const-string v1, "hotmai.fr"

    aput-object v1, v0, v5

    const-string v1, "hotmail.ft"

    aput-object v1, v0, v6

    const-string v1, "homail.fr"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hormail.fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hotmail.dr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hotmail.ff"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->HOTMAIL_FR_MISSPELLINGS:Ljava/util/List;

    .line 137
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "man.com"

    aput-object v1, v0, v3

    const-string v1, "msm.com"

    aput-object v1, v0, v4

    const-string v1, "msn.con"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->MSN_MISSPELLINGS:Ljava/util/List;

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "comast.net"

    aput-object v1, v0, v3

    const-string v1, "concast.net"

    aput-object v1, v0, v4

    const-string v1, "comcast.ne"

    aput-object v1, v0, v5

    const-string v1, "comcast.met"

    aput-object v1, v0, v6

    const-string v1, "comcat.net"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "comcast.ney"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "comcast.ner"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "comcas.net"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/login/EmailSpellChecker;->COMCAST_MISSPELLINGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static suggestDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "domain"

    .prologue
    .line 67
    invoke-static {}, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->values()[Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 68
    iget-object v4, v3, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->misspellings:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    iget-object v0, v3, Lcom/instagram/android/login/EmailSpellChecker$EmailDomain;->address:Ljava/lang/String;

    .line 72
    :goto_1
    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static suggestEmail(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .parameter "emailEditText"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/login/EmailSpellChecker;->suggestEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static suggestEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "email"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    array-length v2, v1

    if-eq v2, v3, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    aget-object v2, v1, v5

    invoke-static {v2}, Lcom/instagram/android/login/EmailSpellChecker;->suggestDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 58
    const-string v0, "%s@%s"

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v1, v1, v4

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Lcom/facebook/common/i/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
