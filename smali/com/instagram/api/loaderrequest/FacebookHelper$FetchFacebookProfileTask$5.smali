.class Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$5;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$5;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialogInterface"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$5;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mWasCancelled:Z
    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$502(Lcom/instagram/api/loaderrequest/FacebookHelper;Z)Z

    .line 181
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$5;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->this$0:Lcom/instagram/api/loaderrequest/FacebookHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->facebookUserInfoRequestCancelled()V

    .line 182
    return-void
.end method
