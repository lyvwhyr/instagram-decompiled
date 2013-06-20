.class Lcom/instagram/android/fragment/UserListFragment$10;
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
    .line 572
    .local p5, x3:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$10;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/api/loaderrequest/UserListRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    const-string v0, "address_book/find/?include=extra_display_name"

    return-object v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    return v0
.end method

.method public preProcessInBackground()V
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$10;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$10;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/ContactHelper;->getContacts(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/ContactHelper;->getJsonString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method
