.class Lcom/instagram/android/maps/ui/MapMediaPopup$12;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$childView:Landroid/view/View;

.field final synthetic val$geoMedia:Lcom/instagram/android/model/GeoMedia;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->val$geoMedia:Lcom/instagram/android/model/GeoMedia;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->val$geoMedia:Lcom/instagram/android/model/GeoMedia;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    new-instance v2, Lcom/instagram/android/maps/ui/MapMediaPopup;

    iget-object v3, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$800(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mParentView:Landroid/view/View;
    invoke-static {v4}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$900(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->val$childView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/instagram/android/maps/ui/MapMediaPopup;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V

    #setter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v1, v2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$702(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    .line 429
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$700(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setOtherPopup(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    .line 430
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$700(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mParentView:Landroid/view/View;
    invoke-static {v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$900(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v6, v6}, Lcom/instagram/android/maps/ui/MapMediaPopup;->showAtLocation(Landroid/view/View;III)V

    .line 431
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$700(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup$12;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setFinishedAnimationListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V

    .line 444
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->fadeOut()V
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$1000(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    .line 446
    return-void
.end method
