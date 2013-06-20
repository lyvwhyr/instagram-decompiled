.class Lcom/instagram/android/fragment/AboutFragment$2;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AboutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/model/menu/MenuItem;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/menu/MenuItem;

    .line 126
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->instagram_on_the_web:I

    if-ne v1, v2, :cond_2

    .line 127
    iget-object v0, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.instagram.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/AboutFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->instagram_blog:I

    if-ne v1, v2, :cond_3

    .line 129
    iget-object v0, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://blog.instagram.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/AboutFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->terms_of_service:I

    if-ne v1, v2, :cond_4

    .line 131
    iget-object v0, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "/legal/terms/"

    invoke-static {v1, v3}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    sget v3, Lcom/facebook/k;->terms_of_service:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/instagram/android/activity/SimpleWebViewActivity;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->about_libraries:I

    if-ne v1, v2, :cond_5

    .line 136
    iget-object v0, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "/legal/libraries/android/"

    invoke-static {v1, v3}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    sget v3, Lcom/facebook/k;->about_libraries:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/instagram/android/activity/SimpleWebViewActivity;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v0

    sget v1, Lcom/facebook/k;->privacy_policy:I

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "/legal/privacy/"

    invoke-static {v1, v3}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/AboutFragment$2;->this$0:Lcom/instagram/android/fragment/AboutFragment;

    sget v3, Lcom/facebook/k;->privacy_policy:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/instagram/android/activity/SimpleWebViewActivity;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
