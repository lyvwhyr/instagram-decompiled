.class Lcom/instagram/android/creation/NearbyVenuesFragment$5;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$5;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 207
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$5;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->handleClearEvent()V
    invoke-static {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$700(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
