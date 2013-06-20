.class public Lcom/instagram/android/activity/TumblrAuthActivity;
.super Lcom/instagram/android/activity/XAuthActivity;
.source "TumblrAuthActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TumblrAuthActivity"


# instance fields
.field private final mDoneButtonOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/activity/XAuthActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/instagram/android/activity/TumblrAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/TumblrAuthActivity$1;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity;->mDoneButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/activity/TumblrAuthActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/activity/TumblrAuthActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "progressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 141
    iget-object v1, p0, Lcom/instagram/android/activity/TumblrAuthActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/android/activity/TumblrAuthActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity$2;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;Landroid/support/v4/app/DialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    sget v0, Lcom/facebook/g;->password:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    sget v0, Lcom/facebook/g;->username:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;I)V
    .locals 3
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-static {}, Lcom/instagram/android/fragment/ProgressDialogFragment;->newInstance()Lcom/instagram/android/fragment/ProgressDialogFragment;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "progressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/ProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getSupportLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;Lcom/instagram/android/activity/TumblrAuthActivity$1;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/af;->b(ILandroid/os/Bundle;Landroid/support/v4/app/ag;)Landroid/support/v4/a/c;

    .line 137
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->tumblr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setupContentView()V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string v1, "deliverOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getSupportLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/activity/TumblrAuthActivity$XAuthLoaderCallbacks;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;Lcom/instagram/android/activity/TumblrAuthActivity$1;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/af;->a(ILandroid/os/Bundle;Landroid/support/v4/app/ag;)Landroid/support/v4/a/c;

    .line 69
    sget v0, Lcom/facebook/h;->activity_tumblr_auth:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->setContentView(I)V

    .line 71
    sget v0, Lcom/facebook/g;->done:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/TumblrAuthActivity;->mDoneButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lcom/facebook/g;->username:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->email:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/activity/TumblrAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
