.class Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "IgRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/instagram/android/widget/IgRadioGroup;


# direct methods
.method private constructor <init>(Lcom/instagram/android/widget/IgRadioGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/widget/IgRadioGroup;Lcom/instagram/android/widget/IgRadioGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/instagram/android/widget/IgRadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/instagram/android/widget/IgCheckable;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 298
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 300
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v0, p2

    .line 302
    check-cast v0, Lcom/instagram/android/widget/IgCheckable;

    iget-object v1, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    #getter for: Lcom/instagram/android/widget/IgRadioGroup;->mChildOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;
    invoke-static {v1}, Lcom/instagram/android/widget/IgRadioGroup;->access$700(Lcom/instagram/android/widget/IgRadioGroup;)Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/android/widget/IgCheckable;->setOnCheckedChangeListener(Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 309
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/instagram/android/widget/IgCheckable;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 316
    check-cast v0, Lcom/instagram/android/widget/IgCheckable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/android/widget/IgCheckable;->setOnCheckedChangeListener(Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 322
    :cond_1
    return-void
.end method
