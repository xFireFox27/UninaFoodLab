package boundary;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import control.Controller;
import net.miginfocom.swing.MigLayout;

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
		setMinimumSize(new Dimension(689, 472));
		setSize(900, 600);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setForeground(new Color(255, 0, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[grow][300px,center][grow]", "[grow][][34px][][24px][28px][24px][28px][64px][grow]"));

	}

}
