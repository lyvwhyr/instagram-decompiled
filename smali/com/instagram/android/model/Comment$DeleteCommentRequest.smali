.class Lcom/instagram/android/model/Comment$DeleteCommentRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mReportAsAbuse:Z

.field final synthetic this$0:Lcom/instagram/android/model/Comment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/model/Comment;Landroid/support/v4/app/af;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "loaderManager"
    .parameter "path"
    .parameter "reportAsAbuse"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->this$0:Lcom/instagram/android/model/Comment;

    .line 339
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 340
    iput-object p3, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->mPath:Ljava/lang/String;

    .line 341
    iput-boolean p4, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->mReportAsAbuse:Z

    .line 342
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 353
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    .line 354
    const-string v1, "comment_id"

    iget-object v2, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->this$0:Lcom/instagram/android/model/Comment;

    #getter for: Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/model/Comment;->access$000(Lcom/instagram/android/model/Comment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 355
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->this$0:Lcom/instagram/android/model/Comment;

    #getter for: Lcom/instagram/android/model/Comment;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v2}, Lcom/instagram/android/model/Comment;->access$100(Lcom/instagram/android/model/Comment;)Lcom/instagram/android/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 357
    iget-boolean v1, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->mReportAsAbuse:Z

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "report_abuse"

    const-string v2, "1"

    invoke-virtual {p3, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "report_abuse"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->this$0:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->commentDeleteFailed()V

    .line 376
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, objectApiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->this$0:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->commentDeleteFinished()V

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
