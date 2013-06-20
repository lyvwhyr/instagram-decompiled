.class Lcom/instagram/android/maps/ui/MapMediaPopup$10;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/android/widget/OnMeasureListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$child:Lcom/instagram/android/widget/ConstrainedImageView;

.field final synthetic val$media:Lcom/instagram/android/model/GeoMedia;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/widget/ConstrainedImageView;Lcom/instagram/android/model/GeoMedia;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$10;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$10;->val$child:Lcom/instagram/android/widget/ConstrainedImageView;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$10;->val$media:Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measured(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$10;->val$child:Lcom/instagram/android/widget/ConstrainedImageView;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$10;->val$media:Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v1, p1}, Lcom/instagram/android/model/GeoMedia;->getUrlForSize(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->setUrl(Ljava/lang/String;)V

    .line 403
    return-void
.end method
