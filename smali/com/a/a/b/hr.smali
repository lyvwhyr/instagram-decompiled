.class public abstract enum Lcom/a/a/b/hr;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/hr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/hr;

.field public static final enum b:Lcom/a/a/b/hr;

.field public static final enum c:Lcom/a/a/b/hr;

.field public static final enum d:Lcom/a/a/b/hr;

.field public static final enum e:Lcom/a/a/b/hr;

.field private static final synthetic f:[Lcom/a/a/b/hr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/a/a/b/hs;

    const-string v1, "ANY_PRESENT"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/hs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    .line 63
    new-instance v0, Lcom/a/a/b/ht;

    const-string v1, "LAST_PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/ht;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hr;->b:Lcom/a/a/b/hr;

    .line 87
    new-instance v0, Lcom/a/a/b/hu;

    const-string v1, "FIRST_PRESENT"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b/hu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hr;->c:Lcom/a/a/b/hr;

    .line 113
    new-instance v0, Lcom/a/a/b/hv;

    const-string v1, "FIRST_AFTER"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b/hv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hr;->d:Lcom/a/a/b/hr;

    .line 124
    new-instance v0, Lcom/a/a/b/hw;

    const-string v1, "LAST_BEFORE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b/hw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hr;->e:Lcom/a/a/b/hr;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/b/hr;

    sget-object v1, Lcom/a/a/b/hr;->a:Lcom/a/a/b/hr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/b/hr;->b:Lcom/a/a/b/hr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b/hr;->c:Lcom/a/a/b/hr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/b/hr;->d:Lcom/a/a/b/hr;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/b/hr;->e:Lcom/a/a/b/hr;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/a/b/hr;->f:[Lcom/a/a/b/hr;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/b/hm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/hr;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/hr;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/a/a/b/hr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/hr;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/hr;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/a/a/b/hr;->f:[Lcom/a/a/b/hr;

    invoke-virtual {v0}, [Lcom/a/a/b/hr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/hr;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation
.end method
