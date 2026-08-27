package idv.lzn.screenonauto.tile

import android.content.Intent
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService

class StopMirrorTileService : TileService() {

    override fun onStartListening() {
        super.onStartListening()
        qsTile?.apply {
            label = "Detener mirroring"
            state = Tile.STATE_INACTIVE
            updateTile()
        }
    }

    override fun onClick() {
        super.onClick()
        stopByName("idv.lzn.screenonauto.ScreenCaptureService")
        stopByName("idv.lzn.screenonauto.MirrorMediaService")
    }

    private fun stopByName(className: String) {
        val intent = Intent().apply {
            setClassName(packageName, className)
        }
        stopService(intent)
    }
}
