.class Lcom/instagram/android/login/fragment/LookupFragment$1$4;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$4;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$4;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "lookupfragment_progress"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method
