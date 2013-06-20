.class Lcom/instagram/android/maps/ui/IgMapsView$1;
.super Ljava/util/TimerTask;
.source "IgMapsView.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgMapsView;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgMapsView;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgMapsView$1;->this$0:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView$1;->this$0:Lcom/instagram/android/maps/ui/IgMapsView;

    #getter for: Lcom/instagram/android/maps/ui/IgMapsView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->access$000(Lcom/instagram/android/maps/ui/IgMapsView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/IgMapsView$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/IgMapsView$1$1;-><init>(Lcom/instagram/android/maps/ui/IgMapsView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method
