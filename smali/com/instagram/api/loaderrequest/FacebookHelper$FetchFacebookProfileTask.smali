.class Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;
.super Landroid/os/AsyncTask;
.source "FacebookHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;


# direct methods
.method private constructor <init>(Lcom/instagram/api/loaderrequest/FacebookHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/api/loaderrequest/FacebookHelper;Lcom/instagram/api/loaderrequest/FacebookHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper;)V

    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$202(Lcom/instagram/api/loaderrequest/FacebookHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 158
    :cond_0
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$4;

    invoke-direct {v2, p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$4;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 167
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 70
    .line 78
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.facebook.com/me?method=GET&fields=id,name,first_name,last_name,username,email&access_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v3, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v3, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 87
    :try_start_1
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$1;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$1;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 93
    :try_start_2
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const-class v4, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1, v4}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 95
    new-instance v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;

    iget-object v4, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-direct {v1, v4}, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 96
    :try_start_3
    const-string v4, "first_name"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->FirstName:Ljava/lang/String;

    .line 97
    const-string v4, "first_name"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->LastName:Ljava/lang/String;

    .line 98
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->FullName:Ljava/lang/String;

    .line 99
    const-string v4, "email"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v2, "email"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->Email:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v0, v1

    .line 109
    :goto_0
    if-eqz v3, :cond_1

    .line 111
    :try_start_4
    invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 122
    :cond_1
    :goto_1
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 102
    :goto_2
    :try_start_5
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->showErrorDialog()V

    .line 103
    invoke-static {}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to parse Facebook user info"

    invoke-static {v2, v4, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    move-object v0, v1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 107
    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->showErrorDialog()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 109
    if-eqz v2, :cond_1

    .line 111
    :try_start_7
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 112
    :catch_2
    move-exception v1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_2

    .line 111
    :try_start_8
    invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 114
    :cond_2
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 118
    :catch_3
    move-exception v0

    move-object v0, v2

    .line 119
    :goto_6
    invoke-static {}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred fetching the Facebook user info"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    .line 118
    :catch_6
    move-exception v1

    goto :goto_6

    .line 109
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    .line 106
    :catch_7
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object v0, v1

    goto :goto_3

    .line 101
    :catch_9
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->doInBackground([Ljava/lang/Void;)Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$300(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$300(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;

    invoke-direct {v1, p0, p1}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 151
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->showErrorDialog()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->onPostExecute(Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 171
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v2}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$202(Lcom/instagram/api/loaderrequest/FacebookHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 173
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v1

    sget v2, Lcom/facebook/k;->connecting_to_x:I

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v5}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v5

    sget v6, Lcom/facebook/k;->facebook:I

    invoke-virtual {v5, v6}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 175
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 176
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$5;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$5;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 184
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 186
    :cond_0
    return-void
.end method
