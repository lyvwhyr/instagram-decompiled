.class Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PeopleTagsInteractiveLayout.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V

    return-void
.end method

.method private findClickedTag(II)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagView;->isInHitRect(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    :goto_1
    return-object v0

    .line 245
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->findClickedTag(II)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v2

    #setter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$102(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;)Lcom/instagram/android/people/widget/PeopleTagView;

    .line 192
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->bringToFront()V

    .line 194
    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->isRemoveButtonVisible()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    #setter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z
    invoke-static {v2, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$202(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z

    .line 195
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/people/widget/PeopleTagView;->wasRemoveButtonClicked(II)Z

    move-result v2

    #setter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z
    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$302(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z

    .line 199
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v2

    #setter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$102(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;)Lcom/instagram/android/people/widget/PeopleTagView;

    .line 200
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->invalidate()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    const/4 v2, 0x0

    #calls: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->collapseOthers(Lcom/instagram/android/people/widget/PeopleTagView;)V
    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$400(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;)V

    .line 203
    return v1

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v1

    #calls: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->updateCoordinates(Lcom/instagram/android/people/widget/PeopleTagView;FF)V
    invoke-static {v0, v1, p3, p4}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$800(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;FF)V

    .line 240
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 209
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$500(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->finishEdit()V

    .line 232
    :cond_0
    :goto_0
    return v5

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$600(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v4}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    #calls: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->startEdit(Landroid/graphics/PointF;)V
    invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$700(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->people_tagging_add_people_limit_reached:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$300(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$600(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/model/PeopleTagCollection;->remove(Ljava/lang/Object;)Z

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$200(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;->this$0:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->toggleRemoveButton()V

    goto :goto_0
.end method
