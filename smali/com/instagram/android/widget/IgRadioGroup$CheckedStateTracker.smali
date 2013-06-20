.class Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "IgRadioGroup.java"

# interfaces
.implements Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/IgRadioGroup;


# direct methods
.method private constructor <init>(Lcom/instagram/android/widget/IgRadioGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/widget/IgRadioGroup;Lcom/instagram/android/widget/IgRadioGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;-><init>(Lcom/instagram/android/widget/IgRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/instagram/android/widget/IgCheckable;Z)V
    .locals 3
    .parameter "checkable"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    #getter for: Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v0}, Lcom/instagram/android/widget/IgRadioGroup;->access$300(Lcom/instagram/android/widget/IgRadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    .end local p1
    :goto_0
    return-void

    .line 270
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v0, v1}, Lcom/instagram/android/widget/IgRadioGroup;->access$302(Lcom/instagram/android/widget/IgRadioGroup;Z)Z

    .line 271
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    #getter for: Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I
    invoke-static {v0}, Lcom/instagram/android/widget/IgRadioGroup;->access$400(Lcom/instagram/android/widget/IgRadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    iget-object v1, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    #getter for: Lcom/instagram/android/widget/IgRadioGroup;->mCheckedId:I
    invoke-static {v1}, Lcom/instagram/android/widget/IgRadioGroup;->access$400(Lcom/instagram/android/widget/IgRadioGroup;)I

    move-result v1

    #calls: Lcom/instagram/android/widget/IgRadioGroup;->setCheckedStateForView(IZ)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/IgRadioGroup;->access$500(Lcom/instagram/android/widget/IgRadioGroup;IZ)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    #setter for: Lcom/instagram/android/widget/IgRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v0, v2}, Lcom/instagram/android/widget/IgRadioGroup;->access$302(Lcom/instagram/android/widget/IgRadioGroup;Z)Z

    .line 276
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/instagram/android/widget/IgRadioGroup$CheckedStateTracker;->this$0:Lcom/instagram/android/widget/IgRadioGroup;

    #calls: Lcom/instagram/android/widget/IgRadioGroup;->setCheckedId(I)V
    invoke-static {v1, v0}, Lcom/instagram/android/widget/IgRadioGroup;->access$600(Lcom/instagram/android/widget/IgRadioGroup;I)V

    goto :goto_0
.end method
