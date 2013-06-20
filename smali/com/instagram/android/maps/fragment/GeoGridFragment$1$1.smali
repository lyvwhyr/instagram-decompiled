.class Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$1;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getAdapter()Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->notifyDataSetChanged()V

    .line 61
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$1;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 62
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1$1;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$1;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    #calls: Lcom/instagram/android/maps/fragment/GeoGridFragment;->configureHardwareBackButton()V
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$000(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    .line 63
    return-void
.end method
