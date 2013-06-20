.class Lcom/instagram/android/creation/fragment/FilterFragment$13;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$13;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$13;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->startTiltShiftWithMode(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1500(Lcom/instagram/android/creation/fragment/FilterFragment;I)V

    .line 440
    return-void
.end method
