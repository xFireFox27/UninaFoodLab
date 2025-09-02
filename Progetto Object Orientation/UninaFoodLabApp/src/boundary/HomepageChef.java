package boundary;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

import control.Controller;
import net.miginfocom.swing.MigLayout;
import javax.swing.JList;

public class HomepageChef extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	Controller theController;

	/**
	 * Create the frame.
	 */
	public HomepageChef(Controller c) {
		theController = c;
		setVisible(false);
		setResizable(true);
		setTitle("Homepage Chef");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(900, 600);
		setLocationRelativeTo(null);
		setMinimumSize(new Dimension(689, 472));
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[grow][150px][150px][150px][grow]", "[grow][50px][20px][40px][20px][40px][20px][40px][grow]"));
		

		JLabel titleLabel = new JLabel("Benvenuto "+ theController.getNomeChefCorrente()+"!");
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setFont(titleLabel.getFont().deriveFont(24f));
		contentPane.add(titleLabel, "cell 0 1 5 1,alignx center");
		

		JButton btnNuovoCorso = new JButton("Crea Nuovo Corso");
		btnNuovoCorso.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				//theController.apriCreazioneCorso();
			}
		});
		contentPane.add(btnNuovoCorso, "cell 1 3,grow");
		

		JButton btnVisualizzaCorsi = new JButton("Visualizza Corsi");
		btnVisualizzaCorsi.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				//theController.apriListaCorsi();
			}
		});
		contentPane.add(btnVisualizzaCorsi, "cell 2 3,grow");
		

		JButton btnInviaNotifiche = new JButton("Invia Notifiche");
		btnInviaNotifiche.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				//theController.apriGestioneNotifiche();
			}
		});
		contentPane.add(btnInviaNotifiche, "cell 3 3,grow");
		

		JList list = new JList();
		list.setBackground(new Color(240, 240, 240));
		contentPane.add(list, "cell 1 5 3 1,grow");
	}
}
