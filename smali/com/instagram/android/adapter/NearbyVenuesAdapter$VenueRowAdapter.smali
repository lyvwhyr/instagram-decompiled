.class Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter;
.super Ljava/lang/Object;
.source "NearbyVenuesAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;Lcom/instagram/android/location/Venue;I)V
    .locals 3
    .parameter "holder"
    .parameter "venue"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->backgroundContainer:Landroid/view/View;

    if-nez p2, :cond_0

    sget v0, Lcom/facebook/f;->input_fullwidth_alt:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 471
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->backgroundContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/instagram/util/ViewUtil;->setTopPadding(Landroid/view/View;I)V

    .line 472
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->backgroundContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/instagram/util/ViewUtil;->setBottomPadding(Landroid/view/View;I)V

    .line 474
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/location/Venue;->getIsCustomVenue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->subtitle:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->custom_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    :goto_1
    return-void

    .line 467
    :cond_0
    sget v0, Lcom/facebook/f;->input_fullwidth:I

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->subtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->subtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 454
    sget v0, Lcom/facebook/h;->row_venue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 456
    new-instance v2, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;-><init>()V

    .line 457
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    sget v0, Lcom/facebook/g;->background_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->backgroundContainer:Landroid/view/View;

    .line 460
    sget v0, Lcom/facebook/g;->row_venue_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->title:Landroid/widget/TextView;

    .line 461
    sget v0, Lcom/facebook/g;->row_venue_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;->subtitle:Landroid/widget/TextView;

    .line 463
    return-object v1
.end method
