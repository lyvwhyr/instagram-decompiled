.class public Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;
.super Lcom/instagram/api/loaderrequest/AvatarHelper;
.source "UpdateAvatarHelper.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter "fragment"
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/instagram/api/loaderrequest/AvatarHelper;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method private makeRequest()Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;

    invoke-direct {v3, p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    return-object v0
.end method


# virtual methods
.method public getOptions()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget v3, Lcom/facebook/k;->remove_current_picture:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/facebook/k;->take_picture:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/facebook/k;->choose_from_library:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/facebook/k;->import_from_facebook:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/facebook/k;->import_from_twitter:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected isSignupFlow()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected loadFacebookProfilePicture()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->makeRequest()Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->performWithType(I)V

    .line 29
    return-void
.end method

.method protected loadTwitterProfilePicture()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->makeRequest()Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->performWithType(I)V

    .line 24
    return-void
.end method

.method protected loadUriProfilePicture(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->makeRequest()Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->setUri(Landroid/net/Uri;)V

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->performWithType(I)V

    .line 36
    return-void
.end method

.method protected performProfileDelete()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v4/app/af;->a(Z)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->makeRequest()Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->performRemove()V

    .line 41
    return-void
.end method
