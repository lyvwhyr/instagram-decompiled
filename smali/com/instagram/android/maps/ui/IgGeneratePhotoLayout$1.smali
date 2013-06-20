.class Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$1;
.super Ljava/lang/Object;
.source "IgGeneratePhotoLayout.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$LayoutListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$1;->this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$1;->this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->copyToParent(Landroid/view/ViewGroup;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$1;->this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$1;->this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$1;->this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setLayoutListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$LayoutListener;)V

    .line 79
    return-void
.end method
