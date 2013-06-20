.class Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$1;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$1;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$1;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->performFacebookAuthorization()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->access$100(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    .line 75
    return-void
.end method
