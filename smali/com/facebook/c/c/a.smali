.class public Lcom/facebook/c/c/a;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/c/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/c/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/c/c/a;

    sput-object v0, Lcom/facebook/c/c/a;->a:Ljava/lang/Class;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/c/c/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/a/a/b/fk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/a/a/b/fx;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c/b;

    invoke-virtual {v0}, Lcom/facebook/c/c/b;->a()V

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    return-void
.end method


# virtual methods
.method a(JJZ)J
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 173
    if-nez p5, :cond_0

    .line 174
    iget-wide p3, p0, Lcom/facebook/c/c/a;->c:J

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/facebook/c/c/b;

    .line 180
    if-nez v5, :cond_1

    .line 181
    const-wide/16 v0, -0x1

    .line 204
    :goto_0
    return-wide v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v5}, Lcom/facebook/c/c/b;->f()J

    move-result-wide v3

    sub-long v7, v1, v3

    .line 188
    cmp-long v0, v7, p3

    if-gez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c/b;

    .line 192
    if-ne v0, v5, :cond_3

    .line 193
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    invoke-virtual {v5}, Lcom/facebook/c/c/b;->a()V

    :cond_2
    :goto_2
    move-wide v0, v7

    .line 204
    goto :goto_0

    .line 190
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 200
    :cond_4
    sget-object v0, Lcom/facebook/c/c/d;->b:Lcom/facebook/c/c/d;

    sget-object v1, Lcom/facebook/c/c/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/facebook/c/c/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/facebook/c/c/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/facebook/c/c/b;->f()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/c/c/b;->a(Lcom/facebook/c/c/d;JLjava/lang/String;Ljava/lang/String;J)Lcom/facebook/c/c/b;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x1f4

    .line 129
    iget-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 131
    sget-object v1, Lcom/facebook/c/c/a;->a:Ljava/lang/Class;

    const-string v2, "Giant thread trace. Clearing to avoid memory leak."

    invoke-static {v1, v2}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/facebook/c/c/a;->a()V

    .line 143
    :cond_0
    if-le v0, v3, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/facebook/c/c/a;->b()V

    .line 148
    :cond_1
    sget-object v0, Lcom/facebook/c/c/d;->a:Lcom/facebook/c/c/d;

    sget-object v1, Lcom/facebook/c/c/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/c/c/b;->a(Lcom/facebook/c/c/d;JLjava/lang/String;Ljava/lang/String;J)Lcom/facebook/c/c/b;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/c/c/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v0}, Lcom/facebook/c/c/b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const-wide/16 v3, -0x1

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 243
    invoke-static {}, Lcom/a/a/b/fk;->b()Ljava/util/LinkedList;

    move-result-object v10

    .line 244
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c/b;

    .line 246
    invoke-virtual {v0}, Lcom/facebook/c/c/b;->c()Lcom/facebook/c/c/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/c/c/d;->b:Lcom/facebook/c/c/d;

    if-ne v1, v2, :cond_0

    .line 247
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 248
    sget-object v1, Lcom/facebook/c/c/a;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trace contains a stop event without a corresponding start: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/c/c/a;->d:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/c/b/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_1
    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-wide v1, p0, Lcom/facebook/c/c/a;->f:J

    invoke-direct {p0, v10}, Lcom/facebook/c/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/c/c/b;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Lcom/facebook/c/c/b;->f()J

    move-result-wide v3

    .line 257
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Lcom/facebook/c/c/b;->c()Lcom/facebook/c/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/c/c/d;->a:Lcom/facebook/c/c/d;

    if-ne v0, v1, :cond_1

    .line 259
    const-string v0, "|  "

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    const-string v0, " Unstopped timers:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v0, p0, Lcom/facebook/c/c/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c/b;

    .line 267
    const-string v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v2, " ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Lcom/facebook/c/c/b;->f()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    const-string v2, " ms, started at "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Lcom/facebook/c/c/b;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/c/c/b;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 276
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
