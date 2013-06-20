.class public abstract enum Lcom/a/a/b/hn;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/hn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/hn;

.field public static final enum b:Lcom/a/a/b/hn;

.field public static final enum c:Lcom/a/a/b/hn;

.field private static final synthetic d:[Lcom/a/a/b/hn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/a/a/b/ho;

    const-string v1, "NEXT_LOWER"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/ho;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hn;->a:Lcom/a/a/b/hn;

    .line 154
    new-instance v0, Lcom/a/a/b/hp;

    const-string v1, "NEXT_HIGHER"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/hp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    .line 172
    new-instance v0, Lcom/a/a/b/hq;

    const-string v1, "INVERTED_INSERTION_INDEX"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b/hq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/hn;->c:Lcom/a/a/b/hn;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/b/hn;

    sget-object v1, Lcom/a/a/b/hn;->a:Lcom/a/a/b/hn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/b/hn;->b:Lcom/a/a/b/hn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b/hn;->c:Lcom/a/a/b/hn;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/b/hn;->d:[Lcom/a/a/b/hn;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/b/hm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/hn;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/hn;
    .locals 1
    .parameter "name"

    .prologue
    .line 139
    const-class v0, Lcom/a/a/b/hn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/hn;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/hn;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/a/a/b/hn;->d:[Lcom/a/a/b/hn;

    invoke-virtual {v0}, [Lcom/a/a/b/hn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/hn;

    return-object v0
.end method


# virtual methods
.method abstract a(I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)I"
        }
    .end annotation
.end method
