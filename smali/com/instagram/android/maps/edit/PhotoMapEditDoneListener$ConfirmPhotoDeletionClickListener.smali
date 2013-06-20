.class Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;
.super Ljava/lang/Object;
.source "PhotoMapEditDoneListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;


# direct methods
.method private constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;->this$0:Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;-><init>(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    new-instance v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;->this$0:Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mActivivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->access$100(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;->this$0:Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    invoke-static {v2}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->access$200(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;)Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;)V

    invoke-virtual {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->performPhotoDeletion()V

    .line 44
    return-void
.end method
