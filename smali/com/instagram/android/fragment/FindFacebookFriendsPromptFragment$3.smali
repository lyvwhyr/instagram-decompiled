.class Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$3;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$3;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$3;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->gotoNextStep()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->access$300(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    .line 117
    return-void
.end method
