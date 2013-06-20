.class Lcom/instagram/android/maps/fragment/GeoGridFragment$1;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapsChanged()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method
