.class public abstract Lcom/instagram/api/loaderrequest/AvatarHelper;
.super Ljava/lang/Object;
.source "AvatarHelper.java"


# static fields
.field public static final AVATAR_SIZE:I = 0x96

.field private static final BUNDLE_TEMP_CAMERA_PHOTO_FILE:Ljava/lang/String; = "tempCameraPhotoFile"

.field private static final BUNDLE_TEMP_GALLERY_PHOTO_FILE:Ljava/lang/String; = "tempGalleryPhotoFile"

.field private static final BUNDLE_TEMP_URI:Ljava/lang/String; = "tempGalleryUri"

.field private static final LOG_TAG:Ljava/lang/String; = "UpdateAvatarHelper"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final REQUEST_BUILT_IN_CAMERA:I = 0x4

.field public static final REQUEST_CROP_PHOTO:I = 0x3

.field public static final REQUEST_PICK_FROM_GALLERY:I = 0x2

.field public static final REQUEST_TWITTER_AUTH:I = 0x1


# instance fields
.field protected mFragment:Landroid/support/v4/app/Fragment;

.field private mGalleryTempFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field protected mOptions:[Ljava/lang/CharSequence;

.field private mTempCameraPhotoFile:Ljava/io/File;

.field private mTempUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragment"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    .line 63
    if-eqz p2, :cond_2

    .line 64
    const-string v0, "tempCameraPhotoFile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    .line 69
    :cond_0
    const-string v0, "tempGalleryPhotoFile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;

    .line 74
    :cond_1
    const-string v0, "tempGalleryUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempUri:Landroid/net/Uri;

    .line 76
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/loaderrequest/AvatarHelper;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/api/loaderrequest/AvatarHelper;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/api/loaderrequest/AvatarHelper;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/api/loaderrequest/AvatarHelper;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/api/loaderrequest/AvatarHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getOptions()[Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->isSignupFlow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    new-array v1, v6, [Ljava/lang/CharSequence;

    sget v2, Lcom/facebook/k;->import_from_facebook:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/facebook/k;->take_picture:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/facebook/k;->choose_from_library:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    .line 188
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    return-object v0

    .line 179
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    sget v2, Lcom/facebook/k;->take_picture:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/facebook/k;->choose_from_library:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/facebook/k;->import_from_facebook:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/facebook/k;->import_from_twitter:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    iput-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mOptions:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected abstract isSignupFlow()Z
.end method

.method protected abstract loadFacebookProfilePicture()V
.end method

.method protected abstract loadTwitterProfilePicture()V
.end method

.method protected abstract loadUriProfilePicture(Landroid/net/Uri;)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->onActivityResult(IILandroid/content/Intent;Z)V

    .line 193
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Z)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"
    .parameter "skipFacebook"

    .prologue
    const/4 v3, 0x3

    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 221
    if-nez p4, :cond_0

    .line 222
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->loadTwitterProfilePicture()V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/util/GalleryUtil;->getImageUriFromResult(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->cropIntentForAvatar(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->loadUriProfilePicture(Landroid/net/Uri;)V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/instagram/util/BuiltInCameraUtil;->insertIntoMediaStore(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 214
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    invoke-static {p3, v1}, Lcom/instagram/util/BuiltInCameraUtil;->getUriFileOrData(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->cropIntentForAvatar(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "tempCameraPhotoFile"

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "tempGalleryPhotoFile"

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "tempGalleryUri"

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    :cond_2
    return-void
.end method

.method protected performFacebookAuthorization()V
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->loadFacebookProfilePicture()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    sget-object v2, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    new-instance v3, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper;Lcom/instagram/api/loaderrequest/AvatarHelper$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0
.end method

.method protected abstract performProfileDelete()V
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/k;->set_a_profile_picture:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->getOptions()[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/instagram/api/loaderrequest/AvatarHelper$2;

    invoke-direct {v3, p0, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/api/loaderrequest/AvatarHelper$1;

    invoke-direct {v2, p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$1;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 145
    return-void
.end method
