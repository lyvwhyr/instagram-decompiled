.class Lcom/instagram/android/people/fragment/UserTagOptionsFragment$3;
.super Landroid/text/style/ClickableSpan;
.source "UserTagOptionsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$3;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "widget"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$3;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/433611883398929"

    iget-object v4, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$3;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    invoke-virtual {v4}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->addAndroidVersionToUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
