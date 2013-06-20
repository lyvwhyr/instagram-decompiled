.class Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$4;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$4;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$4;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->confirmAddressDialog()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->access$000(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    .line 87
    return-void
.end method
