.class Lcom/instagram/android/fragment/EditSharingSettingsFragment$6;
.super Ljava/lang/Object;
.source "EditSharingSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$6;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 317
    return-void
.end method
