package boundary;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;
import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import control.Controller;

public class NuovaHomepageChef extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	Controller theController;
	
	
	public NuovaHomepageChef(Controller c) {
		theController = c;
		setVisible(false);
		setResizable(true);
		setTitle("Homepage Chef");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(900, 600);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(53, 132, 228));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[50px][grow][][][][][][][][][][][][][][][][][grow][50px]", "[50px][grow][][][][][][][][][][][][][grow][50px]"));
		
		JPanel panel = new JPanel();
		panel.setBackground(new Color(255, 255, 255));
		contentPane.add(panel, "cell 1 1 18 14,grow");
		panel.setLayout(new MigLayout("", "[grow][150px][150px][150px][grow]", "[50px][grow][20px][40px][20px][40px][20px][grow][50px]"));
		
		JLabel titleLabel = new JLabel("Benvenuto <dynamic>!");
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setForeground(new Color(26, 95, 180));
		titleLabel.setFont(titleLabel.getFont().deriveFont(24f));
		panel.add(titleLabel, "cell 1 1 3 1,grow");
		
		JButton btnNuovoCorso = new JButton("Crea Nuovo Corso");
		btnNuovoCorso.setOpaque(true);
		btnNuovoCorso.setForeground(Color.WHITE);
		btnNuovoCorso.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnNuovoCorso.setBackground(new Color(98, 160, 234));
		panel.add(btnNuovoCorso, "cell 1 3,grow");
		
		JButton btnVisualizzaCorsi = new JButton("Visualizza Corsi");
		btnVisualizzaCorsi.setOpaque(true);
		btnVisualizzaCorsi.setForeground(Color.WHITE);
		btnVisualizzaCorsi.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnVisualizzaCorsi.setBackground(new Color(98, 160, 234));
		panel.add(btnVisualizzaCorsi, "cell 2 3,grow");
		
		JButton btnNotifiche = new JButton("Notifiche");
		btnNotifiche.setOpaque(true);
		btnNotifiche.setForeground(Color.WHITE);
		btnNotifiche.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnNotifiche.setBackground(new Color(98, 160, 234));
		panel.add(btnNotifiche, "cell 3 3,grow");
	}

}
