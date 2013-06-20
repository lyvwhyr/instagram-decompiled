.class public Lcom/instagram/android/fragment/CommentThreadFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;
.implements Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;


# static fields
.field public static final INTENT_EXTRA_MEDIA_ID:Ljava/lang/String; = "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_MEDIA_ID"

.field public static final INTENT_EXTRA_SHOW_KEYBOARD:Ljava/lang/String; = "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_SHOW_KEYBOARD"


# instance fields
.field private final editStatusUpdateObserver:Landroid/database/DataSetObserver;

.field private mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

.field private mIsEditing:Z

.field private mMedia:Lcom/instagram/android/model/Media;

.field private mOldOrientation:I

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;

.field private updatedMediaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z

    .line 71
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$1;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->updatedMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$2;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$3;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->editStatusUpdateObserver:Landroid/database/DataSetObserver;

    .line 99
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$4;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/fragment/CommentThreadFragment;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/adapter/CommentThreadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/CommentThreadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->validate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->configureAutoComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/CommentThreadFragment;->sendCommentFromTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/CommentThreadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->toggleEditView()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/CommentThreadFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/CommentThreadFragment;->scrollToBottom(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/fragment/CommentThreadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->canEdit()Z

    move-result v0

    return v0
.end method

.method private canEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 519
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-nez v1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    invoke-virtual {v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->getCount()I

    move-result v1

    .line 525
    if-eqz v1, :cond_0

    .line 529
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_0

    .line 535
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private configureAutoComplete()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/model/Media;)V

    .line 502
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    :cond_0
    return-void
.end method

.method private getButtonSend()Landroid/view/View;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->layout_comment_thread_button_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getCommentEditText()Lcom/instagram/android/widget/CommentAutoCompleteTextView;
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->layout_comment_thread_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    .line 492
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->configureAutoComplete()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    return-object v0
.end method

.method private hideKeyboard(Landroid/widget/EditText;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    return-void
.end method

.method private postCommentWithText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-direct {p0, p1, v1, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->postCommentWithText(Ljava/lang/String;Lcom/instagram/android/model/Media;Lcom/instagram/android/model/User;)V

    .line 386
    :cond_0
    return-void
.end method

.method private postCommentWithText(Ljava/lang/String;Lcom/instagram/android/model/Media;Lcom/instagram/android/model/User;)V
    .locals 4
    .parameter "text"
    .parameter "media"
    .parameter "currentUser"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Lcom/instagram/android/model/Comment;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/instagram/android/model/Comment;-><init>(Ljava/lang/String;Lcom/instagram/android/model/Media;Lcom/instagram/android/model/User;Lcom/instagram/android/fragment/CommentThreadFragment;)V

    .line 391
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/model/Media;->commentPostRequestStart(Lcom/instagram/android/model/Comment;Landroid/content/Context;)V

    .line 392
    new-instance v1, Lcom/instagram/api/loaderrequest/PostCommentRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/api/loaderrequest/PostCommentRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;)V

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/PostCommentRequest;->perform(Lcom/instagram/android/model/Comment;)V

    .line 394
    :cond_0
    return-void
.end method

.method private scrollToBottom(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CommentThreadFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$6;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_0
    return-void
.end method

.method private sendCommentFromTextView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->postCommentWithText(Ljava/lang/String;)V

    .line 299
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->scrollToBottom(I)V

    .line 302
    :cond_0
    return-void
.end method

.method private setStickyTabVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 618
    return-void
.end method

.method private shouldShowKeyboard()Z
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_SHOW_KEYBOARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/support/v4/app/p;Lcom/instagram/android/model/Media;Z)V
    .locals 3
    .parameter "manager"
    .parameter "media"
    .parameter "showKeyboard"

    .prologue
    .line 594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 595
    const-string v1, "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_MEDIA_ID"

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_SHOW_KEYBOARD"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 597
    new-instance v1, Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;-><init>()V

    invoke-static {p0, v1, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 598
    return-void
.end method

.method private toggleEditView()V
    .locals 2

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z

    .line 508
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->layout_comment_thread_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 509
    iget-boolean v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 512
    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->hideKeyboard(Landroid/widget/EditText;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/CommentThreadAdapter;->notifyDataSetChanged()V

    .line 516
    return-void

    .line 507
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    iget-object v2, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getCommentEditText()Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getButtonSend()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getButtonSend()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 448
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$15;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$15;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    return-object v0
.end method

.method public hasMoreItems()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->hasMoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z

    return v0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadMoreVisible()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->isLoadingMoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .locals 5

    .prologue
    .line 559
    new-instance v0, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/instagram/android/fragment/CommentThreadFragment$16;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$16;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FetchAllCommentsRequest;->perform(Lcom/instagram/android/model/Media;)V

    .line 581
    return-void
.end method

.method protected makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)",
            "Lcom/instagram/api/loaderrequest/MediaFeedRequest;"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$17;

    sget v1, Lcom/facebook/g;->request_id_media_fetch_from_comment:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/CommentThreadFragment$17;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/support/v4/app/Fragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->setStickyTabVisibility(I)V

    .line 160
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_MEDIA_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    .line 120
    new-instance v0, Lcom/instagram/android/adapter/CommentThreadAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/instagram/android/adapter/CommentThreadAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/instagram/android/fragment/CommentThreadFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    .line 122
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$5;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->perform()V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->updatedMediaReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_MEDIA_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/android/model/Media;->getMediaBroadcastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->setMedia(Lcom/instagram/android/model/Media;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 221
    sget v0, Lcom/facebook/h;->layout_comment_thread:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mView:Landroid/view/View;

    .line 223
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getCommentEditText()Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    move-result-object v1

    .line 225
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$7;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$7;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 240
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getButtonSend()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 242
    new-instance v2, Lcom/instagram/android/fragment/CommentThreadFragment$8;

    invoke-direct {v2, p0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment$8;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;Lcom/instagram/android/widget/CommentAutoCompleteTextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$9;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$9;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$10;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$10;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setBackButtonListener(Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;)V

    .line 266
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$11;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$11;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setSimpleChangedLayoutListener(Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->hideKeyboard(Landroid/widget/EditText;)V

    .line 276
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setVisibility(I)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->updatedMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 195
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroy()V

    .line 196
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroyView()V

    .line 185
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 187
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iput-object v2, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mCommentEditText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    .line 189
    iput-object v2, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mView:Landroid/view/View;

    .line 190
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 355
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setUserLinkClickListener(Lcom/instagram/android/listener/UserLinkClickListener;)V

    .line 357
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 358
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->editStatusUpdateObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 362
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->setStickyTabVisibility(I)V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getCommentEditText()Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->hideKeyboard(Landroid/widget/EditText;)V

    .line 374
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->toggleEditView()V

    .line 378
    :cond_1
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onPause()V

    .line 379
    return-void
.end method

.method public onPostCommentFailed(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V
    .locals 2
    .parameter "comment"
    .parameter "wasMarkedAsSpam"
    .parameter "optionalErrorMessageFromServer"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CommentThreadFragment$13;

    invoke-direct {v1, p0, p3, p1}, Lcom/instagram/android/fragment/CommentThreadFragment$13;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;Ljava/lang/String;Lcom/instagram/android/model/Comment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v0, "checkpoint_required"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CommentThreadFragment$14;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$14;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 310
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 312
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mOldOrientation:I

    .line 313
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 315
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->editStatusUpdateObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 319
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 322
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->setStickyTabVisibility(I)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 329
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->shouldShowKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 333
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getCommentEditText()Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->requestFocus()Z

    .line 338
    :goto_0
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CommentThreadFragment$12;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$12;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setUserLinkClickListener(Lcom/instagram/android/listener/UserLinkClickListener;)V

    .line 345
    invoke-direct {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->validate()Z

    .line 346
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onStart()V

    .line 168
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onStop()V

    .line 173
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 179
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 180
    return-void
.end method
