.class Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;
.super Ljava/lang/Object;
.source "EditSharingSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

.field final synthetic val$account:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    iput-object p2, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;->val$account:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$5;->val$account:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    const/4 v2, 0x0

    #calls: Lcom/instagram/android/fragment/EditSharingSettingsFragment;->unlinkAccount(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->access$400(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V

    .line 323
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 324
    return-void
.end method
