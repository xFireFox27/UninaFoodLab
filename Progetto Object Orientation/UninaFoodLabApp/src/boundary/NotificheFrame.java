package boundary;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;

import control.Controller;
import javax.swing.JLabel;
import java.awt.Font;
import java.awt.Color;
import javax.swing.SwingConstants;
import javax.swing.JScrollPane;
import java.awt.Component;
import javax.swing.JList;
import javax.swing.JButton;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import entity.Notifica;
import java.util.List;
import javax.swing.DefaultListModel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTextArea;

public class NotificheFrame extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private Controller theController;

	
	public NotificheFrame(Controller c) {
		theController = c;
		setVisible(false);
		setResizable(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(900, 600);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[grow][grow]", "[50px][50px][grow][grow][40px]"));
		
		JLabel lblNotifiche = new JLabel("Notifiche");
		lblNotifiche.setHorizontalAlignment(SwingConstants.CENTER);
		lblNotifiche.setForeground(new Color(26, 95, 180));
		lblNotifiche.setFont(lblNotifiche.getFont().deriveFont(24f));
		contentPane.add(lblNotifiche, "cell 0 0 2 1,alignx center,aligny center");
		
		JScrollPane scrollPane = new JScrollPane();
		contentPane.add(scrollPane, "cell 1 1 1 3,grow");
		
		JTextArea txtrIlTestoDella = new JTextArea();
		scrollPane.setViewportView(txtrIlTestoDella);
		txtrIlTestoDella.setText("Il testo della notifica apparirà qui");
		txtrIlTestoDella.setBackground(new Color(246, 245, 244));
		
		DefaultListModel<String> listModel = new DefaultListModel<>();
		
		List<Notifica> notifiche = theController.getNotificheChef();
		if (notifiche == null || notifiche.isEmpty()){
			listModel.addElement("Non ci sono notifiche.");
		}
		else {
			for (Notifica notifica : notifiche) {
				String elemento = notifica.getOggetto() + " - " + "(" + notifica.getDataInvio().toString() + ")";
				listModel.addElement(elemento);
			}
		}
		
		JButton btnTornaAllaHome = new JButton("Torna alla Homepage");
		btnTornaAllaHome.setOpaque(true);
		btnTornaAllaHome.setForeground(Color.WHITE);
		btnTornaAllaHome.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnTornaAllaHome.setBackground(new Color(98, 160, 234));
		btnTornaAllaHome.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				theController.TornaHomepageFromNotifiche();
			}
		});
		
		JScrollPane scrollPane_1 = new JScrollPane();
		contentPane.add(scrollPane_1, "cell 0 1 1 3,grow");
		
		JList<String> list = new JList<>(listModel);
		scrollPane_1.setViewportView(list);
		list.setBackground(new Color(246, 245, 244));
		
		list.setModel(listModel);

		contentPane.add(btnTornaAllaHome, "cell 0 4,growy");
		
		JButton btnInviaNotifica = new JButton("Invia Notifica");
		btnInviaNotifica.setOpaque(true);
		btnInviaNotifica.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnInviaNotifica.setBackground(new Color(98, 160, 234));
		btnInviaNotifica.setForeground(new Color(255, 255, 255));
		contentPane.add(btnInviaNotifica, "cell 1 4,alignx right,growy");
		
	}

}
