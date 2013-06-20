.class Lcom/instagram/android/maps/ui/MapMediaPopup$2;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$media:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$2;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$2;->val$media:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$2;->val$media:Ljava/util/List;

    invoke-static {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->launchGeoGridFragment(Ljava/util/List;)V

    .line 219
    return-void
.end method
