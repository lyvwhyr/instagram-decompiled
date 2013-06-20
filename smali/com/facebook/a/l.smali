.class Lcom/facebook/a/l;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# instance fields
.field final synthetic a:Lcom/facebook/a/j;


# direct methods
.method private constructor <init>(Lcom/facebook/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/a/j;Lcom/facebook/a/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/facebook/a/l;-><init>(Lcom/facebook/a/j;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->b(Lcom/facebook/a/j;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->c(Lcom/facebook/a/j;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 200
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->d(Lcom/facebook/a/j;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->e(Lcom/facebook/a/j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 186
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 188
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->b(Lcom/facebook/a/j;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 189
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->a(Lcom/facebook/a/j;)Lcom/facebook/a/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/a;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/a/e;->onError(Lcom/facebook/a/a;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-virtual {v0}, Lcom/facebook/a/j;->dismiss()V

    .line 182
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 142
    const-string v1, "Facebook-WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-static {p2}, Lcom/facebook/a/m;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 146
    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    if-nez v1, :cond_0

    .line 148
    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_0
    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v1}, Lcom/facebook/a/j;->a(Lcom/facebook/a/j;)Lcom/facebook/a/e;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/facebook/a/e;->onComplete(Landroid/os/Bundle;)V

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-virtual {v1}, Lcom/facebook/a/j;->dismiss()V

    .line 172
    :goto_1
    return v0

    .line 153
    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v1}, Lcom/facebook/a/j;->a(Lcom/facebook/a/j;)Lcom/facebook/a/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/a/e;->onCancel()V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v2}, Lcom/facebook/a/j;->a(Lcom/facebook/a/j;)Lcom/facebook/a/e;

    move-result-object v2

    new-instance v3, Lcom/facebook/a/i;

    invoke-direct {v3, v1}, Lcom/facebook/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/a/e;->onFacebookError(Lcom/facebook/a/i;)V

    goto :goto_0

    .line 162
    :cond_4
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    iget-object v1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-static {v1}, Lcom/facebook/a/j;->a(Lcom/facebook/a/j;)Lcom/facebook/a/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/a/e;->onCancel()V

    .line 164
    iget-object v1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-virtual {v1}, Lcom/facebook/a/j;->dismiss()V

    goto :goto_1

    .line 166
    :cond_5
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    const/4 v0, 0x0

    goto :goto_1

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/facebook/a/l;->a:Lcom/facebook/a/j;

    invoke-virtual {v1}, Lcom/facebook/a/j;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
