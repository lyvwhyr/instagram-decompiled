.class public abstract Lcom/instagram/android/activity/XAuthActivity;
.super Lcom/instagram/android/fragment/IgFragmentActivity;
.source "XAuthActivity.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragmentActivity;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/XAuthActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/activity/XAuthActivity;->setupContentView()V

    .line 31
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/XAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/activity/XAuthActivity;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget v0, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/XAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/XAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/XAuthActivity$1;-><init>(Lcom/instagram/android/activity/XAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v0, Lcom/facebook/g;->uploadButton:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/XAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method

.method protected abstract setupContentView()V
.end method

.method protected showAlertDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/activity/XAuthActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/activity/XAuthActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/activity/XAuthActivity$2;-><init>(Lcom/instagram/android/activity/XAuthActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method
