.class public Lcom/instagram/android/adapter/row/UserRowAdapter;
.super Ljava/lang/Object;
.source "UserRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public bindView(Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;Lcom/instagram/android/model/User;ZZLandroid/support/v4/app/af;)V
    .locals 3
    .parameter "holder"
    .parameter "user"
    .parameter "showFollowButton"
    .parameter "showExtraDisplayName"
    .parameter "loaderManager"

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 23
    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getExtraDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getExtraDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->username:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    if-eqz p3, :cond_1

    .line 31
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    .line 32
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v0, p2, p5, v2}, Lcom/instagram/android/widget/FollowButton;->update(Lcom/instagram/android/model/User;Landroid/support/v4/app/af;Z)V

    .line 36
    :goto_1
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected inflateLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/row/UserRowAdapter;->inflateLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;-><init>()V

    .line 45
    sget v0, Lcom/facebook/g;->row_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    .line 46
    sget v0, Lcom/facebook/g;->row_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/facebook/g;->row_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->username:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/facebook/g;->row_user_follow_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    return-object v1
.end method
