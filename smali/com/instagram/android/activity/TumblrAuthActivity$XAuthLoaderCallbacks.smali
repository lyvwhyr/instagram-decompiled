.class Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;
.super Ljava/lang/Object;
.source "TumblrAuthActivity.java"

# interfaces
.implements Landroid/support/v4/app/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/ag",
        "<",
        "Lcom/instagram/android/loader/XAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/TumblrAuthActivity;


# direct methods
.method private constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;Lcom/instagram/android/activity/TumblrAuthActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 3
    .parameter "i"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/android/loader/XAuthResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Lcom/instagram/android/loader/XAuthRequestLoader;

    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/android/loader/XAuthRequestLoader;-><init>(Landroid/content/Context;)V

    .line 94
    if-eqz p2, :cond_0

    const-string v0, "deliverOnly"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/loader/XAuthRequestLoader;->setDeliverOnly(Z)V

    .line 97
    const-string v0, "https://www.tumblr.com/oauth/access_token"

    invoke-virtual {v1, v0}, Lcom/instagram/android/loader/XAuthRequestLoader;->setXAuthURL(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    #calls: Lcom/instagram/android/activity/TumblrAuthActivity;->getUsername()Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->access$200(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    #calls: Lcom/instagram/android/activity/TumblrAuthActivity;->getPassword()Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/activity/TumblrAuthActivity;->access$300(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/loader/XAuthRequestLoader;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/instagram/tumblr/TumblrConstants;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/tumblr/TumblrConstants;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/loader/XAuthRequestLoader;->setConsumeKeySecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/android/loader/XAuthResponse;)V
    .locals 3
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/android/loader/XAuthResponse;",
            ">;",
            "Lcom/instagram/android/loader/XAuthResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, loader:Landroid/support/v4/a/c;,"Landroid/support/v4/a/c<Lcom/instagram/android/loader/XAuthResponse;>;"
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getSupportLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/a/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/af;->a(I)V

    .line 108
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    #calls: Lcom/instagram/android/activity/TumblrAuthActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->access$400(Lcom/instagram/android/activity/TumblrAuthActivity;)V

    .line 110
    invoke-virtual {p2}, Lcom/instagram/android/loader/XAuthResponse;->success()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "TumblrAuthActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success! Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/android/loader/XAuthResponse;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Secret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/android/loader/XAuthResponse;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    sget v1, Lcom/facebook/g;->followInstagramBlog:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/TumblrService;->followInstagramBlog(Landroid/content/Context;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/android/loader/XAuthResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/android/loader/XAuthResponse;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/tumblr/TumblrAccount;->store(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/tumblr/TumblrAccount;

    .line 121
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->finish()V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->tumblr_login_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    check-cast p2, Lcom/instagram/android/loader/XAuthResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;->onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/android/loader/XAuthResponse;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/c;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/android/loader/XAuthResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, loader:Landroid/support/v4/a/c;,"Landroid/support/v4/a/c<Lcom/instagram/android/loader/XAuthResponse;>;"
    return-void
.end method
