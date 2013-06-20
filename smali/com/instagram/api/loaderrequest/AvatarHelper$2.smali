.class Lcom/instagram/api/loaderrequest/AvatarHelper$2;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iput-object p2, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private matches(II)Z
    .locals 2
    .parameter "which"
    .parameter "item"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->getOptions()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private performCamera()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-static {}, Lcom/instagram/util/BuiltInCameraUtil;->getPhotoOutputMediaFile()Ljava/io/File;

    move-result-object v1

    #setter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$102(Lcom/instagram/api/loaderrequest/AvatarHelper;Ljava/io/File;)Ljava/io/File;

    .line 131
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mTempCameraPhotoFile:Ljava/io/File;
    invoke-static {v2}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$100(Lcom/instagram/api/loaderrequest/AvatarHelper;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/util/BuiltInCameraUtil;->show(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    .line 132
    return-void
.end method

.method private performFacebook()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->performFacebookAuthorization()V

    .line 127
    return-void
.end method

.method private performGallery()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/FileUtil;->generateTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    #setter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$002(Lcom/instagram/api/loaderrequest/AvatarHelper;Ljava/io/File;)Ljava/io/File;

    .line 114
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mGalleryTempFile:Ljava/io/File;
    invoke-static {v2}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$000(Lcom/instagram/api/loaderrequest/AvatarHelper;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/util/GalleryUtil;->show(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    .line 115
    return-void
.end method

.method private performTwitter()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->loadTwitterProfilePicture()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    sget v0, Lcom/facebook/k;->remove_current_picture:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->performProfileDelete()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget v0, Lcom/facebook/k;->take_picture:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->performCamera()V

    goto :goto_0

    .line 103
    :cond_2
    sget v0, Lcom/facebook/k;->choose_from_library:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->performGallery()V

    goto :goto_0

    .line 105
    :cond_3
    sget v0, Lcom/facebook/k;->import_from_facebook:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->performFacebook()V

    goto :goto_0

    .line 107
    :cond_4
    sget v0, Lcom/facebook/k;->import_from_twitter:I

    invoke-direct {p0, p2, v0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$2;->performTwitter()V

    goto :goto_0
.end method
