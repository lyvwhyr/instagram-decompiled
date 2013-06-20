.class Lcom/instagram/android/creation/NearbyVenuesFragment$3;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$3;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$3;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->handleClearEvent()V
    invoke-static {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$700(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    .line 177
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$3;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 178
    return-void
.end method
