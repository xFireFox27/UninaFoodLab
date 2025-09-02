package boundary;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

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
		setTitle("Homepage");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(900, 600);
		setLocationRelativeTo(null);
		setMinimumSize(new Dimension(689, 472));
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setForeground(new Color(255, 0, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[grow][102.00][67.00][300px][grow]", "[grow][][34px,grow][][24px][28px][24px][28px][64px][grow]"));
		
		JList<String> list = new JList<>(new String[] {"Nuovo Corso", "Visualizza Corsi", "Notifiche", "Report Mensile"});
		list.setBackground(new Color(255, 255, 255));
		contentPane.add(list, "cell 0 1 1 8,grow");

	}

}
