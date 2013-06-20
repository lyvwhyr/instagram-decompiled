.class public Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter;
.super Ljava/lang/Object;
.source "SuggestedUserRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;Lcom/instagram/android/model/SuggestedUser;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/support/v4/app/p;ZZLandroid/support/v4/app/af;)V
    .locals 7
    .parameter "holder"
    .parameter "user"
    .parameter "context"
    .parameter "adapter"
    .parameter "fragmentManager"
    .parameter "showFollowButton"
    .parameter "canNavigateToUserProfile"
    .parameter "loaderManager"

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->stripNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->description:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFullNameOrUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getFullNameOrUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 49
    :goto_2
    if-ge v2, v6, :cond_2

    if-ge v2, v3, :cond_2

    .line 50
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    aget-object v4, v0, v2

    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 52
    :cond_2
    if-eqz p5, :cond_3

    .line 53
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v0, v2, p7, v1}, Lcom/instagram/android/widget/FollowButton;->update(Lcom/instagram/android/model/User;Landroid/support/v4/app/af;Z)V

    .line 59
    :goto_3
    if-eqz p6, :cond_5

    .line 60
    new-instance v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;

    invoke-direct {v2, p4, p1}, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;-><init>(Landroid/support/v4/app/p;Lcom/instagram/android/model/SuggestedUser;)V

    .line 67
    invoke-virtual {p1}, Lcom/instagram/android/model/SuggestedUser;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v1

    .line 68
    :goto_4
    if-ge v0, v6, :cond_4

    if-ge v0, v3, :cond_4

    .line 69
    iget-object v1, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v0, v5}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    goto :goto_3

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_5
    return-void
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_suggested_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;-><init>()V

    .line 83
    sget v0, Lcom/facebook/g;->row_suggested_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    .line 84
    sget v0, Lcom/facebook/g;->row_suggested_user_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->description:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/facebook/g;->row_suggested_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/facebook/g;->row_suggested_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/facebook/g;->row_suggested_user_follow_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    .line 88
    iget-object v3, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    const/4 v4, 0x0

    sget v0, Lcom/facebook/g;->row_suggest_user_imageview_1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    aput-object v0, v3, v4

    .line 89
    iget-object v3, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    const/4 v4, 0x1

    sget v0, Lcom/facebook/g;->row_suggest_user_imageview_2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    aput-object v0, v3, v4

    .line 90
    iget-object v3, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    const/4 v4, 0x2

    sget v0, Lcom/facebook/g;->row_suggest_user_imageview_3:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    aput-object v0, v3, v4

    .line 91
    iget-object v3, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    const/4 v4, 0x3

    sget v0, Lcom/facebook/g;->row_suggest_user_imageview_4:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    aput-object v0, v3, v4

    .line 92
    sget v0, Lcom/facebook/g;->row_suggested_user_row:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->userRow:Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    return-object v1
.end method
