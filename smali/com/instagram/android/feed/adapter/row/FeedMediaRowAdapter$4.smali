.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field final synthetic val$media:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$000(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 355
    sget v1, Lcom/facebook/h;->dialog_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 356
    sget v0, Lcom/facebook/g;->dialog_map_imageview:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/instagram/android/mediacache/IgImageView;

    .line 357
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v8

    .line 358
    new-instance v0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$000(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v2}, Lcom/instagram/android/model/Media;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v8, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    const-string v5, "10"

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;-><init>(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const-string v1, "10"

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$000(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/e;->map_width_dialog:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$000(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/e;->map_height_dialog:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getLongitude()Ljava/lang/Double;

    move-result-object v5

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/widget/MapImageViewHelper;->constructStaticMapUrl(Lcom/instagram/android/location/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 376
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$000(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/instagram/android/widget/IgDialogBuilder;->setView(Landroid/view/View;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 377
    return-void
.end method
