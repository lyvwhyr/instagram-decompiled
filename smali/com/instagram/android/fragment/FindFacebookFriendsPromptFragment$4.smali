.class Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$4;
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
    .line 106
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$4;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$4;->this$0:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    #calls: Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->performFacebookAuthorization()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->access$100(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    .line 111
    return-void
.end method
