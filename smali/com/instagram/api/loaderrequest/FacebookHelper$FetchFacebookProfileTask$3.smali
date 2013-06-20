.class Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

.field final synthetic val$result:Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iput-object p2, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;->val$result:Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mWasCancelled:Z
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$500(Lcom/instagram/api/loaderrequest/FacebookHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$3;->val$result:Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setFacebookUserInfoResult(Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V

    .line 144
    :cond_0
    return-void
.end method
