.class Lcom/facebook/a/d;
.super Landroid/os/AsyncTask;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/b;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/a/b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/facebook/a/d;->a:Lcom/facebook/a/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1106
    iput-object p2, p0, Lcom/facebook/a/d;->b:Ljava/lang/String;

    .line 1107
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/d;->c:Landroid/content/Context;

    .line 1108
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    .line 1113
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lcom/facebook/a/b;

    iget-object v1, p0, Lcom/facebook/a/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a/d;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    const-string v1, "Facebook-publish"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3
    .parameter

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/facebook/a/d;->a:Lcom/facebook/a/b;

    monitor-enter v1

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lcom/facebook/a/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;Lcom/facebook/a/d;)Lcom/facebook/a/d;

    .line 1125
    monitor-exit v1

    .line 1126
    return-void

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1101
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/facebook/a/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1101
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/facebook/a/d;->a(Ljava/lang/Void;)V

    return-void
.end method
