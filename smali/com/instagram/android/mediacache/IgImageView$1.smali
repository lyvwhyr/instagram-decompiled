.class Lcom/instagram/android/mediacache/IgImageView$1;
.super Ljava/lang/Object;
.source "IgImageView.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgImageView;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgImageView$1;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$1;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$000(Lcom/instagram/android/mediacache/IgImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$1;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgImageView$1;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/instagram/android/mediacache/IgImageView;->access$000(Lcom/instagram/android/mediacache/IgImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    return-void
.end method
