.class Lcom/instagram/android/maps/ui/MapMediaPopup$14;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$14;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$14;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$14;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$14;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    return-void
.end method
