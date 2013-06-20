.class public abstract Lcom/facebook/e/a;
.super Ljava/lang/Object;
.source "RageSensorEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final DEFAULT_SENSOR_DELAY:I = 0x2

.field private static final MIN_REQUIRED_DATA_POINTS:I = 0xa

.field private static final REQUIRED_FORCE_NEGATIVE:F = -14.709975f

.field private static final REQUIRED_FORCE_POSITIVE:F = 14.709975f

.field private static final REQUIRED_OUTLIERS:I = 0x2

.field private static final SHAKE_DURATION_MILLIS:I = 0x3e8


# instance fields
.field private mInspector:Lcom/facebook/e/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/e/c;

    invoke-direct {v0}, Lcom/facebook/e/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/e/a;->mInspector:Lcom/facebook/e/c;

    .line 85
    return-void
.end method


# virtual methods
.method public cooldown()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/e/a;->mInspector:Lcom/facebook/e/c;

    invoke-virtual {v0}, Lcom/facebook/e/c;->a()V

    .line 64
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 53
    return-void
.end method

.method protected abstract onRageShake()V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/e/a;->mInspector:Lcom/facebook/e/c;

    invoke-virtual {v0, p1}, Lcom/facebook/e/c;->a(Landroid/hardware/SensorEvent;)V

    .line 44
    iget-object v0, p0, Lcom/facebook/e/a;->mInspector:Lcom/facebook/e/c;

    invoke-virtual {v0}, Lcom/facebook/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/facebook/e/a;->mInspector:Lcom/facebook/e/c;

    invoke-virtual {v0}, Lcom/facebook/e/c;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/e/a;->onRageShake()V

    .line 48
    :cond_0
    return-void
.end method
