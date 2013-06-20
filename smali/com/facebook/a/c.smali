.class Lcom/facebook/a/c;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic a:Lcom/facebook/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-static {v0}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;)Lcom/facebook/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/a/e;->onCancel()V

    .line 410
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 383
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 384
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->b(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success! access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-virtual {v2}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-virtual {v2}, Lcom/facebook/a/b;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-static {v0}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;)Lcom/facebook/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/a/e;->onComplete(Landroid/os/Bundle;)V

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-static {v0}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;)Lcom/facebook/a/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/i;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/facebook/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/a/e;->onFacebookError(Lcom/facebook/a/i;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 398
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-static {v0}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;)Lcom/facebook/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/a/e;->onError(Lcom/facebook/a/a;)V

    .line 400
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 403
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/facebook/a/c;->a:Lcom/facebook/a/b;

    invoke-static {v0}, Lcom/facebook/a/b;->a(Lcom/facebook/a/b;)Lcom/facebook/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/a/e;->onFacebookError(Lcom/facebook/a/i;)V

    .line 405
    return-void
.end method
