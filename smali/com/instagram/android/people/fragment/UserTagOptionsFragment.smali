.class public Lcom/instagram/android/people/fragment/UserTagOptionsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "UserTagOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARG_REVIEW_ENABLED:Ljava/lang/String; = "UserTagOptionsFragment.ARG_REVIEW_ENABLED"


# instance fields
.field private mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->setReviewState(Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method private setReviewState(Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;)V
    .locals 6
    .parameter "reviewState"
    .parameter "tagAction"

    .prologue
    const/4 v1, 0x1

    .line 118
    sget-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 123
    :goto_0
    new-instance v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v5, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;

    const/4 v3, 0x0

    invoke-direct {v5, p0, v3}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;-><init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;Lcom/instagram/android/people/fragment/UserTagOptionsFragment$1;)V

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->perform()V

    .line 125
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$4;-><init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 51
    sget v0, Lcom/facebook/h;->fragment_user_tag_options:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 53
    sget v0, Lcom/facebook/g;->checkbox_add_automatically:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 55
    sget v0, Lcom/facebook/g;->container_add_automatically:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$1;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$1;-><init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/facebook/g;->checkbox_add_manually:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 66
    sget v0, Lcom/facebook/g;->container_add_manually:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$2;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$2;-><init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->isPeopleTagReviewEnabled()Z

    move-result v3

    .line 77
    iget-object v4, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 78
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 80
    return-object v2

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 113
    iput-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 114
    iput-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 115
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 85
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->learn_more_photos_of_you:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget v1, Lcom/facebook/k;->people_tagging_learn_more_photos:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 93
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v3, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$3;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$3;-><init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
