.class Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;
.super Ljava/lang/Object;
.source "EditSharingSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

.field final synthetic val$account:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    iput-object p2, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;->val$account:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    iput-object p3, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;->val$account:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    iget-object v2, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/instagram/android/fragment/EditSharingSettingsFragment;->handleRowClick(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->access$200(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;Z)V

    .line 239
    return-void
.end method
