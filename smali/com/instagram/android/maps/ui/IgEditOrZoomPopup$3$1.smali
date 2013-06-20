.class Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3$1;
.super Ljava/lang/Object;
.source "IgEditOrZoomPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3$1;->this$1:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3$1;->this$1:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->dismiss()V

    .line 87
    return-void
.end method
