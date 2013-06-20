.class Lcom/instagram/android/maps/ui/MapMediaPopup$4;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$4;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$4;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$100(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/PhotoOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->hide()V

    .line 310
    return-void
.end method
