.class Lcom/instagram/android/creation/NearbyVenuesFragment$7;
.super Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;
.source "NearbyVenuesFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$7;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchSubmitted(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/String;)V
    .locals 3
    .parameter "searchEditText"
    .parameter "queryString"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$7;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$7;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$300(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$7;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->getPhotoLocation()Landroid/location/Location;
    invoke-static {v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$400(Lcom/instagram/android/creation/NearbyVenuesFragment;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;Landroid/location/Location;)V

    .line 305
    return-void
.end method

.method public onSearchTextChanged(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "editText"
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$7;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;
    invoke-static {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$200(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->updateSearchString(Ljava/lang/String;)V

    .line 311
    return-void
.end method
