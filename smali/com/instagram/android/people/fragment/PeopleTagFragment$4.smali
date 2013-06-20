.class Lcom/instagram/android/people/fragment/PeopleTagFragment$4;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/OnMeasureListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measured(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x4000

    .line 145
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v1}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/e;->action_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 147
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 148
    iget-object v3, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v3}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 149
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 153
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 155
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v1}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$4;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;
    invoke-static {v2}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$000(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v2

    sget v3, Lcom/facebook/g;->people_tag_landscape_photo_container:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PhotoScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 163
    return-void
.end method
