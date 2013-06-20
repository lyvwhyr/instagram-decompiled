.class public final enum Lcom/facebook/common/i/d;
.super Ljava/lang/Enum;
.source "TriState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/i/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/common/i/d;

.field public static final enum b:Lcom/facebook/common/i/d;

.field public static final enum c:Lcom/facebook/common/i/d;

.field private static final synthetic d:[Lcom/facebook/common/i/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/facebook/common/i/d;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/i/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/i/d;->a:Lcom/facebook/common/i/d;

    .line 10
    new-instance v0, Lcom/facebook/common/i/d;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/i/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/i/d;->b:Lcom/facebook/common/i/d;

    .line 11
    new-instance v0, Lcom/facebook/common/i/d;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v4}, Lcom/facebook/common/i/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/i/d;->c:Lcom/facebook/common/i/d;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/common/i/d;

    sget-object v1, Lcom/facebook/common/i/d;->a:Lcom/facebook/common/i/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/common/i/d;->b:Lcom/facebook/common/i/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/common/i/d;->c:Lcom/facebook/common/i/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/common/i/d;->d:[Lcom/facebook/common/i/d;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/i/d;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/facebook/common/i/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/i/d;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/i/d;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/common/i/d;->d:[Lcom/facebook/common/i/d;

    invoke-virtual {v0}, [Lcom/facebook/common/i/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/i/d;

    return-object v0
.end method
