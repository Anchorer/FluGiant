package anchorer.flu_giant

import TestJ
import android.content.Context
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

object TestUtils {
    private const val CHANNEL_TEST = "channel_test"
    private const val METHOD_CALL_TEST = "testMethod"

    @JvmStatic
    fun register(context: Context, messenger: BinaryMessenger) = MethodChannel(messenger, CHANNEL_TEST).setMethodCallHandler { methodCall, result ->
        when (methodCall.method) {
            METHOD_CALL_TEST -> TestJ.test()
        }
        result.success(null)
    }

}