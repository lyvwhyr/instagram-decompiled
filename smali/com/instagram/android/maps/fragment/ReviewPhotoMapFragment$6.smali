.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    .line 192
    sget v0, Lcom/facebook/h;->action_bar_review_photo_map:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 193
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    sget v0, Lcom/facebook/g;->action_bar_review_photo_map_done:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;

    iget-object v3, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-virtual {v3}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;-><init>(Landroid/app/Activity;Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    sget v1, Lcom/facebook/k;->photo_map:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method
