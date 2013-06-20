.class public abstract Lcom/instagram/android/fragment/IgFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "IgFragmentActivity.java"


# instance fields
.field protected mHasRegisteredSensor:Z

.field protected mSensorHelper:Lcom/instagram/android/rageshake/SensorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Lcom/instagram/android/rageshake/SensorHelper;

    invoke-direct {v0, p0}, Lcom/instagram/android/rageshake/SensorHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mSensorHelper:Lcom/instagram/android/rageshake/SensorHelper;

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mSensorHelper:Lcom/instagram/android/rageshake/SensorHelper;

    invoke-virtual {v0}, Lcom/instagram/android/rageshake/SensorHelper;->onDestroy()V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 36
    iget-boolean v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mHasRegisteredSensor:Z

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mHasRegisteredSensor:Z

    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mSensorHelper:Lcom/instagram/android/rageshake/SensorHelper;

    invoke-virtual {v0}, Lcom/instagram/android/rageshake/SensorHelper;->unRegisterShakeListener()V

    .line 40
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 27
    invoke-static {p0}, Lcom/instagram/android/rageshake/SensorHelper;->isRageShakeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mHasRegisteredSensor:Z

    .line 29
    iget-object v0, p0, Lcom/instagram/android/fragment/IgFragmentActivity;->mSensorHelper:Lcom/instagram/android/rageshake/SensorHelper;

    invoke-virtual {v0}, Lcom/instagram/android/rageshake/SensorHelper;->registerShakeListener()V

    .line 31
    :cond_0
    return-void
.end method
