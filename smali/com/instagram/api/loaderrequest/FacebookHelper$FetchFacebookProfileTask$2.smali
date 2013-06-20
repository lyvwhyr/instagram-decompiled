.class Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 132
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$2;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$202(Lcom/instagram/api/loaderrequest/FacebookHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 134
    :cond_0
    return-void
.end method
