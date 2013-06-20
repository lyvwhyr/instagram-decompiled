.class Lcom/instagram/android/maps/ui/MapMediaPopup$3;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$media:Lcom/instagram/android/model/GeoMedia;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$3;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$3;->val$media:Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 233
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/instagram/util/FragmentNavigator;

    invoke-direct {v1, v0}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$3;->val$media:Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/util/FragmentNavigator;->toMedia(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 235
    return-void
.end method
