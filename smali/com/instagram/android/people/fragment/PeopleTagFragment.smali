.class public Lcom/instagram/android/people/fragment/PeopleTagFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "PeopleTagFragment.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "PeopleTagFragment"


# instance fields
.field private mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;

.field private mImageUrl:Ljava/lang/String;

.field private mImageView:Lcom/instagram/android/mediacache/IgImageView;

.field private mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

.field private mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

.field private mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;

.field private mShouldShowTagsHelpText:Z

.field private mTagsHelpView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mShouldShowTagsHelpText:Z

    .line 64
    new-instance v0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/people/widget/PhotoScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/people/fragment/PeopleTagFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mShouldShowTagsHelpText:Z

    return p1
.end method

.method static synthetic access$200(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->updateTagsHelpText()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->saveTagUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/widget/PeopleTagsSaveButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;

    return-object v0
.end method

.method private getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-virtual {v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    return-object v0
.end method

.method private saveTagUpdates()V
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "people_tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 229
    new-instance v0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v5

    new-instance v6, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;Lcom/instagram/android/people/fragment/PeopleTagFragment$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->perform()V

    .line 237
    return-void
.end method

.method private updateTagsHelpText()V
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mTagsHelpView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/facebook/k;->people_tagging_tap_to_add:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->people_tagging_drag_to_move:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mShouldShowTagsHelpText:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->isSmallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mTagsHelpView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mTagsHelpView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTag(Lcom/instagram/android/model/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->addTag(Lcom/instagram/android/model/User;)V

    .line 191
    return-void
.end method

.method public cancelEdit()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->finishEdit()V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mImageUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 103
    sget v0, Lcom/facebook/h;->fragment_people_tag:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    sget v1, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 107
    new-instance v2, Lcom/instagram/android/people/fragment/PeopleTagFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment$2;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v2, Lcom/facebook/g;->action_bar_button_done:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/widget/PeopleTagsSaveButton;

    iput-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;

    .line 117
    sget v2, Lcom/facebook/g;->image_view:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 118
    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    iget-object v3, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 120
    sget v2, Lcom/facebook/g;->people_tagging_layout:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iput-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    .line 122
    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v3, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->setEditListener(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;

    invoke-virtual {v2, v4}, Lcom/instagram/android/widget/PeopleTagsSaveButton;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;

    new-instance v3, Lcom/instagram/android/people/fragment/PeopleTagFragment$3;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment$3;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    invoke-virtual {v2, v3}, Lcom/instagram/android/widget/PeopleTagsSaveButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v2, Lcom/facebook/f;->action_bar_glyph_back:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :cond_0
    sget v1, Lcom/facebook/g;->tags_help_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mTagsHelpView:Landroid/widget/TextView;

    .line 138
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->updateTagsHelpText()V

    .line 139
    sget v1, Lcom/facebook/g;->photo_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/people/widget/PhotoScrollView;

    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;

    .line 141
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;

    new-instance v2, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/PhotoScrollView;->setOnMeasureListener(Lcom/instagram/android/widget/OnMeasureListener;)V

    .line 167
    :cond_1
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->setEditListener(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;)V

    .line 175
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->unregister()V

    .line 176
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    .line 177
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mImageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 178
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;

    .line 179
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mTagsHelpView:Landroid/widget/TextView;

    .line 180
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 186
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment;->mPeopleTaggingLayout:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;)V

    .line 187
    return-void
.end method
