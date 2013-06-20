.class abstract enum Lcom/a/a/b/br;
.super Ljava/lang/Enum;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/br;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/br;

.field public static final enum b:Lcom/a/a/b/br;

.field public static final enum c:Lcom/a/a/b/br;

.field private static final synthetic d:[Lcom/a/a/b/br;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    new-instance v0, Lcom/a/a/b/bs;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/bs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    .line 309
    new-instance v0, Lcom/a/a/b/bt;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/br;->b:Lcom/a/a/b/br;

    .line 322
    new-instance v0, Lcom/a/a/b/bu;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b/bu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/br;->c:Lcom/a/a/b/br;

    .line 290
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/b/br;

    sget-object v1, Lcom/a/a/b/br;->a:Lcom/a/a/b/br;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/b/br;->b:Lcom/a/a/b/br;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b/br;->c:Lcom/a/a/b/br;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/b/br;->d:[Lcom/a/a/b/br;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/b/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/br;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/br;
    .locals 1
    .parameter "name"

    .prologue
    .line 290
    const-class v0, Lcom/a/a/b/br;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/br;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/br;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/a/a/b/br;->d:[Lcom/a/a/b/br;

    invoke-virtual {v0}, [Lcom/a/a/b/br;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/br;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lcom/a/a/b/bl;Lcom/a/a/b/bk;Ljava/lang/Object;)Lcom/a/a/b/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/bl",
            "<TK;TV;>;",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;TV;)",
            "Lcom/a/a/b/cb",
            "<TK;TV;>;"
        }
    .end annotation
.end method
