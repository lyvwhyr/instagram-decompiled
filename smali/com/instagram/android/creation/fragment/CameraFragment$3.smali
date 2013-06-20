.class Lcom/instagram/android/creation/fragment/CameraFragment$3;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$3;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$3;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 415
    return-void
.end method
