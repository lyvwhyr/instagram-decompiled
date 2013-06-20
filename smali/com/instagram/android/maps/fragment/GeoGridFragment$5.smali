.class Lcom/instagram/android/maps/fragment/GeoGridFragment$5;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

.field final synthetic val$inflate:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    iput-object p2, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;->val$inflate:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapsChanged()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;->val$inflate:Landroid/view/View;

    #calls: Lcom/instagram/android/maps/fragment/GeoGridFragment;->initState(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$300(Lcom/instagram/android/maps/fragment/GeoGridFragment;Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 176
    return-void
.end method
