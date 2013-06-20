.class public Lcom/instagram/util/ContactHelper$Contact;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# instance fields
.field private emailAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private phoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/util/ContactHelper$Contact;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/util/ContactHelper$Contact;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/util/ContactHelper$Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/util/ContactHelper$Contact;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/util/ContactHelper$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/instagram/util/ContactHelper$Contact;->firstName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/util/ContactHelper$Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/util/ContactHelper$Contact;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/instagram/util/ContactHelper$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/instagram/util/ContactHelper$Contact;->lastName:Ljava/lang/String;

    return-object p1
.end method
