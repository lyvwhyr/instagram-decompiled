.class public Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;
.super Landroid/app/Dialog;
.source "IgFacebookOpenGraphDialog.java"


# static fields
.field private static final FACEBOOK_OG_PHOTO_COUNT:Ljava/lang/String; = "facebook_og_photo_count"

.field private static final PREFERENCE_OG_DIALOG_DISPLAYED:Ljava/lang/String; = "facebook_og_dialog10"

.field private static mCallbacks:Lcom/instagram/api/AbstractApiCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$1;

    invoke-direct {v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$1;-><init>()V

    sput-object v0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->mCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget v0, Lcom/facebook/l;->IgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    sget v0, Lcom/facebook/h;->layout_facebook_opengraph:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->setContentView(I)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->setCancelable(Z)V

    .line 48
    return-void
.end method

.method static synthetic access$000()Lcom/instagram/api/AbstractApiCallbacks;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->mCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    return-object v0
.end method

.method private static showDialog(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "context"
    .parameter "loaderManager"
    .parameter "postDialogAction"
    .parameter "preferences"

    .prologue
    .line 64
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebook_og_dialog10"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    new-instance v1, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;-><init>(Landroid/content/Context;)V

    .line 67
    sget v0, Lcom/facebook/g;->layout_facebook_opengraph_textview_sameple:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    const-string v2, "<b>Johhny Appleseed</b> liked a photo on Instagram"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v0, Lcom/facebook/g;->layout_facebook_opengraph_button_no:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;

    invoke-direct {v2, v1, p2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;-><init>(Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcom/facebook/g;->layout_facebook_opengraph_button_yes:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v1}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->show()V

    .line 93
    return-void
.end method

.method public static showOnFirstRun(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "loaderManager"
    .parameter "postDialogAction"

    .prologue
    .line 52
    const-string v0, "instagram_facebook_og_dialog"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "facebook_og_dialog10"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showDialog(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public static showOnThirdSharedPhoto(Landroid/content/Context;Landroid/support/v4/app/af;)V
    .locals 5
    .parameter "context"
    .parameter "loaderManager"

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v0, "instagram_facebook_og_dialog"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "facebook_og_dialog10"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "facebook_og_photo_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "facebook_og_photo_count"

    const-string v3, "facebook_og_photo_count"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showDialog(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method
