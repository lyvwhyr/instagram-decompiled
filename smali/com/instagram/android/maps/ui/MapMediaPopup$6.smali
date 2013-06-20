.class Lcom/instagram/android/maps/ui/MapMediaPopup$6;
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
    .line 330
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$6;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$6;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$400(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void
.end method
