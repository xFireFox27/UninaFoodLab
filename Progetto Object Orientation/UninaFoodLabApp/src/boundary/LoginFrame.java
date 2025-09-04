package boundary;

import java.awt.Dimension;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import java.awt.GridBagLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.JPasswordField;
import java.awt.Font;
import java.awt.Color;
import javax.swing.border.MatteBorder;
import javax.swing.border.SoftBevelBorder;

import control.Controller;

import javax.swing.border.BevelBorder;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import net.miginfocom.swing.MigLayout;

public class LoginFrame extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField usernameField;
	private JPasswordField passwordField;
	private Controller theController;

	
	/**
	 * Create the frame.
	 */
	public LoginFrame(Controller c) {
		theController = c;
		setResizable(true);
		setTitle("LoginChef");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(689, 472);
		setLocationRelativeTo(null);
		setMinimumSize(new Dimension(689, 472));
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setForeground(new Color(255, 0, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[grow][300px,center][grow]", "[grow][][34px][][24px][28px][24px][28px][64px][grow]"));
		
		JLabel lblTitolo = new JLabel("UninaFoodLab");
		lblTitolo.setBackground(new Color(236, 233, 233));
		lblTitolo.setForeground(new Color(26, 95, 180));
		lblTitolo.setFont(new Font("Helvetica", Font.BOLD, 33));
		contentPane.add(lblTitolo, "cell 1 1,alignx center,aligny center");
		
		JLabel lblUsername = new JLabel("Username");
		lblUsername.setForeground(new Color(100, 149, 237));
		lblUsername.setFont(new Font("Dialog", Font.BOLD, 20));
		contentPane.add(lblUsername, "cell 1 4,alignx left,aligny center");
		
		usernameField = new JTextField();
		usernameField.setBackground(new Color(222, 221, 218));
		usernameField.setFont(new Font("Dialog", Font.PLAIN, 15));
		contentPane.add(usernameField, "cell 1 5,growx");
		usernameField.setColumns(10);
		usernameField.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				passwordField.requestFocusInWindow();
			}
		});
		
		JLabel lblPassword = new JLabel("Password");
		lblPassword.setForeground(new Color(100, 149, 237));
		lblPassword.setFont(new Font("Dialog", Font.BOLD, 20));
		contentPane.add(lblPassword, "cell 1 6,alignx left,aligny center");
		
		passwordField = new JPasswordField();
		passwordField.setBackground(new Color(222, 221, 218));
		passwordField.setFont(new Font("Dialog", Font.PLAIN, 15));
		contentPane.add(passwordField, "cell 1 7,growx");
		passwordField.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(usernameField.getText().trim().isEmpty() 
						|| passwordField.getPassword().length == 0) {
					JOptionPane.showMessageDialog(contentPane, 
							"Tutti i campi devono essere compilati!", 
							"Errore di validazione", 
							JOptionPane.ERROR_MESSAGE);
				} else {
					theController.LoginChef(usernameField.getText(), 
							new String(passwordField.getPassword()));
				}
			}
		});
		
		JButton LoginButton = new JButton("LOGIN");
		LoginButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(usernameField.getText().trim().isEmpty() 
						|| passwordField.getPassword().length == 0) {
					JOptionPane.showMessageDialog(contentPane, 
							"Tutti i campi devono essere compilati!", 
							"Errore di validazione", 
							JOptionPane.ERROR_MESSAGE);
				} else {
					theController.LoginChef(usernameField.getText(), 
							new String(passwordField.getPassword()));
				}
			}
		});
		LoginButton.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		LoginButton.setBackground(new Color(98, 160, 234));
		LoginButton.setForeground(new Color(248, 248, 255));
		LoginButton.setFont(new Font("Palatino", Font.BOLD, 24));
		contentPane.add(LoginButton, "cell 1 8,growx");

	}

	public void showErrorMessage(String message) {
		JOptionPane.showMessageDialog(this, message, "Login Error", JOptionPane.ERROR_MESSAGE);
	}
	
}
