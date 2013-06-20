.class public Lcom/instagram/api/loaderrequest/AddAvatarHelper;
.super Lcom/instagram/api/loaderrequest/AvatarHelper;
.source "AddAvatarHelper.java"


# static fields
.field private static final BITMAP_KEY:Ljava/lang/String; = "AddAvatarHelper.BITMAP_KEY"

.field public static final LOG_TAG:Ljava/lang/String; = "AddAvatarHelper"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;Landroid/os/Bundle;)V
    .locals 1
    .parameter "fragment"
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/instagram/api/loaderrequest/AvatarHelper;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    const-string v0, "AddAvatarHelper.BITMAP_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "AddAvatarHelper.BITMAP_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/loaderrequest/AddAvatarHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/api/loaderrequest/AddAvatarHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected isSignupFlow()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected loadFacebookProfilePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;-><init>(Lcom/instagram/api/loaderrequest/AddAvatarHelper;ILandroid/net/Uri;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method public loadFacebookProfilePictureAfterAuthorization()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->loadFacebookProfilePicture()V

    .line 79
    return-void
.end method

.method protected loadTwitterProfilePicture()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;-><init>(Lcom/instagram/api/loaderrequest/AddAvatarHelper;ILandroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method protected loadUriProfilePicture(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 83
    new-instance v0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;-><init>(Lcom/instagram/api/loaderrequest/AddAvatarHelper;ILandroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    .line 64
    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    .line 65
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/instagram/api/loaderrequest/AvatarHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "AddAvatarHelper.BITMAP_KEY"

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onViewCreated()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setProfileImage(Landroid/graphics/Bitmap;)V

    .line 41
    :cond_0
    return-void
.end method

.method protected performFacebookAuthorization()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->performFacebookAuthorization(Z)V

    .line 51
    return-void
.end method

.method protected performProfileDelete()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
