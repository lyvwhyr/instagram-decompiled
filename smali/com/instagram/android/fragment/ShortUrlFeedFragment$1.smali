.class Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "ShortUrlFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ShortUrlFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;->this$0:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;->this$0:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;->this$0:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->action_bar_branding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 78
    iget-object v2, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;->this$0:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->action_bar_branding_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-object v0
.end method
