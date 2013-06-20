.class final Lcom/a/a/a/p;
.super Lcom/a/a/a/n;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/n",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/a/a/a/p;

    invoke-direct {v0}, Lcom/a/a/a/p;-><init>()V

    sput-object v0, Lcom/a/a/a/p;->a:Lcom/a/a/a/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/n;-><init>(Lcom/a/a/a/o;)V

    return-void
.end method

.method static synthetic d()Lcom/a/a/a/p;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/a/a/a/p;->a:Lcom/a/a/a/p;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "value is absent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 240
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 244
    const v0, 0x598df91c

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "Optional.absent()"

    return-object v0
.end method
