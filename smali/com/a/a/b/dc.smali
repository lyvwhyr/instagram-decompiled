.class final Lcom/a/a/b/dc;
.super Lcom/a/a/b/go;
.source "ImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/go",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/a/a/b/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dg",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/a/a/b/dg;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/a/a/b/dg",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b/go;-><init>([Ljava/lang/Object;II)V

    .line 38
    iput-object p2, p0, Lcom/a/a/b/dc;->a:Lcom/a/a/b/dg;

    .line 39
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 44
    .local p0, this:Lcom/a/a/b/dc;,"Lcom/a/a/b/dc<TE;>;"
    iget-object v0, p0, Lcom/a/a/b/dc;->a:Lcom/a/a/b/dg;

    invoke-virtual {v0, p1}, Lcom/a/a/b/dg;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
