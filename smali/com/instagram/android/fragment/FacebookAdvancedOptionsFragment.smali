.class public Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookAdvancedOptionsFragment"


# instance fields
.field private mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private final mFacebookAuthListener:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;

.field private mHandler:Landroid/os/Handler;

.field private mOpenGraphActionRequest:Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;

.field private mOpenGraphActionRequestCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

.field private mPostingOptionsRow:Landroid/view/View;

.field private mTimelineRow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mOpenGraphActionRequest:Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mTimelineRow:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$5;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 173
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 174
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 178
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 180
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/IgFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mOpenGraphActionRequestCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    .line 88
    new-instance v0, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mOpenGraphActionRequestCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mOpenGraphActionRequest:Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 96
    sget v0, Lcom/facebook/h;->fragment_facebook_advanced_options:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    sget v0, Lcom/facebook/g;->fragment_facebook_advanced_options_row_settings_likes:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mTimelineRow:Landroid/view/View;

    .line 98
    sget v0, Lcom/facebook/g;->facebook_posting_options_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mPostingOptionsRow:Landroid/view/View;

    .line 99
    sget v0, Lcom/facebook/g;->fragment_facebook_advanced_options_row_settings_likes_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 102
    new-instance v0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$2;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V

    .line 109
    new-instance v2, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$3;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V

    .line 119
    iget-object v3, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mTimelineRow:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v3, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v3, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mPostingOptionsRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->hasPageToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mPostingOptionsRow:Landroid/view/View;

    sget v2, Lcom/facebook/g;->facebook_posting_options_shareto_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPageAccount()Lcom/instagram/android/model/FacebookPostingAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/FacebookPostingAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mTimelineRow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 134
    return-object v1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 141
    new-instance v0, Lcom/instagram/api/loaderrequest/FetchOpenGraphStatus;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/FetchOpenGraphStatus;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FetchOpenGraphStatus;->perform()V

    .line 169
    return-void
.end method
