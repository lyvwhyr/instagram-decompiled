.class Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$1;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$1;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    #calls: Landroid/widget/PopupWindow;->dismiss()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->access$2201(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)V

    .line 757
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$1;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    iget-object v0, v0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->setContinousRenderDelayed()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$2300(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    .line 758
    return-void
.end method
