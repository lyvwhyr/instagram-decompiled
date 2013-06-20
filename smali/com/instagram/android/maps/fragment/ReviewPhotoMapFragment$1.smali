.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$1;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$1;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapsChanged()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$1;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #calls: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getAdapter()Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$000(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method
