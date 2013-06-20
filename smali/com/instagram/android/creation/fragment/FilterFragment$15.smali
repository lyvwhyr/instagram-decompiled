.class Lcom/instagram/android/creation/fragment/FilterFragment$15;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

.field final synthetic val$tiltShiftMode:I


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$15;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    iput p2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$15;->val$tiltShiftMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$15;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    iget v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$15;->val$tiltShiftMode:I

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->innerStartShift(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1800(Lcom/instagram/android/creation/fragment/FilterFragment;I)V

    .line 474
    return-void
.end method
