.class Lcom/instagram/android/maps/ui/MapMediaPopup$11;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$11;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$11;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->translateAndFadeIn()V
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$600(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    .line 419
    return-void
.end method
