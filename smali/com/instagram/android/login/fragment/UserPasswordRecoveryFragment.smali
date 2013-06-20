.class public Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "UserPasswordRecoveryFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_EMAIL:Ljava/lang/String; = "email_lookup"

.field public static final ARGUMENT_USERID:Ljava/lang/String; = "userid"


# instance fields
.field private final mFacebookAuthListener:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;

.field private mHandler:Landroid/os/Handler;

.field private mUser:Lcom/instagram/android/model/User;

.field private resetPasswordCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->resetPasswordCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    .line 96
    new-instance v0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;

    .line 210
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Lcom/instagram/api/AbstractApiCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->resetPasswordCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Lcom/instagram/android/model/User;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindUser(Landroid/view/View;Lcom/instagram/android/model/User;)V
    .locals 5
    .parameter "view"
    .parameter "user"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->how_would_you_like_to_reset_your_password:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_profile_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$5;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 268
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 269
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 273
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 275
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/IgFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 112
    sget v0, Lcom/facebook/h;->fragment_user_password_recovery:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "email_lookup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_textview_email_alt:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_profile_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_button_email_reset:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$2;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :goto_0
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_button_connect_with_facebook:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$4;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;

    invoke-direct {p0, v1, v0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->bindUser(Landroid/view/View;Lcom/instagram/android/model/User;)V

    :cond_0
    move-object v0, v1

    .line 164
    :goto_1
    return-object v0

    .line 129
    :cond_1
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;

    .line 130
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;

    if-nez v0, :cond_2

    .line 131
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/facebook/k;->try_again:I

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    move-object v0, v1

    .line 133
    goto :goto_1

    .line 136
    :cond_2
    sget v0, Lcom/facebook/g;->fragment_user_password_recovery_button_email_reset:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;-><init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 107
    return-void
.end method
