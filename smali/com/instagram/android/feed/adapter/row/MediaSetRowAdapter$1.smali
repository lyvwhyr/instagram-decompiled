.class final Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;
.super Ljava/lang/Object;
.source "MediaSetRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$finalI:I

.field final synthetic val$geoMedia:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;->val$geoMedia:Ljava/util/List;

    iput p2, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;->val$finalI:I

    iput-object p3, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;->val$geoMedia:Ljava/util/List;

    iget v2, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;->val$finalI:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->reverse(Lcom/instagram/android/model/GeoMedia;)V

    .line 66
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
