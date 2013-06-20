.class Lcom/instagram/android/maps/ui/MapMediaPopup$1;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$1;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->NUM_ANIMATING_ITEMS:I

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$1;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->dismissWithAnimation()V
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$000(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    .line 84
    :cond_0
    return-void
.end method
