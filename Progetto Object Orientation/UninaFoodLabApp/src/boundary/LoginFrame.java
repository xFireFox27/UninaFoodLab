package boundary;

import java.awt.Dimension;
import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JCheckBox;
import java.awt.Font;
import java.awt.Color;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import net.miginfocom.swing.MigLayout;

import control.Controller;

public class LoginFrame extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField usernameField;
	private JPasswordField passwordField;
	private JCheckBox showPasswordCheckbox;
	private Controller theController;

	public LoginFrame(Controller c) {
	    theController = c;
	    setResizable(true);
	    setTitle("LoginChef");
	    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    setSize(689, 500);
	    setLocationRelativeTo(null);
	    CaricaIcona();
	    setMinimumSize(new Dimension(689, 472));
	    contentPane = new JPanel();
	    contentPane.setBackground(new Color(255, 255, 255));
	    contentPane.setForeground(new Color(255, 0, 255));
	    contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
	    setContentPane(contentPane);
	    contentPane.setLayout(new MigLayout("", "[grow][300px,center][grow]", "[grow][100px][][34px][][24px][28px][24px][20px][][28px][64px][grow]"));
	    
	    JLabel lblLogo = new JLabel();
	    try {
	        java.net.URL logoUrl = getClass().getResource("/logo.png");
	        if (logoUrl != null) {
	            ImageIcon logoIcon = new ImageIcon(logoUrl);
	            Image scaledLogo = logoIcon.getImage().getScaledInstance(300, 200, Image.SCALE_SMOOTH);
	            lblLogo.setIcon(new ImageIcon(scaledLogo));
	        }
	    } catch (Exception e) {
	        System.err.println("Errore nel caricamento del logo: " + e.getMessage());
	    }
	    contentPane.add(lblLogo, "cell 1 1 1 3,alignx center,aligny center");
	    
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
		showPasswordCheckbox = new JCheckBox("Mostra Password");
		showPasswordCheckbox.setBackground(new Color(255, 255, 255));
		showPasswordCheckbox.setForeground(new Color(100, 149, 237));
		showPasswordCheckbox.setFont(new Font("Dialog", Font.PLAIN, 14));
		showPasswordCheckbox.addActionListener(new ActionListener() {
		    public void actionPerformed(ActionEvent e) {
		        if (showPasswordCheckbox.isSelected()) {
		            passwordField.setEchoChar((char) 0); 
		        } else {
		            passwordField.setEchoChar('•'); 
		        }
		    }
		});
		contentPane.add(showPasswordCheckbox, "cell 1 8,alignx left");
		
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
		contentPane.add(LoginButton, "cell 1 10,growx");
		contentPane.getInputMap(JPanel.WHEN_IN_FOCUSED_WINDOW).put(
		    javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_ESCAPE, 0), "ESCAPE");
		contentPane.getActionMap().put("ESCAPE", new javax.swing.AbstractAction() {
		    @Override
		    public void actionPerformed(java.awt.event.ActionEvent e) {
		        System.exit(0); 
		    }
		});
	}

	public void showErrorMessage(String message) {
		JOptionPane.showMessageDialog(this, message, "Login Error", JOptionPane.ERROR_MESSAGE);
	}
	
	public void CaricaIcona() {
	    try {
	        java.net.URL iconUrl = getClass().getResource("/icona.png");
	        if (iconUrl != null) {
	            ImageIcon originalIcon = new ImageIcon(iconUrl);
	            Image scaledImage = originalIcon.getImage().getScaledInstance(32, 32, Image.SCALE_SMOOTH);
	            ImageIcon icon = new ImageIcon(scaledImage);
	            setIconImage(icon.getImage());
	            repaint();
	        } else {
	            System.err.println("File icona.png non trovato");
	        }
	    } catch (Exception e) {
	        System.err.println("Errore nel caricamento dell'icona: " + e.getMessage());
	        e.printStackTrace();
	    }
	}

}
