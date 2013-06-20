.class Lcom/instagram/android/creation/fragment/FilterFragment$4;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$4;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$4;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->setBordersEnabled(Z)V
    invoke-static {v0, p2}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$500(Lcom/instagram/android/creation/fragment/FilterFragment;Z)V

    .line 232
    return-void
.end method
