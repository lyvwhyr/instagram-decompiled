.class final Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$user:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/User;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;->val$user:Lcom/instagram/android/model/User;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;->val$user:Lcom/instagram/android/model/User;

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;->val$context:Landroid/content/Context;

    sget v1, Lcom/facebook/k;->web_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
