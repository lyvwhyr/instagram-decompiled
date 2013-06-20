.class public Lcom/a/a/b/ez;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/a/a/b/fj;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/b/fj",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:Lcom/a/a/b/fh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:Lcom/a/a/b/ga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/ga",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/a/a/b/fh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/a/a/b/fh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Lcom/a/a/b/ey;->h()Lcom/a/a/b/ey;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ez;->c:Lcom/a/a/b/ga;

    .line 168
    invoke-static {}, Lcom/a/a/b/fx;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    .line 169
    invoke-static {}, Lcom/a/a/b/fx;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/a/a/b/ez;)Lcom/a/a/b/fh;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/a/a/b/ez;->a:Lcom/a/a/b/fh;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/b/ez;Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fh;)Lcom/a/a/b/fh;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/b/ez;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fh;)Lcom/a/a/b/fh;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fh;)Lcom/a/a/b/fh;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/a/a/b/fh",
            "<TK;TV;>;)",
            "Lcom/a/a/b/fh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v1, Lcom/a/a/b/fh;

    invoke-direct {v1, p1, p2}, Lcom/a/a/b/fh;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/a/a/b/ez;->a:Lcom/a/a/b/fh;

    if-nez v0, :cond_0

    .line 193
    iput-object v1, p0, Lcom/a/a/b/ez;->b:Lcom/a/a/b/fh;

    iput-object v1, p0, Lcom/a/a/b/ez;->a:Lcom/a/a/b/fh;

    .line 194
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/a/a/b/ez;->c:Lcom/a/a/b/ga;

    invoke-interface {v0, p1}, Lcom/a/a/b/ga;->add(Ljava/lang/Object;)Z

    .line 227
    return-object v1

    .line 196
    :cond_0
    if-nez p3, :cond_2

    .line 197
    iget-object v0, p0, Lcom/a/a/b/ez;->b:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    .line 198
    iget-object v0, p0, Lcom/a/a/b/ez;->b:Lcom/a/a/b/fh;

    iput-object v0, v1, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    .line 199
    iget-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/fh;

    .line 200
    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object v1, p0, Lcom/a/a/b/ez;->b:Lcom/a/a/b/fh;

    goto :goto_0

    .line 203
    :cond_1
    iput-object v1, v0, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    .line 204
    iput-object v0, v1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p3, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    iput-object v0, v1, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    .line 210
    iget-object v0, p3, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    iput-object v0, v1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    .line 211
    iput-object p3, v1, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    .line 212
    iput-object p3, v1, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    .line 213
    iget-object v0, p3, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_2
    iget-object v0, p3, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    if-nez v0, :cond_4

    .line 219
    iput-object v1, p0, Lcom/a/a/b/ez;->a:Lcom/a/a/b/fh;

    .line 223
    :goto_3
    iput-object v1, p3, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    .line 224
    iput-object v1, p3, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p3, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    goto :goto_2

    .line 221
    :cond_4
    iget-object v0, p3, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    goto :goto_3
.end method

.method static synthetic a(Lcom/a/a/b/ez;Lcom/a/a/b/fh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/a/a/b/ez;->a(Lcom/a/a/b/fh;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/b/ez;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/a/a/b/ez;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/a/a/b/fh;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/fh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p1, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p1, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    iget-object v1, p1, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    .line 241
    :goto_0
    iget-object v0, p1, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p1, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    iget-object v1, p1, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    .line 246
    :goto_1
    iget-object v0, p1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    iget-object v1, p1, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    .line 253
    :goto_2
    iget-object v0, p1, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p1, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    iget-object v1, p1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    iput-object v1, v0, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    .line 260
    :goto_3
    iget-object v0, p0, Lcom/a/a/b/ez;->c:Lcom/a/a/b/ga;

    iget-object v1, p1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/a/a/b/ga;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void

    .line 239
    :cond_0
    iget-object v0, p1, Lcom/a/a/b/fh;->c:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/ez;->a:Lcom/a/a/b/fh;

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p1, Lcom/a/a/b/fh;->d:Lcom/a/a/b/fh;

    iput-object v0, p0, Lcom/a/a/b/ez;->b:Lcom/a/a/b/fh;

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p1, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/a/a/b/fh;->e:Lcom/a/a/b/fh;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 255
    :cond_4
    iget-object v0, p1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/a/a/b/fh;->f:Lcom/a/a/b/fh;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/a/a/b/fh;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static b()Lcom/a/a/b/ez;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/ez",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/a/a/b/ez;

    invoke-direct {v0}, Lcom/a/a/b/ez;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/b/ez;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/b/ez;)Lcom/a/a/b/ga;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/a/a/b/ez;->c:Lcom/a/a/b/ga;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/b/ez;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/a/a/b/ez;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Lcom/a/a/b/ez;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 265
    new-instance v0, Lcom/a/a/b/fi;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/fi;-><init>(Lcom/a/a/b/ez;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 276
    :cond_0
    return-void
.end method

.method private g(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Lcom/a/a/b/fi;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/fi;-><init>(Lcom/a/a/b/ez;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/a/a/b/fk;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/a/a/b/ez;->a:Lcom/a/a/b/fh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/a/a/b/ez;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/ez;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/fh;)Lcom/a/a/b/fh;

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/a/a/b/ez;->g(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 632
    invoke-direct {p0, p1}, Lcom/a/a/b/ez;->e(Ljava/lang/Object;)V

    .line 633
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/a/a/b/fa;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/fa;-><init>(Lcom/a/a/b/ez;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/a/a/b/ez;->g:Ljava/util/Map;

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/a/a/b/fc;

    invoke-direct {v0, p0}, Lcom/a/a/b/fc;-><init>(Lcom/a/a/b/ez;)V

    iput-object v0, p0, Lcom/a/a/b/ez;->g:Ljava/util/Map;

    .line 1069
    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/a/a/b/ez;->f:Ljava/util/Set;

    .line 679
    if-nez v0, :cond_0

    .line 680
    new-instance v0, Lcom/a/a/b/fb;

    invoke-direct {v0, p0}, Lcom/a/a/b/fb;-><init>(Lcom/a/a/b/ez;)V

    iput-object v0, p0, Lcom/a/a/b/ez;->f:Ljava/util/Set;

    .line 696
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1082
    .local p0, this:Lcom/a/a/b/ez;,"Lcom/a/a/b/ez<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1083
    const/4 v0, 0x1

    .line 1089
    .end local p1
    :goto_0
    return v0

    .line 1085
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/a/a/b/fz;

    if-eqz v0, :cond_1

    .line 1086
    check-cast p1, Lcom/a/a/b/fz;

    .line 1087
    .end local p1
    invoke-virtual {p0}, Lcom/a/a/b/ez;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/a/a/b/fz;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1089
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/a/a/b/ez;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/a/a/b/ez;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
