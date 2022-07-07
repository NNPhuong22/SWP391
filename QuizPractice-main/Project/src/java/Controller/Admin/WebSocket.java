/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DAO.AdminDAO;
import DAO.NotificationDAO;
import Enitity.Notification;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

/**
 *
 * @author TrungHuy
 */
@ServerEndpoint(value = "/admin")
public class WebSocket {

     
    AdminDAO ad = new AdminDAO();
    int lastID;
    final static ArrayList<Session> session = new ArrayList<Session>();

    @OnOpen
    public void handleOpen(Session e) {
        session.add(e);
        System.out.println("Client is now connected!");
    }

    @OnMessage
    public String handleMessage(String message) {

        try {            
            for (Session session : session) {
                session.getBasicRemote().sendText(message);
            }
        } catch (IOException e) {

        }
        return "" + lastID;
    }

    @OnClose
    public void handleClose(Session e) {
        session.remove(e);
        System.out.println("Client is now disconnected!");
    }

    @OnError
    public void handleError(Throwable t, Session e) {
        session.remove(e);
        t.printStackTrace();
    }

    private void UpdateChartData() {
        int year = Calendar.getInstance().get(Calendar.YEAR);
        int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
        int week = Calendar.getInstance().get(Calendar.WEEK_OF_MONTH);
        int day = Calendar.getInstance().get(Calendar.DATE);
        ad.saveStatisticData(year, month, week, day);
    }
}
