.class Lcom/instagram/android/people/widget/PhotoScrollView$1;
.super Ljava/lang/Object;
.source "PhotoScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/widget/PhotoScrollView;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PhotoScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView$1;->this$0:Lcom/instagram/android/people/widget/PhotoScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView$1;->this$0:Lcom/instagram/android/people/widget/PhotoScrollView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PhotoScrollView$1;->this$0:Lcom/instagram/android/people/widget/PhotoScrollView;

    #getter for: Lcom/instagram/android/people/widget/PhotoScrollView;->mScrollTarget:F
    invoke-static {v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->access$000(Lcom/instagram/android/people/widget/PhotoScrollView;)F

    move-result v1

    #calls: Lcom/instagram/android/people/widget/PhotoScrollView;->scrollCentered(F)V
    invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->access$100(Lcom/instagram/android/people/widget/PhotoScrollView;F)V

    .line 60
    return-void
.end method
