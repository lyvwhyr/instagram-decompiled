.class Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$2;
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
    .line 78
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$2;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$2;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->promptBeforeGoingToNextStep()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->access$200(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    .line 82
    return-void
.end method
