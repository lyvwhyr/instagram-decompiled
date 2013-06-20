.class Lcom/instagram/android/maps/ui/MapMediaPopup$12$1$1;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1$1;->this$2:Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1$1;->this$2:Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$12;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$700(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismiss()V

    .line 438
    return-void
.end method
