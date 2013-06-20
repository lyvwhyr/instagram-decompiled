.class Lcom/instagram/android/maps/ui/PhotoOverlay$2;
.super Ljava/lang/Object;
.source "PhotoOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/PhotoOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$2;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 487
    invoke-static {}, Lcom/instagram/android/maps/ui/PhotoOverlay;->removeLock()V

    .line 488
    return-void
.end method
