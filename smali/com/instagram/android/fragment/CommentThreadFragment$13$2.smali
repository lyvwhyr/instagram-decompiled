.class Lcom/instagram/android/fragment/CommentThreadFragment$13$2;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment$13;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13$2;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://help.instagram.com/customer/portal/articles/245800-reducing-comment-spam"

    iget-object v3, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13$2;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;

    iget-object v3, v3, Lcom/instagram/android/fragment/CommentThreadFragment$13;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->addAndroidVersionToUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13$2;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;

    iget-object v1, v1, Lcom/instagram/android/fragment/CommentThreadFragment$13;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->startActivity(Landroid/content/Intent;)V

    .line 411
    return-void
.end method
