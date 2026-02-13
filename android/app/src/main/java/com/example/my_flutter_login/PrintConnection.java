package com.example.my_flutter_login;

import android.os.AsyncTask;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import io.flutter.plugin.common.MethodChannel;

public class PrintConnection extends AsyncTask<Void, Void, Boolean> {
    private final String printerIp;
    private final int printerPort;
    private final String textToPrint;
    private final MethodChannel.Result resultCallback;

    public PrintConnection(String printerIp, int printerPort, String textToPrint, MethodChannel.Result resultCallback) {
        this.printerIp = printerIp;
        this.printerPort = printerPort;
        this.textToPrint = textToPrint;
        this.resultCallback = resultCallback;
    }

    @Override
    protected void onPostExecute(Boolean result) {
        if (resultCallback != null) {
            resultCallback.success(result);
        }
        if (result) {
            Log.d("Printer", "Successfully printed");
        } else {
            Log.e("Printer", "Error occurred while printing");
        }
    }

    @Override
    protected Boolean doInBackground(Void... voids) {
        int maxRetries = 3;
        for (int attempt = 1; attempt <= maxRetries; attempt++) {
            Socket socket = null;
            OutputStream outputStream = null;
            try {
                Log.d("PrinterDebug", "Attempt " + attempt + ": Connecting to " + printerIp + ":" + printerPort);
                boolean reachable = InetAddress.getByName(printerIp).isReachable(2000);
                if (!reachable) {
                    Log.e("PrinterDebug", "Printer not reachable on attempt " + attempt);
                    throw new IOException("Ping failed");
                }
                socket = new Socket();
                socket.connect(new InetSocketAddress(printerIp, printerPort), 7000);
                outputStream = socket.getOutputStream();
                String paperCutCommand = "\u001DVA0";
                String finalTextToPrint = textToPrint + paperCutCommand;
                outputStream.write(finalTextToPrint.getBytes("CP858"));
                outputStream.flush();
                Log.d("PrinterDebug", "Print success on attempt " + attempt);
                return true;
            } catch (IOException e) {
                Log.e("PrinterDebug", "Attempt " + attempt + " failed: " + e.getMessage());
                if (attempt == maxRetries) {
                    return false;
                }
                int retryDelayMillis = attempt * 2000;
                try {
                    Thread.sleep(retryDelayMillis);
                } catch (InterruptedException ignored) {
                }
            } finally {
                try {
                    if (outputStream != null) outputStream.close();
                    if (socket != null) socket.close();
                } catch (IOException ignored) {
                }
            }
        }
        return false;
    }
}
