.class public Lcom/instagram/android/support/camera/CropActivity;
.super Lcom/instagram/android/fragment/IgFragmentActivity;
.source "CropActivity.java"

# interfaces
.implements Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragmentActivity;-><init>()V

    return-void
.end method

.method private configureScreenFeatures()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 44
    invoke-virtual {p0, v4}, Lcom/instagram/android/support/camera/CropActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 54
    if-ne v1, v4, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 56
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelCrop()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/CropActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->finish()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropActivity;->configureScreenFeatures()V

    .line 27
    sget v0, Lcom/facebook/h;->activity_capture:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/CropActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 30
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/instagram/android/support/camera/CropFragment;

    invoke-direct {v1}, Lcom/instagram/android/support/camera/CropFragment;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 39
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    .line 41
    :cond_0
    return-void
.end method

.method public onFinishCrop(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "uri"
    .parameter "extras"

    .prologue
    .line 63
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/support/camera/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/CropActivity;->finish()V

    .line 67
    return-void
.end method
