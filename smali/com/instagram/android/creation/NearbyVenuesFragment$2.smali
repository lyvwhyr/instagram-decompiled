.class Lcom/instagram/android/creation/NearbyVenuesFragment$2;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$100(Lcom/instagram/android/creation/NearbyVenuesFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 98
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$200(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$200(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->isCustomRow(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$300(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->getPhotoLocation()Landroid/location/Location;
    invoke-static {v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$400(Lcom/instagram/android/creation/NearbyVenuesFragment;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$200(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$200(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getItem(I)Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lcom/instagram/foursquare/FoursquarePingbackRequest;

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-virtual {v2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mRequestID:Ljava/lang/String;
    invoke-static {v3}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$500(Lcom/instagram/android/creation/NearbyVenuesFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/instagram/foursquare/FoursquarePingbackRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/android/location/Venue;)V

    invoke-static {v1}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Lcom/instagram/api/request/AbstractRequest;)V

    .line 117
    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$600(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #getter for: Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;
    invoke-static {v1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$600(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;->onVenueSelected(Lcom/instagram/android/location/Venue;)V

    goto :goto_0
.end method
