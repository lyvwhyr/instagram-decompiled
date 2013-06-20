.class public Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;
.super Lcom/instagram/android/people/widget/PeopleTagsLayout;
.source "PeopleTagsInteractiveLayout.java"

# interfaces
.implements Lcom/instagram/android/people/model/PeopleTagCollection$Listener;


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

.field private mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

.field private mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

.field private mRemoveButtonClicked:Z

.field private mShowRemoveButton:Z

.field private mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    .line 26
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z

    .line 27
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z

    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mDetector:Landroid/view/GestureDetector;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    .line 26
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z

    .line 27
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z

    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mDetector:Landroid/view/GestureDetector;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    .line 26
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z

    .line 27
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z

    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsGestureDetector;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mDetector:Landroid/view/GestureDetector;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z

    return v0
.end method

.method static synthetic access$202(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mShowRemoveButton:Z

    return p1
.end method

.method static synthetic access$300(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mRemoveButtonClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->collapseOthers(Lcom/instagram/android/people/widget/PeopleTagView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->startEdit(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/PeopleTagView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->updateCoordinates(Lcom/instagram/android/people/widget/PeopleTagView;FF)V

    return-void
.end method

.method private collapseOthers(Lcom/instagram/android/people/widget/PeopleTagView;)V
    .locals 3
    .parameter "selected"

    .prologue
    .line 83
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v1

    .line 85
    if-eq p1, v1, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->isRemoveButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->toggleRemoveButton()V

    .line 92
    :cond_0
    return-void

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hideAll()V
    .locals 3

    .prologue
    .line 95
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f80

    const v2, 0x3f4ccccd

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/PeopleTagView;->hide(Landroid/view/animation/Animation;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method private showAllTags()V
    .locals 3

    .prologue
    .line 103
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3f4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 105
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    .line 107
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/PeopleTagView;->show(Landroid/view/animation/Animation;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method private startEdit(Landroid/graphics/PointF;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;->onTagEditingStart()V

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->startEditInternal(Landroid/graphics/PointF;)V

    .line 125
    return-void
.end method

.method private startEditInternal(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->hideAll()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mFixOverlaps:Z

    .line 130
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->people_tagging_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->createTagView(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    .line 133
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    invoke-interface {v0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;->onTagEditingResume(Landroid/graphics/PointF;)V

    .line 137
    :cond_0
    return-void
.end method

.method private updateCoordinates(Lcom/instagram/android/people/widget/PeopleTagView;FF)V
    .locals 3
    .parameter "tagView"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagView;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p3

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v1}, Lcom/instagram/android/people/widget/PeopleTagView;->setPosition(Landroid/graphics/PointF;)V

    .line 159
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->layoutBubble()V

    .line 161
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->invalidate()V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->tagsUpdated()V

    goto :goto_0
.end method


# virtual methods
.method public addTag(Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    new-instance v1, Lcom/instagram/android/people/model/PeopleTag;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v2}, Lcom/instagram/android/people/widget/PeopleTagView;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/people/model/PeopleTag;-><init>(Lcom/instagram/android/model/User;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/model/PeopleTagCollection;->add(Lcom/instagram/android/people/model/PeopleTag;)Z

    .line 116
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->finishEdit()V

    .line 118
    :cond_0
    return-void
.end method

.method public finishEdit()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mFixOverlaps:Z

    .line 141
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->removeView(Landroid/view/View;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    .line 143
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->showAllTags()V

    .line 144
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;->onTagEditingFinished()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 65
    instance-of v0, p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    .line 67
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 68
    iget-object v0, p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->point:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->startEditInternal(Landroid/graphics/PointF;)V

    .line 72
    :goto_0
    return-void

    .line 70
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    invoke-direct {v1, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 59
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mUnnamedTagView:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->point:Landroid/graphics/PointF;

    move-object v0, v1

    .line 60
    goto :goto_0
.end method

.method public onTagAdded(Lcom/instagram/android/people/model/PeopleTag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->addPeopleTagView(Lcom/instagram/android/people/model/PeopleTag;Landroid/view/View$OnClickListener;)Lcom/instagram/android/people/widget/PeopleTagView;

    .line 264
    return-void
.end method

.method public onTagRemoved(Lcom/instagram/android/people/model/PeopleTag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->removeView(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;->onTagLocationUpdate(Landroid/graphics/PointF;)V

    .line 173
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/model/PeopleTag;

    .line 175
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mMovingChild:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/model/PeopleTag;->setPosition(Landroid/graphics/PointF;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEditListener(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mListener:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;

    .line 151
    return-void
.end method

.method public setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;)V
    .locals 2
    .parameter "tags"

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;Z)V

    .line 77
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 78
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-virtual {v0, p0}, Lcom/instagram/android/people/model/PeopleTagCollection;->setListener(Lcom/instagram/android/people/model/PeopleTagCollection$Listener;)V

    .line 79
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/model/PeopleTagCollection;->setListener(Lcom/instagram/android/people/model/PeopleTagCollection$Listener;)V

    .line 185
    :cond_0
    return-void
.end method
