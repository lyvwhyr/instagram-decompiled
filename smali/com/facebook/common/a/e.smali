.class Lcom/facebook/common/a/e;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/facebook/common/a/d;


# direct methods
.method constructor <init>(Lcom/facebook/common/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/common/a/e;->d:Lcom/facebook/common/a/d;

    iput-object p2, p0, Lcom/facebook/common/a/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/common/a/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/common/a/e;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    :try_start_0
    const-class v1, Lcom/facebook/common/a/b;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    invoke-static {}, Lcom/a/a/b/fx;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 130
    const-string v0, "soft_error_category"

    iget-object v3, p0, Lcom/facebook/common/a/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "soft_error_message"

    iget-object v3, p0, Lcom/facebook/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/facebook/common/a/e;->d:Lcom/facebook/common/a/d;

    invoke-static {v0}, Lcom/facebook/common/a/d;->a(Lcom/facebook/common/a/d;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ErrorReporter;

    .line 134
    iget-object v3, p0, Lcom/facebook/common/a/e;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    .line 135
    monitor-exit v1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/facebook/common/a/e;->d:Lcom/facebook/common/a/d;

    invoke-static {v1}, Lcom/facebook/common/a/d;->b(Lcom/facebook/common/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Lcom/a/a/a/w;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method
