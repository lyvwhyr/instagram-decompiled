.class public Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method public static bindView(Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;Lcom/instagram/android/model/User;ILandroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;)V
    .locals 6
    .parameter "holder"
    .parameter "user"
    .parameter "photosOfYouCount"
    .parameter "context"
    .parameter "loaderManager"
    .parameter "fragmentManager"
    .parameter "listAdapter"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->mapSwitchButton:Lcom/instagram/android/widget/ProfileMapButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ProfileMapButton;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->taggedSwitchButton:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setVisibility(I)V

    .line 55
    if-eqz p1, :cond_a

    .line 57
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->gridSwitchButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->listSwitchButton:Landroid/widget/Button;

    invoke-static {v0, v3, p6}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper;->bindViews(Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->gridSwitchButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->friendRequestHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;

    invoke-static {v0, p1, p3, p4}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter;->bindView(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;Lcom/instagram/android/model/User;Landroid/content/Context;Landroid/support/v4/app/af;)V

    .line 62
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getUpdateAvatarHelper()Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$1;

    invoke-direct {v3}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$1;-><init>()V

    invoke-virtual {v0, v3}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->photosCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getMediaCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/ViewUtil;->formatLargeNumber(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followersCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowerCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/ViewUtil;->formatLargeNumber(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followingCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowingCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/ViewUtil;->formatLargeNumber(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->canView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->photosCountContainer:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;

    invoke-direct {v3, p0}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;-><init>(Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followersContainer:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;

    invoke-direct {v3, p1, p3, p5}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;-><init>(Lcom/instagram/android/model/User;Landroid/content/Context;Landroid/support/v4/app/p;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followingContainer:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$4;

    invoke-direct {v3, p1, p3, p5}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$4;-><init>(Lcom/instagram/android/model/User;Landroid/content/Context;Landroid/support/v4/app/p;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1
    invoke-static {p1, p3}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter;->shouldShowFollowRow(Lcom/instagram/android/model/User;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p4, v3}, Lcom/instagram/android/widget/FollowButton;->update(Lcom/instagram/android/model/User;Landroid/support/v4/app/af;Z)V

    .line 136
    :goto_1
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_2
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_3
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 152
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->website:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^https?://"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->website:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->website:Landroid/widget/TextView;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;

    invoke-direct {v3, p1, p3}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$6;-><init>(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :goto_4
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->bioLineSeperator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_5
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->mapSwitchButton:Lcom/instagram/android/widget/ProfileMapButton;

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/ProfileMapButton;->setUser(Lcom/instagram/android/model/User;)V

    .line 181
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->taggedSwitchButton:Lcom/instagram/android/people/widget/ProfileTagsButton;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;

    invoke-direct {v3, p1, p5}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;-><init>(Lcom/instagram/android/model/User;Landroid/support/v4/app/p;)V

    invoke-virtual {v0, v3}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->taggedSwitchButton:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setUser(Lcom/instagram/android/model/User;)V

    .line 192
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->taggedSwitchButton:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setPhotosOfYouCount(I)V

    .line 194
    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->verifiedView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_7
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/f;->profile_anonymous_user:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/mediacache/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->editProfileButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->editProfileButton:Landroid/widget/TextView;

    new-instance v3, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$5;

    invoke-direct {v3, p5}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$5;-><init>(Landroid/support/v4/app/p;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 148
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->website:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->bioLineSeperator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    move v0, v2

    .line 194
    goto :goto_6

    .line 197
    :cond_a
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/f;->profile_anonymous_user:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->photosCount:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followersCount:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followingCount:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->friendRequestHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->website:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-virtual {p6}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->failedToFindUser()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->user_not_found:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :goto_8
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->gridSwitchButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 209
    :cond_b
    invoke-virtual {p6}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->failedToFetchUser()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 212
    :cond_c
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8
.end method

.method public static newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "container"

    .prologue
    .line 224
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 225
    sget v1, Lcom/facebook/h;->row_profile_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;-><init>()V

    .line 228
    iput-object v1, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->view:Landroid/view/View;

    .line 229
    sget v0, Lcom/facebook/g;->row_friend_request_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->friendRequestHeader:Landroid/view/View;

    .line 230
    iget-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->friendRequestHeader:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter;->createHolderForView(Landroid/view/View;)Landroid/view/View;

    .line 231
    sget v0, Lcom/facebook/g;->row_profile_header_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 232
    sget v0, Lcom/facebook/g;->row_profile_header_container_photos:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->photosCountContainer:Landroid/view/View;

    .line 233
    sget v0, Lcom/facebook/g;->row_profile_header_textview_photos_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->photosCount:Landroid/widget/TextView;

    .line 234
    sget v0, Lcom/facebook/g;->row_profile_header_container_followers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followersContainer:Landroid/view/View;

    .line 235
    sget v0, Lcom/facebook/g;->row_profile_header_textview_followers_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followersCount:Landroid/widget/TextView;

    .line 236
    sget v0, Lcom/facebook/g;->row_profile_header_container_following:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followingContainer:Landroid/view/View;

    .line 237
    sget v0, Lcom/facebook/g;->row_profile_header_textview_following_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followingCount:Landroid/widget/TextView;

    .line 238
    sget v0, Lcom/facebook/g;->row_profile_header_button_follow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->followButton:Lcom/instagram/android/widget/FollowButton;

    .line 239
    sget v0, Lcom/facebook/g;->row_profile_header_edit_profile:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->editProfileButton:Landroid/widget/TextView;

    .line 240
    sget v0, Lcom/facebook/g;->row_profile_header_textview_biography:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->biography:Landroid/widget/TextView;

    .line 241
    sget v0, Lcom/facebook/g;->row_profile_header_textview_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    .line 242
    sget v0, Lcom/facebook/g;->row_profile_header_textview_website:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->website:Landroid/widget/TextView;

    .line 243
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->gridSwitchButtonGroup:Landroid/view/ViewGroup;

    .line 244
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_button_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->gridSwitchButton:Landroid/widget/Button;

    .line 245
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_button_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->listSwitchButton:Landroid/widget/Button;

    .line 246
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_button_map:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ProfileMapButton;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->mapSwitchButton:Lcom/instagram/android/widget/ProfileMapButton;

    .line 247
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_button_tagged:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/ProfileTagsButton;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->taggedSwitchButton:Lcom/instagram/android/people/widget/ProfileTagsButton;

    .line 248
    sget v0, Lcom/facebook/g;->row_profile_header_textview_biography_group:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->bioLineSeperator:Landroid/view/View;

    .line 249
    sget v0, Lcom/facebook/g;->row_profile_header_textview_verified:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->verifiedView:Landroid/view/View;

    .line 250
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    return-object v1
.end method

.method private static shouldShowFollowRow(Lcom/instagram/android/model/User;Landroid/content/Context;)Z
    .locals 1
    .parameter "user"
    .parameter "context"

    .prologue
    .line 220
    invoke-static {}, Lcom/instagram/util/PreferenceUtil;->getGlobalPreferences()Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
