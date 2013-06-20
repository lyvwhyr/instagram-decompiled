.class Lcom/instagram/android/creation/fragment/MetadataFragment$3;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$3;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$3;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 181
    return-void
.end method
