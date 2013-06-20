.class Lcom/instagram/android/creation/fragment/FilterFragment$6;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$6;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Lcom/instagram/android/gl/IgFilter;I)V
    .locals 2
    .parameter "filter"
    .parameter "filterIndex"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$6;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mSelectedFilterIndex:I
    invoke-static {v0, p2}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$802(Lcom/instagram/android/creation/fragment/FilterFragment;I)I

    .line 274
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$6;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$900(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/gl/IgFilter;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterController;->useFilter(I)V

    .line 275
    return-void
.end method
