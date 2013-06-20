.class Lcom/instagram/android/creation/fragment/FilterFragment$3;
.super Lcom/instagram/android/gl/FilterController;
.source "FilterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$3;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Lcom/instagram/android/gl/FilterController;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$3;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    return-object v0
.end method
