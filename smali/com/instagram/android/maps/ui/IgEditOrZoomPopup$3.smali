.class Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;
.super Ljava/lang/Object;
.source "IgEditOrZoomPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    #getter for: Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->access$000(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3$1;-><init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
