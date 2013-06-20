.class public Lcom/instagram/android/widget/IgRadioGroup;
.super Landroid/widget/LinearLayout;
.source "IgRadioGroup.java"


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgRadioGroup;->setOrientation(I)V

    .line 30
    invoke-direct {p0}, Lcom/instagram/android/widget/IgRadioGroup;->init()V

    .line 31
    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/widget/IgRadioGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/instagram/android/widget/IgRadioGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/instagram/android/widget/IgRadioGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/instagram/android/widget/IgRadioGroup;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/widget/IgRadioGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/widget/IgRadioGroup;)Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mChildOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;-><init>(Lcom/instagram/android/widget/IgRadioGroup;Lcom/instagram/android/widget/IgRadioGroup$1;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mChildOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

    .line 35
    new-instance v0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/instagram/android/widget/IgRadioGroup;Lcom/instagram/android/widget/IgRadioGroup$1;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mPassThroughListener:Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;

    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mPassThroughListener:Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 37
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 108
    iput p1, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    .line 109
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mOnCheckedChangeListener:Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mOnCheckedChangeListener:Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/instagram/android/widget/IgRadioGroup;I)V

    .line 112
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .parameter "viewId"
    .parameter "checked"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/instagram/android/widget/IgCheckable;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/instagram/android/widget/IgCheckable;

    invoke-interface {v0, p2}, Lcom/instagram/android/widget/IgCheckable;->setChecked(Z)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 66
    instance-of v0, p1, Lcom/instagram/android/widget/IgCheckable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/instagram/android/widget/IgCheckable;

    .line 68
    invoke-interface {v0}, Lcom/instagram/android/widget/IgCheckable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    .line 70
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedStateForView(IZ)V

    .line 73
    :cond_0
    iput-boolean v2, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedId(I)V

    .line 78
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method public check(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 92
    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 97
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedStateForView(IZ)V

    .line 100
    :cond_1
    if-eq p1, v2, :cond_2

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedStateForView(IZ)V

    .line 104
    :cond_2
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 168
    instance-of v0, p1, Landroid/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgRadioGroup;->check(I)V

    .line 143
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 173
    new-instance v0, Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 160
    new-instance v0, Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/instagram/android/widget/IgRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/android/widget/IgRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 57
    iput-boolean v2, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    .line 58
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedStateForView(IZ)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z

    .line 60
    iget v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/instagram/android/widget/IgRadioGroup;->setCheckedId(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/instagram/android/widget/IgRadioGroup;->mOnCheckedChangeListener:Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;

    .line 153
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup;->mPassThroughListener:Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;

    #setter for: Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 46
    return-void
.end method
