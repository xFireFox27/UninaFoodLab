package boundary;

import java.awt.Graphics;
import java.awt.Image;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;
import java.awt.Color;
import java.awt.Dimension;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import control.Controller;


public class HomepageChef extends JFrame {

	Controller theController;
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JLabel titleLabel;
	private JLabel logoLabel;
	
	public HomepageChef(Controller c) {
		theController = c;
		setVisible(false);
		setResizable(true);
		setTitle("Homepage Chef");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(900, 600);
		setMinimumSize(new Dimension(900, 600));
		setLocationRelativeTo(null);
		
		// ContentPane personalizzato con immagine di sfondo
		contentPane = new JPanel() {
		    private ImageIcon backgroundImage; {
		        try {
		            java.net.URL imageUrl = getClass().getResource("/home.png");
		            if (imageUrl != null) {
		                backgroundImage = new ImageIcon(imageUrl);
		            }
		        } catch (Exception e) {
		            System.err.println("Errore nel caricamento dell'immagine di sfondo: " + e.getMessage());
		        }
		    }

		    @Override
		    protected void paintComponent(Graphics g) {
		        super.paintComponent(g);
		        if (backgroundImage != null) {
		            g.drawImage(backgroundImage.getImage(), 0, 0, getWidth(), getHeight(), this);
		        }
		    }
		};
		
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		CaricaIcona();
		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[50px][grow][][][][][][][][][][][][][][][][][grow][50px]", "[50px][grow][][][][][][][][][][][][][grow][50px]"));
		
		JPanel panel = new JPanel();
		panel.setOpaque(false);
		contentPane.add(panel, "cell 1 1 18 14,grow");
		panel.setLayout(new MigLayout("", "[grow][150px][150px][150px][grow]", "[30px][][50px][][][grow][20px][40px][20px][40px][20px][grow][50px]"));
		
		// Label per il logo
		logoLabel = new JLabel();
		logoLabel.setHorizontalAlignment(SwingConstants.CENTER);
		logoLabel.setOpaque(true);
		logoLabel.setBackground(new Color(255, 255, 255, 200));
		try {
		    java.net.URL logoUrl = getClass().getResource("/logo.png");
		    if (logoUrl != null) {
		        ImageIcon originalLogo = new ImageIcon(logoUrl);
		        Image scaledLogo = originalLogo.getImage().getScaledInstance(400, 250, Image.SCALE_SMOOTH);
		        logoLabel.setIcon(new ImageIcon(scaledLogo));
		    }
		} catch (Exception e) {
		    System.err.println("Errore nel caricamento del logo: " + e.getMessage());
		}
		panel.add(logoLabel, "cell 1 1 3 2,grow");
		
		titleLabel = new JLabel("Benvenuto " + theController.getNomeChefCorrente() + "!");
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		titleLabel.setForeground(new Color(32, 71, 112));
		titleLabel.setFont(titleLabel.getFont().deriveFont(24f));
		titleLabel.setOpaque(true);
		titleLabel.setBackground(new Color(255, 255, 255, 200));
		panel.add(titleLabel, "cell 1 5 3 1,grow");
		
		JButton btnNuovoCorso = new JButton("Crea Nuovo Corso");
		btnNuovoCorso.setOpaque(true);
		btnNuovoCorso.setForeground(Color.WHITE);
		btnNuovoCorso.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnNuovoCorso.setBackground(new Color(98, 160, 234));
		btnNuovoCorso.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				theController.apriNuovoCorsoDialog();
			}
		});
		panel.add(btnNuovoCorso, "cell 1 7,grow");
		
		JButton btnVisualizzaCorsi = new JButton("Visualizza Corsi");
		btnVisualizzaCorsi.setOpaque(true);
		btnVisualizzaCorsi.setForeground(Color.WHITE);
		btnVisualizzaCorsi.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnVisualizzaCorsi.setBackground(new Color(98, 160, 234));
		btnVisualizzaCorsi.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				theController.ApriListaCorsi();
			}
		});
		panel.add(btnVisualizzaCorsi, "cell 2 7,grow");
		
		JButton btnNotifiche = new JButton("Notifiche");
		btnNotifiche.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				theController.ApriNotifiche();
			}
		});
		btnNotifiche.setOpaque(true);
		btnNotifiche.setForeground(Color.WHITE);
		btnNotifiche.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnNotifiche.setBackground(new Color(98, 160, 234));
		panel.add(btnNotifiche, "cell 3 7,grow");
		
		JButton btnRiepilogoMensile = new JButton("Riepilogo Mensile");
		btnRiepilogoMensile.setOpaque(true);
		btnRiepilogoMensile.setForeground(Color.WHITE);
		btnRiepilogoMensile.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnRiepilogoMensile.setBackground(new Color(98, 160, 234));
		btnRiepilogoMensile.addActionListener(new ActionListener() {
		    public void actionPerformed(ActionEvent e) {
		        theController.ApriRiepilogoMensile();
		    }
		});
		panel.add(btnRiepilogoMensile, "cell 1 9 3 1,grow");
		
		// Chiusura della finestra premendo ESC
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
    	JOptionPane.showMessageDialog(this, message, "Errore", JOptionPane.ERROR_MESSAGE);
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
