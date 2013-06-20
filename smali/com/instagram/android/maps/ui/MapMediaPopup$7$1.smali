.class Lcom/instagram/android/maps/ui/MapMediaPopup$7$1;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$7;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup$7;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$7$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$7$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$7;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/MapMediaPopup$7;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$400(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    return-void
.end method
