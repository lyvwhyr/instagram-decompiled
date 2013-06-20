.class public Lcom/a/c/b;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/c/c;

.field private final b:Lcom/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/c/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/a/c/e;->a:Lcom/a/c/e;

    iput-object v0, p0, Lcom/a/c/b;->a:Lcom/a/c/c;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/a/c/g;->b(Ljava/lang/Class;)Lcom/a/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/c/b;->b:Lcom/a/c/g;

    .line 115
    invoke-direct {p0}, Lcom/a/c/b;->a()I

    move-result v0

    iput v0, p0, Lcom/a/c/b;->c:I

    .line 116
    return-void
.end method

.method private constructor <init>(Lcom/a/c/g;Lcom/a/c/c;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/c/g",
            "<TT;>;",
            "Lcom/a/c/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/a/c/b;->a:Lcom/a/c/c;

    .line 131
    invoke-static {p1}, Lcom/a/c/a/d;->a(Lcom/a/c/g;)Lcom/a/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/c/b;->b:Lcom/a/c/g;

    .line 132
    invoke-direct {p0}, Lcom/a/c/b;->a()I

    move-result v0

    iput v0, p0, Lcom/a/c/b;->c:I

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Lcom/a/c/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/a/c/b;->a:Lcom/a/c/c;

    .line 124
    invoke-static {p1}, Lcom/a/c/g;->a(Ljava/lang/reflect/Type;)Lcom/a/c/g;

    move-result-object v0

    invoke-static {v0}, Lcom/a/c/a/d;->a(Lcom/a/c/g;)Lcom/a/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/c/b;->b:Lcom/a/c/g;

    .line 125
    invoke-direct {p0}, Lcom/a/c/b;->a()I

    move-result v0

    iput v0, p0, Lcom/a/c/b;->c:I

    .line 126
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/a/c/b;->b:Lcom/a/c/g;

    invoke-virtual {v0}, Lcom/a/c/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/c/b;->a:Lcom/a/c/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/a/c/g;)Lcom/a/c/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/g",
            "<TS;>;)",
            "Lcom/a/c/b",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/a/c/b;

    sget-object v1, Lcom/a/c/e;->a:Lcom/a/c/e;

    invoke-direct {v0, p0, v1}, Lcom/a/c/b;-><init>(Lcom/a/c/g;Lcom/a/c/c;)V

    return-object v0
.end method

.method public static a(Lcom/a/c/g;Ljava/lang/Class;)Lcom/a/c/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/c/g",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/a/c/b",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/a/c/b;

    invoke-static {p1}, Lcom/a/c/b;->b(Ljava/lang/Class;)Lcom/a/c/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/c/b;-><init>(Lcom/a/c/g;Lcom/a/c/c;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/a/c/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/c/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/a/c/b;

    sget-object v1, Lcom/a/c/e;->a:Lcom/a/c/e;

    invoke-direct {v0, p0, v1}, Lcom/a/c/b;-><init>(Ljava/lang/reflect/Type;Lcom/a/c/c;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/c/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/a/c/b",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/a/c/b;

    invoke-static {p1}, Lcom/a/c/b;->b(Ljava/lang/Class;)Lcom/a/c/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/c/b;-><init>(Ljava/lang/reflect/Type;Lcom/a/c/c;)V

    return-object v0
.end method

.method static b(Ljava/lang/Class;)Lcom/a/c/c;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/a/c/c;"
        }
    .end annotation

    .prologue
    .line 359
    const-string v0, "annotation type"

    invoke-static {p0, v0}, Lcom/a/a/a/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v0, Lcom/a/c/d;

    invoke-static {p0}, Lcom/a/c/a/a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/c/d;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/a/c/b;,"Lcom/a/c/b<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 193
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 189
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/a/c/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 190
    goto :goto_0

    .line 192
    :cond_2
    check-cast p1, Lcom/a/c/b;

    .line 193
    .end local p1
    iget-object v2, p0, Lcom/a/c/b;->a:Lcom/a/c/c;

    iget-object v3, p1, Lcom/a/c/b;->a:Lcom/a/c/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/a/c/b;->b:Lcom/a/c/g;

    iget-object v3, p1, Lcom/a/c/b;->b:Lcom/a/c/g;

    invoke-virtual {v2, v3}, Lcom/a/c/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/a/c/b;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c/b;->b:Lcom/a/c/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c/b;->a:Lcom/a/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
