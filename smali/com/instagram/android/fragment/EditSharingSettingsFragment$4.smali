.class Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;
.super Landroid/os/AsyncTask;
.source "EditSharingSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 294
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->unlink(Landroid/content/Context;)V

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "aVoid"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$4;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    #calls: Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->access$300(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 301
    return-void
.end method
