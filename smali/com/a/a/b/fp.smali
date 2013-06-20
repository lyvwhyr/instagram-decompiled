.class abstract enum Lcom/a/a/b/fp;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/fp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/fp;

.field public static final enum b:Lcom/a/a/b/fp;

.field public static final enum c:Lcom/a/a/b/fp;

.field public static final enum d:Lcom/a/a/b/fp;

.field public static final enum e:Lcom/a/a/b/fp;

.field private static final synthetic f:[Lcom/a/a/b/fp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 847
    new-instance v0, Lcom/a/a/b/fq;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/fq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/fp;->a:Lcom/a/a/b/fp;

    .line 860
    new-instance v0, Lcom/a/a/b/fr;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/fr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/fp;->b:Lcom/a/a/b/fp;

    .line 872
    new-instance v0, Lcom/a/a/b/fs;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b/fs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/fp;->c:Lcom/a/a/b/fp;

    .line 883
    new-instance v0, Lcom/a/a/b/ft;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b/ft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/fp;->d:Lcom/a/a/b/fp;

    .line 894
    new-instance v0, Lcom/a/a/b/fu;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b/fu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/fp;->e:Lcom/a/a/b/fp;

    .line 842
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/b/fp;

    sget-object v1, Lcom/a/a/b/fp;->a:Lcom/a/a/b/fp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/b/fp;->b:Lcom/a/a/b/fp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b/fp;->c:Lcom/a/a/b/fp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/b/fp;->d:Lcom/a/a/b/fp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/b/fp;->e:Lcom/a/a/b/fp;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/a/b/fp;->f:[Lcom/a/a/b/fp;

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
    .line 842
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/b/fm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/fp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/fp;
    .locals 1
    .parameter "name"

    .prologue
    .line 842
    const-class v0, Lcom/a/a/b/fp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fp;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/fp;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lcom/a/a/b/fp;->f:[Lcom/a/a/b/fp;

    invoke-virtual {v0}, [Lcom/a/a/b/fp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/fp;

    return-object v0
.end method
