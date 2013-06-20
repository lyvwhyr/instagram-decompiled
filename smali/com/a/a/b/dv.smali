.class public abstract Lcom/a/a/b/dv;
.super Lcom/a/a/b/dg;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dg",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/a/a/b/dg;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 3
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 223
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_0

    .line 224
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    if-ge p0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/a/a/a/t;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 229
    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;)Lcom/a/a/b/dv;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 337
    instance-of v0, p0, Lcom/a/a/b/dv;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/a/a/b/el;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 340
    check-cast v0, Lcom/a/a/b/dv;

    .line 341
    invoke-virtual {v0}, Lcom/a/a/b/dv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/a/a/b/dv;->b(Ljava/util/Collection;)Lcom/a/a/b/dv;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs a([Ljava/lang/Object;)Lcom/a/a/b/dv;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 161
    array-length v0, p0

    invoke-static {v0}, Lcom/a/a/b/dv;->a(I)I

    move-result v5

    .line 162
    new-array v6, v5, [Ljava/lang/Object;

    .line 163
    add-int/lit8 v7, v5, -0x1

    .line 164
    const/4 v1, 0x0

    move v2, v3

    move v0, v3

    .line 166
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 167
    aget-object v8, p0, v2

    .line 168
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 169
    invoke-static {v9}, Lcom/a/a/b/db;->a(I)I

    move-result v4

    .line 170
    :goto_1
    and-int v10, v4, v7

    .line 171
    aget-object v11, v6, v10

    .line 172
    if-nez v11, :cond_2

    .line 173
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    aput-object v8, v6, v10

    .line 178
    add-int/2addr v0, v9

    .line 166
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 181
    if-nez v1, :cond_1

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 184
    :goto_2
    if-ge v4, v2, :cond_1

    .line 185
    aget-object v8, p0, v4

    .line 186
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 169
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_4
    if-nez v1, :cond_5

    .line 196
    :goto_3
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 199
    aget-object v2, p0, v3

    .line 200
    new-instance v1, Lcom/a/a/b/hi;

    invoke-direct {v1, v2, v0}, Lcom/a/a/b/hi;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .line 206
    :goto_4
    return-object v0

    .line 193
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    .line 201
    :cond_6
    array-length v1, p0

    invoke-static {v1}, Lcom/a/a/b/dv;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_7

    .line 204
    invoke-static {p0}, Lcom/a/a/b/dv;->a([Ljava/lang/Object;)Lcom/a/a/b/dv;

    move-result-object v0

    goto :goto_4

    .line 206
    :cond_7
    new-instance v1, Lcom/a/a/b/ha;

    invoke-direct {v1, p0, v0, v6, v7}, Lcom/a/a/b/ha;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_4
.end method

.method public static b(Ljava/lang/Object;)Lcom/a/a/b/dv;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/a/a/b/hi;

    invoke-direct {v0, p0}, Lcom/a/a/b/hi;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b(Ljava/util/Collection;)Lcom/a/a/b/dv;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 351
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    .line 361
    invoke-static {v0}, Lcom/a/a/b/dv;->a([Ljava/lang/Object;)Lcom/a/a/b/dv;

    move-result-object v0

    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    invoke-static {}, Lcom/a/a/b/dv;->d()Lcom/a/a/b/dv;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 357
    invoke-static {v0}, Lcom/a/a/b/dv;->b(Ljava/lang/Object;)Lcom/a/a/b/dv;

    move-result-object v0

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/a/a/b/cn;->a:Lcom/a/a/b/cn;

    return-object v0
.end method

.method public static e()Lcom/a/a/b/dx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/dx",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/a/a/b/dx;

    invoke-direct {v0}, Lcom/a/a/b/dx;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a_()Lcom/a/a/b/id;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/id",
            "<TE;>;"
        }
    .end annotation
.end method

.method c()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 373
    .local p0, this:Lcom/a/a/b/dv;,"Lcom/a/a/b/dv<TE;>;"
    if-ne p1, p0, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    .line 376
    :cond_0
    instance-of v0, p1, Lcom/a/a/b/dv;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/b/dv;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/a/a/b/dv;

    invoke-virtual {v0}, Lcom/a/a/b/dv;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/b/dv;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 380
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p0, p1}, Lcom/a/a/b/hd;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 386
    invoke-static {p0}, Lcom/a/a/b/hd;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/a/a/b/dv;->a_()Lcom/a/a/b/id;

    move-result-object v0

    return-object v0
.end method
