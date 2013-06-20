.class Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7$1;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7$1;->this$1:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7$1;->this$1:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;

    iget-object v0, v0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->promptBeforeGoingToNextStep()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->access$100(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    .line 158
    return-void
.end method
