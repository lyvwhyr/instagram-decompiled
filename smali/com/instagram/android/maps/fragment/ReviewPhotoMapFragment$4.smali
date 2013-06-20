.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;
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
    .line 91
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #getter for: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$400(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4$1;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
