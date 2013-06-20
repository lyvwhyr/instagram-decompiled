.class public Lcom/facebook/c/c/e;
.super Ljava/lang/Object;
.source "Tracer.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/facebook/common/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/d/a",
            "<",
            "Lcom/facebook/c/c/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/c/c/a;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/c/c/e;->a:Ljava/lang/ThreadLocal;

    .line 23
    new-instance v0, Lcom/facebook/common/d/d;

    const-class v1, Lcom/facebook/c/c/e;

    invoke-static {}, Lcom/facebook/common/g/b;->b()Lcom/facebook/common/g/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/d/d;-><init>(Ljava/lang/Class;Lcom/facebook/common/g/a;)V

    new-instance v1, Lcom/facebook/c/c/f;

    const-class v2, Lcom/facebook/c/c/e;

    invoke-direct {v1, v2}, Lcom/facebook/c/c/f;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/d/d;->a(Lcom/facebook/common/d/b;)Lcom/facebook/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/d/d;->a()Lcom/facebook/common/d/a;

    move-result-object v0

    sput-object v0, Lcom/facebook/c/c/e;->e:Lcom/facebook/common/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/c/c/e;->c:J

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/c/c/e;->d:J

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/c/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/c/c/e;-><init>()V

    return-void
.end method

.method private a(JZ)J
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 85
    .line 86
    iget-object v0, p0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    iget-wide v1, p0, Lcom/facebook/c/c/e;->c:J

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/c/c/a;->a(JJZ)J

    move-result-wide v0

    .line 91
    :goto_0
    sget-object v2, Lcom/facebook/c/c/e;->e:Lcom/facebook/common/d/a;

    invoke-virtual {v2, p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Object;)V

    .line 92
    return-wide v0

    .line 89
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/c/c/e;->d:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/c/c/e;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/facebook/c/c/e;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/c/c/e;Lcom/facebook/c/c/a;)Lcom/facebook/c/c/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/c/c/e;
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/c/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/c/c/e;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/c/c/e;->e:Lcom/facebook/common/d/a;

    invoke-virtual {v0}, Lcom/facebook/common/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c/e;

    .line 46
    sget-object v1, Lcom/facebook/c/c/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/c/c/a;

    iput-object v1, v0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    .line 47
    iget-object v1, v0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, v0, Lcom/facebook/c/c/e;->b:Lcom/facebook/c/c/a;

    invoke-virtual {v1, p0, p1}, Lcom/facebook/c/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/c/c/e;->c:J

    .line 49
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/c/c/e;->d:J

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/facebook/c/c/e;->c:J

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/c/c/e;->d:J

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 3

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/c/c/e;->a(JZ)J

    move-result-wide v0

    return-wide v0
.end method
