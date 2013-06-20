.class Lcom/instagram/android/fragment/UserListFragment$12;
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
    .line 612
    .local p5, x3:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$12;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/api/loaderrequest/UserListRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    const-string v0, "twitter/find/"

    return-object v0
.end method

.method public perform()V
    .locals 4

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$12;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/twitter/TwitterAccount;->getSharingInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 617
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$12;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v3

    .line 618
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    .line 621
    return-void
.end method
