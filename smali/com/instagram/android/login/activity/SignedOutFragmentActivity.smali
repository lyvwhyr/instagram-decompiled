.class public Lcom/instagram/android/login/activity/SignedOutFragmentActivity;
.super Lcom/instagram/android/activity/BaseFragmentActivity;
.source "SignedOutFragmentActivity.java"


# static fields
.field public static overrideBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeStartingFragment()V
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 25
    sget v1, Lcom/facebook/g;->layout_container_main:I

    new-instance v2, Lcom/instagram/android/fragment/LandingPageFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/LandingPageFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 26
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    .line 28
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->onResume()V

    .line 36
    invoke-static {p0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/login/fragment/RegisterFragment;->getHasFinishedRegistrationFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->finish()V

    .line 40
    :cond_0
    return-void
.end method
