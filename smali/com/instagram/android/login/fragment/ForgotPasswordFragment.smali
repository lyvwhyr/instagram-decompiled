.class public Lcom/instagram/android/login/fragment/ForgotPasswordFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# instance fields
.field private final mFacebookAuthListener:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$4;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 151
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 152
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/IgFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 40
    sget v0, Lcom/facebook/h;->fragment_forgot_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    sget v1, Lcom/facebook/g;->fragment_forgot_password_email_username:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$1;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget v1, Lcom/facebook/g;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$2;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v1, Lcom/facebook/g;->fragment_forgot_password_help_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$3;-><init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object v0
.end method
