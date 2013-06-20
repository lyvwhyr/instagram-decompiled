.class Lcom/instagram/android/video/fragment/CamcorderFragment$9;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$9;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$9;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->black_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 881
    const-string v0, "CamcorderFragment"

    const-string v1, "fade in"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method
