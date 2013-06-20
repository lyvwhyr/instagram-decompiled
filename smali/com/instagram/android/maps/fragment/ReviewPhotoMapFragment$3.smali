.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$3;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$3;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$3;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 109
    return-void
.end method
