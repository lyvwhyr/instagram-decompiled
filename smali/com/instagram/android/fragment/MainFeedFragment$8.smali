.class Lcom/instagram/android/fragment/MainFeedFragment$8;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$8;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 480
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$8;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/instagram/android/fragment/MainFeedFragment;->showFacebookList(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->access$700(Lcom/instagram/android/fragment/MainFeedFragment;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$8;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    sget-object v2, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/MainFeedFragment$8;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    #getter for: Lcom/instagram/android/fragment/MainFeedFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;
    invoke-static {v3}, Lcom/instagram/android/fragment/MainFeedFragment;->access$800(Lcom/instagram/android/fragment/MainFeedFragment;)Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0
.end method
