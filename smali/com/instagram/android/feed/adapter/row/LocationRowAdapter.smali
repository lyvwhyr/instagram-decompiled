.class public Lcom/instagram/android/feed/adapter/row/LocationRowAdapter;
.super Ljava/lang/Object;
.source "LocationRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static bindView(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Lcom/instagram/android/location/Venue;Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 7
    .parameter "holder"
    .parameter "venue"
    .parameter "context"
    .parameter "listAdapter"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->gridSwitchButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->listSwitchButton:Landroid/widget/Button;

    invoke-static {v0, v1, p3}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper;->bindViews(Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 39
    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$000(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v6

    const-string v1, "14"

    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$000(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/e;->map_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p1, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    iget-object v5, p1, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/widget/MapImageViewHelper;->constructStaticMapUrl(Lcom/instagram/android/location/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 44
    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$000(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v6

    new-instance v0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$000(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/mediacache/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    iget-object v4, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    const-string v5, "14"

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;-><init>(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->location:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$100(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->address:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$200(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    #getter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->address:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$200(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/util/ViewUtil;->makeVisibilityGoneIfBlank(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_map_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;-><init>()V

    .line 25
    sget v0, Lcom/facebook/g;->row_map_header_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    #setter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;
    invoke-static {v2, v0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$002(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView;

    .line 26
    sget v0, Lcom/facebook/g;->row_map_header_textview_location_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->location:Landroid/widget/TextView;
    invoke-static {v2, v0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$102(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/facebook/g;->row_map_header_textview_location_address:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->address:Landroid/widget/TextView;
    invoke-static {v2, v0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->access$202(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_button_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->gridSwitchButton:Landroid/widget/Button;

    .line 29
    sget v0, Lcom/facebook/g;->layout_button_group_view_switcher_button_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->listSwitchButton:Landroid/widget/Button;

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    return-object v1
.end method
