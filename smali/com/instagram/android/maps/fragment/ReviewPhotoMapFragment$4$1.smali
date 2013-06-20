.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4$1;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4$1;->this$1:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4$1;->this$1:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #calls: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->startReviewGeoMediaRequest()V
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$300(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    .line 100
    return-void
.end method
