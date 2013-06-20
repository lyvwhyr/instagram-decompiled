.class public Lcom/instagram/android/rageshake/RageShakeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RageShakeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RageShakeActivity"


# instance fields
.field private mDescriptionEditText:Landroid/widget/EditText;

.field private mScreenshotSection:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/rageshake/RageShakeActivity;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideScreenShotSection()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/rageshake/RageShakeActivity;->mScreenshotSection:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method

.method private isScreenShotSectionVisible()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/rageshake/RageShakeActivity;->mScreenshotSection:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getScreenShotPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->isScreenShotSectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_MEDIA_FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isBugReportRetry()Z
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_RETRY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onClickBack(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->finish()V

    .line 66
    return-void
.end method

.method public onClickSend(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget v0, Lcom/facebook/k;->rageshake_error_description:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getScreenShotPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/instagram/android/rageshake/RageShakeService;->startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/facebook/h;->rageshake:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeActivity;->setContentView(I)V

    .line 34
    sget v0, Lcom/facebook/g;->bug_description:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/rageshake/RageShakeActivity;->mDescriptionEditText:Landroid/widget/EditText;

    .line 35
    sget v0, Lcom/facebook/g;->screenshot_section:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/rageshake/RageShakeActivity;->mScreenshotSection:Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->isBugReportRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/instagram/android/rageshake/RageShakeActivity;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getScreenShotPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->getScreenShotPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    sget v0, Lcom/facebook/g;->screenshot:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->hideScreenShotSection()V

    goto :goto_0
.end method

.method public onRemoveClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeActivity;->hideScreenShotSection()V

    .line 70
    return-void
.end method
