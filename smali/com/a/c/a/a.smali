.class public Lcom/a/c/a/a;
.super Ljava/lang/Object;
.source "Annotations.java"


# static fields
.field private static final a:Lcom/a/c/a/b;

.field private static final b:Lcom/a/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/a/c/a/b;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/a/c/f;

    aput-object v2, v1, v3

    const-class v2, Ljavax/inject/Scope;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/c/a/b;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a/c/a/a;->a:Lcom/a/c/a/b;

    .line 101
    new-instance v0, Lcom/a/c/a/b;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/a/c/a;

    aput-object v2, v1, v3

    const-class v2, Ljavax/inject/Qualifier;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/c/a/b;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a/c/a/a;->b:Lcom/a/c/a/b;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const-class v0, Ljavax/inject/Named;

    if-ne p0, v0, :cond_0

    .line 130
    const-class p0, Lcom/a/c/b/a;

    .line 132
    :cond_0
    return-object p0
.end method
