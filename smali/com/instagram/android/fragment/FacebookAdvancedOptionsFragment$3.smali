.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$3;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$3;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 112
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$3;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    sget-object v2, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS_WITH_MANAGE_PAGES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$3;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;
    invoke-static {v3}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$400(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    .line 116
    return-void
.end method
