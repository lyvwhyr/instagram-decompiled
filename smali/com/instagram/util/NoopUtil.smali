.class public Lcom/instagram/util/NoopUtil;
.super Ljava/lang/Object;
.source "NoopUtil.java"


# static fields
.field private static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService; = null

.field private static final TAG:Ljava/lang/String; = "NoopUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/NoopUtil;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static report(Ljava/lang/String;)V
    .locals 2
    .parameter "identifier"

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noop/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static sendNoopRequest(Lcom/instagram/api/request/AbstractRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 35
    sget-object v0, Lcom/instagram/util/NoopUtil;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/instagram/util/NoopUtil$NoopRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/util/NoopUtil$NoopRunnable;-><init>(Lcom/instagram/api/request/AbstractRequest;Lcom/instagram/util/NoopUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public static sendNoopRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 31
    new-instance v0, Lcom/instagram/util/NoopUtil$NoopRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/util/NoopUtil$NoopRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/util/NoopUtil$1;)V

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Lcom/instagram/api/request/AbstractRequest;)V

    .line 32
    return-void
.end method
