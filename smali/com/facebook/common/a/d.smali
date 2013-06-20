.class public Lcom/facebook/common/a/d;
.super Lcom/facebook/common/a/a;
.source "FbErrorReporterImpl.java"


# static fields
.field public static final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lorg/acra/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/i/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/Random;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lorg/acra/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/facebook/common/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/a/d;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/facebook/common/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/a/f;-><init>(Lcom/facebook/common/a/e;)V

    sput-object v0, Lcom/facebook/common/a/d;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/i/d;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 68
    sget-object v5, Lcom/facebook/common/a/d;->a:Ljavax/inject/Provider;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/common/a/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;Ljavax/inject/Provider;Z)V

    .line 76
    return-void
.end method

.method constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;Ljavax/inject/Provider;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/i/d;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Random;",
            "Ljavax/inject/Provider",
            "<",
            "Lorg/acra/ErrorReporter;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/common/a/a;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/common/a/d;->c:Ljavax/inject/Provider;

    .line 86
    iput-object p2, p0, Lcom/facebook/common/a/d;->d:Ljavax/inject/Provider;

    .line 87
    iput-object p3, p0, Lcom/facebook/common/a/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 88
    iput-object p4, p0, Lcom/facebook/common/a/d;->f:Ljava/util/Random;

    .line 89
    iput-object p5, p0, Lcom/facebook/common/a/d;->g:Ljavax/inject/Provider;

    .line 90
    iput-boolean p6, p0, Lcom/facebook/common/a/d;->h:Z

    .line 91
    return-void
.end method

.method private a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/facebook/common/a/d;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/a/d;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/facebook/common/i/d;->a:Lcom/facebook/common/i/d;

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    .line 236
    :goto_0
    if-nez v0, :cond_1

    .line 237
    if-eqz p3, :cond_3

    move-object p1, v1

    .line 249
    :cond_1
    :goto_1
    return-object p1

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/facebook/common/a/d;->f:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/2addr v0, p2

    if-eqz v0, :cond_4

    move-object p1, v1

    .line 242
    goto :goto_1

    .line 244
    :cond_4
    if-eq p2, v2, :cond_1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/common/a/d;)Ljavax/inject/Provider;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/common/a/d;->g:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/common/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/common/a/d;->h:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/facebook/common/a/g;)V
    .locals 5
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/common/a/d;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/i/d;->a:Lcom/facebook/common/i/d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/common/a/d;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/common/a/g;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/facebook/common/a/d;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ErrorReporter;

    .line 103
    const-string v1, "soft_error_message"

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/facebook/common/a/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/c/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Soft error FAILING HARDER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->c()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/common/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->f()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/a/d;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 116
    if-nez v1, :cond_3

    .line 145
    :goto_1
    return-void

    .line 119
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/common/a/g;->b()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Lcom/facebook/common/a/g;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 124
    :goto_2
    iget-object v3, p0, Lcom/facebook/common/a/d;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/common/a/e;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/facebook/common/a/e;-><init>(Lcom/facebook/common/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Soft error"

    invoke-virtual {p1}, Lcom/facebook/common/a/g;->c()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/common/a/d;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ErrorReporter;

    new-instance v1, Lorg/acra/sender/HttpPostSender;

    invoke-direct {v1, p1}, Lorg/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 200
    return-void
.end method
