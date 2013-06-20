.class public Lcom/instagram/android/activity/ArbitraryFragmentActivity;
.super Lcom/instagram/android/activity/BaseFragmentActivity;
.source "ArbitraryFragmentActivity.java"


# static fields
.field public static final EXTRAS_BUNDLE:Ljava/lang/String; = "com.instagram.android.activity.ArbitraryFragmentActivity.EXTRAS_BUNDLE"

.field public static final EXTRAS_FRAGMENT_CLASS_NAME:Ljava/lang/String; = "com.instagram.android.activity.ArbitraryFragmentActivity.EXTRAS_FRAGMENT_CLASS_NAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeStartingFragment()V
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/instagram/android/activity/ArbitraryFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/instagram/android/activity/ArbitraryFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.ArbitraryFragmentActivity.EXTRAS_FRAGMENT_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {p0}, Lcom/instagram/android/activity/ArbitraryFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.activity.ArbitraryFragmentActivity.EXTRAS_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/activity/ArbitraryFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v1

    .line 30
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 31
    invoke-virtual {v1}, Landroid/support/v4/app/ac;->a()I

    .line 34
    :cond_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No fragment by the name of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
