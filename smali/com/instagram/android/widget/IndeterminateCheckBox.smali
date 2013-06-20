.class public Lcom/instagram/android/widget/IndeterminateCheckBox;
.super Landroid/widget/ViewSwitcher;
.source "IndeterminateCheckBox.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDisableUserCheckChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mProgress:Lcom/instagram/android/widget/IgRotateAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/widget/IndeterminateCheckBox;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x2

    .line 34
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/d;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    .line 41
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/facebook/g;->indeterminate_check_box:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 42
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->addView(Landroid/view/View;)V

    .line 44
    new-instance v0, Lcom/instagram/android/widget/IgRotateAnimationView;

    invoke-direct {v0, p1, p2}, Lcom/instagram/android/widget/IgRotateAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mProgress:Lcom/instagram/android/widget/IgRotateAnimationView;

    .line 45
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mProgress:Lcom/instagram/android/widget/IgRotateAnimationView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->action_bar_glyph_refresh_spinner_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgRotateAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mProgress:Lcom/instagram/android/widget/IgRotateAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgRotateAnimationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mProgress:Lcom/instagram/android/widget/IgRotateAnimationView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/IgRotateAnimationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mProgress:Lcom/instagram/android/widget/IgRotateAnimationView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->addView(Landroid/view/View;II)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setDisplayedChild(I)V

    .line 60
    new-instance v0, Lcom/instagram/android/widget/IndeterminateCheckBox$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/IndeterminateCheckBox$1;-><init>(Lcom/instagram/android/widget/IndeterminateCheckBox;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mDisableUserCheckChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 66
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mDisableUserCheckChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mDisableUserCheckChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setDisplayedChild(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
