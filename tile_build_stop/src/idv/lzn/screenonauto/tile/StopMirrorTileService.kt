package idv.lzn.screenonauto.tile

import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService

class StopMirrorTileService : TileService() {

    private fun isCaptureRunning(): Boolean {
        val am = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val target = "idv.lzn.screenonauto.ScreenCaptureService"
        return am.getRunningServices(Int.MAX_VALUE).any {
            it.service.className == target
        }
    }

    private fun stopByName(className: String) {
        val intent = Intent().apply {
            setClassName(packageName, className)
        }
        stopService(intent)
    }

    override fun onStartListening() {
        super.onStartListening()
        qsTile?.apply {
            label = "Detener mirroring"
            state = if (isCaptureRunning()) Tile.STATE_ACTIVE else Tile.STATE_INACTIVE
            updateTile()
        }
    }

    override fun onClick() {
        super.onClick()
        stopByName("idv.lzn.screenonauto.ScreenCaptureService")
        stopByName("idv.lzn.screenonauto.MirrorMediaService")
        qsTile?.apply {
            state = Tile.STATE_INACTIVE
            updateTile()
        }
    }
}
