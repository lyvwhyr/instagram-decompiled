.class Lcom/facebook/common/executors/e;
.super Ljava/lang/Object;
.source "WakingExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/common/executors/e",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/common/executors/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/executors/c",
            "<TV;>;"
        }
    .end annotation
.end field

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/facebook/common/executors/c;J)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/executors/c",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/facebook/common/executors/e;->a:Lcom/facebook/common/executors/c;

    .line 345
    iput-wide p2, p0, Lcom/facebook/common/executors/e;->b:J

    .line 346
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/common/executors/e;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/executors/e",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/facebook/common/executors/e;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Lcom/facebook/common/executors/e;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 339
    .local p0, this:Lcom/facebook/common/executors/e;,"Lcom/facebook/common/executors/e<TV;>;"
    check-cast p1, Lcom/facebook/common/executors/e;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/e;->a(Lcom/facebook/common/executors/e;)I

    move-result v0

    return v0
.end method
