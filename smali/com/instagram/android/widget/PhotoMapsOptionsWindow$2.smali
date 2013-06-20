.class Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;
.super Ljava/lang/Object;
.source "PhotoMapsOptionsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;->this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;->this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    #getter for: Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->access$000(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2$1;-><init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
