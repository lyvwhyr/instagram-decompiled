.class public Lcom/instagram/android/adapter/row/CommentRowAdapter;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->getFlagMenuOptions(Landroid/content/res/Resources;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->getMenuOptions(Landroid/content/Context;Z)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static bindView(Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;Lcom/instagram/android/model/Comment;Landroid/app/Activity;Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 10
    .parameter "holder"
    .parameter "comment"
    .parameter "context"
    .parameter "fragment"

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 57
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    invoke-static {p1}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->canDelete(Lcom/instagram/android/model/Comment;)Z

    move-result v8

    .line 59
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    new-instance v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$1;

    invoke-direct {v1, p1}, Lcom/instagram/android/adapter/row/CommentRowAdapter$1;-><init>(Lcom/instagram/android/model/Comment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->report:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/instagram/android/fragment/CommentThreadFragment;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v8, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    sget v0, Lcom/facebook/c;->comment_report_options:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v9, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->report:Landroid/widget/ImageView;

    new-instance v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    move-object v1, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;-><init>(Landroid/app/Activity;Landroid/content/res/Resources;[Ljava/lang/CharSequence;Lcom/instagram/android/fragment/CommentThreadFragment;Lcom/instagram/android/model/Comment;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p3}, Lcom/instagram/android/fragment/CommentThreadFragment;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    move v0, v6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v9, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteButton:Landroid/widget/Button;

    new-instance v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move v4, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;-><init>(Lcom/instagram/android/model/Comment;Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;Lcom/instagram/android/fragment/CommentThreadFragment;ZLandroid/app/Activity;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 139
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteConfirmedButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteConfirmedButton:Landroid/widget/Button;

    new-instance v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$4;

    invoke-direct {v1, p1, p3}, Lcom/instagram/android/adapter/row/CommentRowAdapter$4;-><init>(Lcom/instagram/android/model/Comment;Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->commentText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/Comment;->getFormattedCommentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->commentText:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 149
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->timeAgo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/instagram/android/model/Comment;->getFormattedDate(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->failedButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    invoke-virtual {p1}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Posting:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    :goto_2
    invoke-virtual {p1}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Failure:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v1, :cond_3

    .line 159
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->failedButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    :goto_3
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->failedButton:Landroid/widget/Button;

    new-instance v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    invoke-direct {v1, p1, p3, p2}, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;-><init>(Lcom/instagram/android/model/Comment;Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void

    :cond_0
    move v0, v7

    .line 67
    goto/16 :goto_0

    :cond_1
    move v0, v7

    .line 103
    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->failedButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public static canDelete(Lcom/instagram/android/model/Comment;)Z
    .locals 5
    .parameter "comment"

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/instagram/android/model/User;->isIsStaff()Z

    move-result v2

    .line 201
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getUser()Lcom/instagram/android/model/User;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/instagram/android/model/User;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 202
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/instagram/android/model/User;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 203
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 205
    :cond_1
    return v0
.end method

.method private static getFlagMenuOptions(Landroid/content/res/Resources;)[Ljava/lang/CharSequence;
    .locals 3
    .parameter "resources"

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 51
    const/4 v1, 0x0

    sget v2, Lcom/facebook/k;->flag_report_abuse:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    return-object v0
.end method

.method private static getMenuOptions(Landroid/content/Context;Z)[Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "userCanDeleteComments"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    sget v2, Lcom/facebook/k;->delete_and_report_abuse:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget v2, Lcom/facebook/k;->delete:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    return-object v0

    .line 42
    :cond_0
    sget v2, Lcom/facebook/k;->delete:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isCommentOwner(Lcom/instagram/android/model/Comment;)Z
    .locals 2
    .parameter "comment"

    .prologue
    .line 210
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 220
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_comment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 221
    new-instance v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;-><init>()V

    .line 222
    sget v0, Lcom/facebook/g;->row_comment_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->userImageview:Lcom/instagram/android/mediacache/IgImageView;

    .line 223
    sget v0, Lcom/facebook/g;->row_comment_report:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->report:Landroid/widget/ImageView;

    .line 224
    sget v0, Lcom/facebook/g;->row_comment_textview_comment:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->commentText:Landroid/widget/TextView;

    .line 225
    sget v0, Lcom/facebook/g;->row_comment_textview_time_ago:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->timeAgo:Landroid/widget/TextView;

    .line 226
    sget v0, Lcom/facebook/g;->row_comment_button_failed:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->failedButton:Landroid/widget/Button;

    .line 227
    sget v0, Lcom/facebook/g;->row_comment_button_delete:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteButton:Landroid/widget/Button;

    .line 228
    sget v0, Lcom/facebook/g;->row_comment_button_delete_confirmed:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteConfirmedButton:Landroid/widget/Button;

    .line 229
    sget v0, Lcom/facebook/g;->row_comment_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    return-object v1
.end method
