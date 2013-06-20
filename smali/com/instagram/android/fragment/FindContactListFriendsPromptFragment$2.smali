.class Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$2;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$2;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$2;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->promptBeforeGoingToNextStep()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->access$100(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    .line 68
    return-void
.end method
