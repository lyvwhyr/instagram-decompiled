.class Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;
.super Lcom/instagram/android/mediacache/IgAsyncTask;
.source "ReportProblemFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/mediacache/IgAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRequest:Lcom/instagram/api/request/FlytrapRequest;

.field final synthetic this$0:Lcom/instagram/android/fragment/ReportProblemFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/content/Context;Lcom/instagram/api/request/FlytrapRequest;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "request"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mContext:Landroid/content/Context;

    .line 176
    iput-object p3, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/content/Context;Lcom/instagram/api/request/FlytrapRequest;Lcom/instagram/android/fragment/ReportProblemFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;-><init>(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/content/Context;Lcom/instagram/api/request/FlytrapRequest;)V

    return-void
.end method

.method private handleFailure()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 232
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$300(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->send:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v2, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/k;->request_error:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->ok:I

    new-instance v3, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask$1;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask$1;-><init>(Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$502(Lcom/instagram/android/fragment/ReportProblemFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 246
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$500(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 247
    return-void
.end method

.method private handleSuccess()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->thanks_for_feedback:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 251
    return-void
.end method

.method private isServerResponseSuccess(Ljava/lang/String;)Z
    .locals 4
    .parameter "response"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    .line 255
    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 257
    const-string v1, "bug_id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 262
    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    .line 264
    const-string v1, "ReportProblemFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report bug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    invoke-virtual {v0, v2}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :try_start_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 192
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->isServerResponseSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 200
    :goto_1
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    const-string v2, "ReportProblemFragment"

    const-string v3, "Server request resulted in exception"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "success"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$202(Lcom/instagram/android/fragment/ReportProblemFragment;Z)Z

    .line 220
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 222
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendBugReportTask:Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$402(Lcom/instagram/android/fragment/ReportProblemFragment;Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;)Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->handleSuccess()V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->handleFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-super {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPreExecute()V

    .line 207
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$300(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->sending:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 211
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$202(Lcom/instagram/android/fragment/ReportProblemFragment;Z)Z

    .line 212
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$SendBugReportTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 213
    return-void
.end method
