.class public Lcom/instagram/android/maps/DedicatedMapActivity;
.super Lcom/instagram/android/activity/ArbitraryFragmentActivity;
.source "DedicatedMapActivity.java"


# static fields
.field public static final BROADCAST_DEDICATED_MAP_ACTIVITY_BACK:Ljava/lang/String; = "DedicatedMapActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/android/activity/ArbitraryFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeStartingFragment()V
    .locals 4

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/instagram/android/fragment/MapFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/MapFragment;-><init>()V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v1

    .line 29
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 30
    invoke-virtual {v1}, Landroid/support/v4/app/ac;->a()I

    .line 33
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 44
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "DedicatedMapsActivity"

    const-string v1, "broadcast"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "DedicatedMapsActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Lcom/instagram/android/activity/ArbitraryFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
