.class Lcom/instagram/android/login/fragment/LookupFragment$1$3;
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
    .line 83
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$3;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;-><init>()V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->setCancelable(Z)V

    .line 88
    iget-object v1, p0, Lcom/instagram/android/login/fragment/LookupFragment$1$3;->this$1:Lcom/instagram/android/login/fragment/LookupFragment$1;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/LookupFragment$1;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/LookupFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "lookupfragment_progress"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 89
    return-void
.end method
