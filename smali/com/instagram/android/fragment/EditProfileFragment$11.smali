.class Lcom/instagram/android/fragment/EditProfileFragment$11;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$11;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$11;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    sget v1, Lcom/facebook/k;->edit_profile:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$11;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mIsLoading:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1100(Lcom/instagram/android/fragment/EditProfileFragment;)Z

    move-result v0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$11;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1200(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/model/UserForEditing;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
