.class Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener$1;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    iget-object v0, v0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    iget-object v1, v1, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showOnFirstRun(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method
