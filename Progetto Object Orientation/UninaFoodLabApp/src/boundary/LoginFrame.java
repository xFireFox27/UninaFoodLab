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
		setTitle("LoginChef");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(450, 250, 689, 472);
		setMinimumSize(new Dimension(689, 472));
		contentPane = new JPanel();
		contentPane.setBackground(new Color(220, 220, 220));
		contentPane.setForeground(new Color(255, 0, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		GridBagLayout gbl_contentPane = new GridBagLayout();
		gbl_contentPane.columnWidths = new int[]{226, 182, 201, 0};
		gbl_contentPane.rowHeights = new int[]{97, 15, 24, 0, 0, 27, 23, 0, 49, 61, 0};
		gbl_contentPane.columnWeights = new double[]{0.0, 1.0, 1.0, Double.MIN_VALUE};
		gbl_contentPane.rowWeights = new double[]{1.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, Double.MIN_VALUE};
		contentPane.setLayout(gbl_contentPane);
		
		JLabel lblTitolo = new JLabel("UninaFoodLab");
		lblTitolo.setForeground(new Color(0, 191, 255));
		lblTitolo.setFont(new Font("Helvetica", Font.BOLD, 33));
		GridBagConstraints gbc_lblTitolo = new GridBagConstraints();
		gbc_lblTitolo.fill = GridBagConstraints.HORIZONTAL;
		gbc_lblTitolo.insets = new Insets(0, 0, 5, 5);
		gbc_lblTitolo.gridx = 1;
		gbc_lblTitolo.gridy = 0;
		contentPane.add(lblTitolo, gbc_lblTitolo);
		
		JLabel lblUsername = new JLabel("Username");
		lblUsername.setForeground(new Color(100, 149, 237));
		lblUsername.setFont(new Font("Dialog", Font.BOLD, 20));
		GridBagConstraints gbc_lblUsername = new GridBagConstraints();
		gbc_lblUsername.anchor = GridBagConstraints.WEST;
		gbc_lblUsername.insets = new Insets(0, 0, 5, 5);
		gbc_lblUsername.gridx = 1;
		gbc_lblUsername.gridy = 2;
		contentPane.add(lblUsername, gbc_lblUsername);
		
		usernameField = new JTextField();
		GridBagConstraints gbc_usernameField = new GridBagConstraints();
		gbc_usernameField.fill = GridBagConstraints.HORIZONTAL;
		gbc_usernameField.anchor = GridBagConstraints.NORTH;
		gbc_usernameField.insets = new Insets(0, 0, 5, 5);
		gbc_usernameField.gridx = 1;
		gbc_usernameField.gridy = 3;
		contentPane.add(usernameField, gbc_usernameField);
		usernameField.setColumns(10);
		
		JLabel lblPassword = new JLabel("Password");
		lblPassword.setForeground(new Color(100, 149, 237));
		lblPassword.setFont(new Font("Dialog", Font.BOLD, 20));
		GridBagConstraints gbc_lblPassword = new GridBagConstraints();
		gbc_lblPassword.fill = GridBagConstraints.VERTICAL;
		gbc_lblPassword.anchor = GridBagConstraints.WEST;
		gbc_lblPassword.insets = new Insets(0, 0, 5, 5);
		gbc_lblPassword.gridx = 1;
		gbc_lblPassword.gridy = 5;
		contentPane.add(lblPassword, gbc_lblPassword);
		
		passwordField = new JPasswordField();
		GridBagConstraints gbc_passwordField = new GridBagConstraints();
		gbc_passwordField.insets = new Insets(0, 0, 5, 5);
		gbc_passwordField.fill = GridBagConstraints.HORIZONTAL;
		gbc_passwordField.gridx = 1;
		gbc_passwordField.gridy = 6;
		contentPane.add(passwordField, gbc_passwordField);
		
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
		LoginButton.setBackground(new Color(100, 149, 237));
		LoginButton.setForeground(new Color(248, 248, 255));
		LoginButton.setFont(new Font("Palatino", Font.BOLD, 24));
		GridBagConstraints gbc_LoginButton = new GridBagConstraints();
		gbc_LoginButton.insets = new Insets(0, 0, 5, 5);
		gbc_LoginButton.fill = GridBagConstraints.BOTH;
		gbc_LoginButton.gridx = 1;
		gbc_LoginButton.gridy = 8;
		contentPane.add(LoginButton, gbc_LoginButton);

	}

	public void showErrorMessage(String message) {
		JOptionPane.showMessageDialog(this, message, "Login Error", JOptionPane.ERROR_MESSAGE);
	}
	
}
