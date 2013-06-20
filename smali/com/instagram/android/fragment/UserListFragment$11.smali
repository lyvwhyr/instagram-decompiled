.class Lcom/instagram/android/fragment/UserListFragment$11;
.super Lcom/instagram/api/loaderrequest/UserListRequest;
.source "UserListFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 594
    .local p5, x3:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$11;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/api/loaderrequest/UserListRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    const-string v0, "fb/find/?include=extra_display_name"

    return-object v0
.end method

.method public perform()V
    .locals 4

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$11;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    const-string v1, "fb_access_token"

    iget-object v2, p0, Lcom/instagram/android/fragment/UserListFragment$11;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    .line 600
    return-void
.end method
