.class public Lcom/instagram/util/FragmentNavigator;
.super Ljava/lang/Object;
.source "FragmentNavigator.java"


# instance fields
.field private mBackStack:Z

.field private final mManager:Landroid/support/v4/app/p;

.field private final mTransaction:Landroid/support/v4/app/ac;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/p;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/util/FragmentNavigator;->mBackStack:Z

    .line 23
    iput-object p1, p0, Lcom/instagram/util/FragmentNavigator;->mManager:Landroid/support/v4/app/p;

    .line 24
    iget-object v0, p0, Lcom/instagram/util/FragmentNavigator;->mManager:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/util/FragmentNavigator;->mTransaction:Landroid/support/v4/app/ac;

    .line 25
    return-void
.end method


# virtual methods
.method public go()V
    .locals 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/instagram/util/FragmentNavigator;->mBackStack:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/instagram/util/FragmentNavigator;->mTransaction:Landroid/support/v4/app/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/instagram/util/FragmentNavigator;->mTransaction:Landroid/support/v4/app/ac;

    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    .line 32
    iget-object v0, p0, Lcom/instagram/util/FragmentNavigator;->mManager:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->b()Z

    .line 33
    return-void
.end method

.method public noBackStack()Lcom/instagram/util/FragmentNavigator;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/util/FragmentNavigator;->mBackStack:Z

    .line 37
    return-object p0
.end method

.method public to(Landroid/support/v4/app/Fragment;)Lcom/instagram/util/FragmentNavigator;
    .locals 1
    .parameter "fragment"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/util/FragmentNavigator;->to(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    return-object v0
.end method

.method public to(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/util/FragmentNavigator;
    .locals 3
    .parameter "fragment"
    .parameter "arguments"

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/instagram/util/FragmentNavigator;->mTransaction:Landroid/support/v4/app/ac;

    sget v1, Lcom/facebook/g;->layout_container_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 51
    return-object p0
.end method

.method public toMedia(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;
    .locals 2
    .parameter "mediaId"

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/instagram/android/fragment/SingleMediaFeedFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/instagram/util/FragmentNavigator;->to(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    return-object v0
.end method

.method public toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;
    .locals 2
    .parameter "userId"

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/UserDetailFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/instagram/util/FragmentNavigator;->to(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    return-object v0
.end method
