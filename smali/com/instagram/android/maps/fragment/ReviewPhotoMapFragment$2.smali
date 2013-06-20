.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$2;
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
    .line 72
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$2;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 76
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$2;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mIntroIsShowing:Z
    invoke-static {v0, v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$102(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)Z

    .line 77
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$2;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #calls: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->showLoadingErrorIfNecessary()V
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$200(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    .line 78
    return-void
.end method
