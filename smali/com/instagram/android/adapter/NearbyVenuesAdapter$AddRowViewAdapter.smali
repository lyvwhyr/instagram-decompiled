.class public Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter;
.super Ljava/lang/Object;
.source "NearbyVenuesAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;Ljava/lang/String;)V
    .locals 5
    .parameter "holder"
    .parameter "searchString"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->add_a_location:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    return-void
.end method

.method public static createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 406
    sget v0, Lcom/facebook/h;->row_add_venue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 408
    new-instance v2, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;-><init>()V

    .line 409
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 411
    sget v0, Lcom/facebook/g;->row_add_venue_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;->title:Landroid/widget/TextView;

    .line 413
    return-object v1
.end method
