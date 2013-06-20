.class Lcom/instagram/android/support/camera/CropFragment$2;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/CropFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/CropFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment$2;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$2;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #calls: Lcom/instagram/android/support/camera/CropFragment;->onSaveClicked()V
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$100(Lcom/instagram/android/support/camera/CropFragment;)V

    .line 143
    return-void
.end method
