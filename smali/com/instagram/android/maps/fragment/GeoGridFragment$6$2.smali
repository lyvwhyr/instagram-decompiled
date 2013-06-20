.class Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment$6;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    iput-object p2, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 256
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    new-instance v1, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    iget-object v2, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    iget-object v2, v2, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v2}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->val$view:Landroid/view/ViewGroup;

    sget v4, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/PhotoMapsActivity;->getMostRecent()Lcom/instagram/android/maps/PhotoMapsActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/instagram/android/maps/PhotoMapsActivity;)V

    #setter for: Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    invoke-static {v0, v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$402(Lcom/instagram/android/maps/fragment/GeoGridFragment;Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    .line 257
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    #getter for: Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$400(Lcom/instagram/android/maps/fragment/GeoGridFragment;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    iget-object v1, v1, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->showAtLocation(Landroid/view/View;III)V

    .line 258
    return-void
.end method
