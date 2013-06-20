.class public final Lcom/a/a/e/a/a;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Lcom/a/a/e/a/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/a/a/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/a/a/e/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/a/a/e/a/a;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/a/a/b/fk;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e/a/a;->c:Ljava/util/Queue;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/e/a/a;->d:Z

    .line 70
    return-void
.end method

.method static synthetic b()Lcom/a/a/e/a/c;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/a/a/e/a/a;->b:Lcom/a/a/e/a/c;

    return-object v0
.end method

.method static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/a/a/e/a/a;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/a/a/e/a/a;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/e/a/a;->d:Z

    if-eqz v0, :cond_1

    .line 147
    monitor-exit v1

    .line 157
    :cond_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e/a/a;->d:Z

    .line 150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/a/a/e/a/a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/a/a/e/a/a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/a/b;

    invoke-virtual {v0}, Lcom/a/a/e/a/b;->a()V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
