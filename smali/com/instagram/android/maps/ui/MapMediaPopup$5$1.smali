.class Lcom/instagram/android/maps/ui/MapMediaPopup$5$1;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$5;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup$5;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$5$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$5$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$5;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/MapMediaPopup$5;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$100(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/PhotoOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->show()V

    .line 319
    return-void
.end method
