.class Lcom/instagram/android/creation/fragment/FilterFragment$7$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7$1;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7$1;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment$7;->performAcceptRender()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$7;->access$1100(Lcom/instagram/android/creation/fragment/FilterFragment$7;)V

    .line 300
    return-void
.end method
