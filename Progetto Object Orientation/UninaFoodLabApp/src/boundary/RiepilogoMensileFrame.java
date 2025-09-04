package boundary;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.time.LocalDate;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

import control.Controller;
import entity.Corso;
import entity.Ricetta;
import entity.SessioneInPresenza;
import entity.SessioneOnline;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;

public class RiepilogoMensileFrame extends JFrame {

    private static final long serialVersionUID = 1L;
    private JPanel contentPane;
    private Controller controller;
    private JComboBox<String> meseComboBox;
    private JComboBox<Integer> annoComboBox;
    private JPanel chartsContainer;

    public RiepilogoMensileFrame(Controller controller) {
        this.controller = controller;
        initializeFrame();
        createComponents();
        loadCurrentMonthData();
    }

    private void initializeFrame() {
        setTitle("Riepilogo Mensile - " + controller.getNomeChefCorrente());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(1200, 800);
        setLocationRelativeTo(null);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(10, 10, 10, 10));
        contentPane.setLayout(new BorderLayout());
        setContentPane(contentPane);
    }

    private void createComponents() {
        JPanel headerPanel = createHeaderPanel();
        contentPane.add(headerPanel, BorderLayout.NORTH);

        chartsContainer = new JPanel(new BorderLayout());
        JScrollPane scrollPane = new JScrollPane(chartsContainer);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
        scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        contentPane.add(scrollPane, BorderLayout.CENTER);

        JPanel bottomPanel = createBottomPanel();
        contentPane.add(bottomPanel, BorderLayout.SOUTH);
    }

    private JPanel createHeaderPanel() {
        JPanel headerPanel = new JPanel(new BorderLayout());
        
        JLabel titleLabel = new JLabel("Riepilogo Mensile Corsi", SwingConstants.CENTER);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
        titleLabel.setForeground(new Color(26, 95, 180));
        headerPanel.add(titleLabel, BorderLayout.NORTH);

        // Panel per selezione mese/anno
        JPanel selectionPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
        
        JLabel label = new JLabel("Mese:");
        label.setForeground(new Color(26, 95, 180));
        selectionPanel.add(label);
        meseComboBox = new JComboBox<>(new String[]{
            "Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno",
            "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"
        });
        meseComboBox.setForeground(new Color(98, 160, 233));
        selectionPanel.add(meseComboBox);

        JLabel label_1 = new JLabel("Anno:");
        label_1.setForeground(new Color(26, 95, 180));
        selectionPanel.add(label_1);
        annoComboBox = new JComboBox<>();
        annoComboBox.setForeground(new Color(98, 160, 233));
        int currentYear = LocalDate.now().getYear();
        for (int i = currentYear - 2; i <= currentYear + 1; i++) {
            annoComboBox.addItem(i);
        }
        annoComboBox.setSelectedItem(currentYear);
        selectionPanel.add(annoComboBox);

        JButton aggiornaButton = new JButton("Aggiorna");
        aggiornaButton.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        aggiornaButton.setForeground(new Color(248, 248, 255));
        aggiornaButton.setBackground(new Color(26, 95, 180));
        setPreferredSize(new Dimension(130, 30));
        aggiornaButton.addActionListener(e -> updateCharts());
        selectionPanel.add(aggiornaButton);

        headerPanel.add(selectionPanel, BorderLayout.CENTER);
        return headerPanel;
    }

    private void loadCurrentMonthData() {
        LocalDate now = LocalDate.now();
        meseComboBox.setSelectedIndex(now.getMonthValue() - 1);
        annoComboBox.setSelectedItem(now.getYear());
        updateCharts();
    }

    private void updateCharts() {
        chartsContainer.removeAll();
        
        int mese = meseComboBox.getSelectedIndex() + 1;
        int anno = (Integer) annoComboBox.getSelectedItem();
        
        JPanel chartsPanel = createChartsPanel(mese, anno);
        chartsContainer.add(chartsPanel, BorderLayout.CENTER);
        
        chartsContainer.revalidate();
        chartsContainer.repaint();
    }

    private JPanel createChartsPanel(int mese, int anno) {
        JPanel chartsPanel = new JPanel();
        chartsPanel.setLayout(new BorderLayout());

        try {
            List<Corso> corsi = controller.getCorsiChef();
            
            if (corsi == null || corsi.isEmpty()) {
                JLabel noDataLabel = new JLabel("Nessun corso disponibile per le statistiche");
                noDataLabel.setHorizontalAlignment(SwingConstants.CENTER);
                noDataLabel.setFont(new Font("Arial", Font.PLAIN, 16));
                chartsPanel.add(noDataLabel, BorderLayout.CENTER);
                return chartsPanel;
            }

            // Create datasets with monthly filter
            DefaultCategoryDataset sessioniDataset = createSessioniDataset(corsi, mese, anno);
            DefaultCategoryDataset ricetteDataset = createRicetteDataset(corsi, mese, anno);

            // Create charts
            String meseNome = (String) meseComboBox.getSelectedItem();
            JFreeChart sessioniChart = createSessioniChart(sessioniDataset, meseNome, anno);
            JFreeChart ricetteChart = createRicetteChart(ricetteDataset, meseNome, anno);

            // Create chart panels
            ChartPanel sessioniChartPanel = new ChartPanel(sessioniChart);
            sessioniChartPanel.setPreferredSize(new Dimension(800, 400));
            
            ChartPanel ricetteChartPanel = new ChartPanel(ricetteChart);
            ricetteChartPanel.setPreferredSize(new Dimension(800, 400));

            // Layout charts
            JPanel topChartPanel = new JPanel(new BorderLayout());
            topChartPanel.add(sessioniChartPanel, BorderLayout.CENTER);
            
            JPanel bottomChartPanel = new JPanel(new BorderLayout());
            bottomChartPanel.add(ricetteChartPanel, BorderLayout.CENTER);

            JPanel allChartsPanel = new JPanel(new BorderLayout());
            allChartsPanel.add(topChartPanel, BorderLayout.NORTH);
            allChartsPanel.add(bottomChartPanel, BorderLayout.CENTER);

            chartsPanel.add(allChartsPanel, BorderLayout.CENTER);

        } catch (Exception e) {
            e.printStackTrace();
            JLabel errorLabel = new JLabel("Errore nel caricamento delle statistiche: " + e.getMessage());
            errorLabel.setHorizontalAlignment(SwingConstants.CENTER);
            errorLabel.setForeground(Color.RED);
            chartsPanel.add(errorLabel, BorderLayout.CENTER);
        }

        return chartsPanel;
    }

    private DefaultCategoryDataset createSessioniDataset(List<Corso> corsi, int mese, int anno) {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();

        for (Corso corso : corsi) {
            String nomeCorso = corso.getTitolo();
            
            // Conta sessioni in presenza per il mese specificato
            List<SessioneInPresenza> sessioniPresenza = controller.getSessioniByCorsoEMese(corso, mese, anno);
            int numSessioniPresenza = (sessioniPresenza != null) ? sessioniPresenza.size() : 0;
            
            // Conta sessioni online per il mese specificato
            List<SessioneOnline> sessioniOnline = controller.getSessioniOnlineByCorsoEMese(corso, mese, anno);
            int numSessioniOnline = (sessioniOnline != null) ? sessioniOnline.size() : 0;

            dataset.addValue(numSessioniPresenza, "Sessioni in Presenza", nomeCorso);
            dataset.addValue(numSessioniOnline, "Sessioni Online", nomeCorso);
        }

        return dataset;
    }

    private DefaultCategoryDataset createRicetteDataset(List<Corso> corsi, int mese, int anno) {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();

        for (Corso corso : corsi) {
            String nomeCorso = corso.getTitolo();
            
            // Filtra sessioni per il mese specificato
            List<SessioneInPresenza> sessioniPresenza = controller.getSessioniByCorsoEMese(corso, mese, anno);
            
            if (sessioniPresenza != null && !sessioniPresenza.isEmpty()) {
                int totaleRicette = 0;
                int minRicette = Integer.MAX_VALUE;
                int maxRicette = 0;
                int sessioniConRicette = 0;

                for (SessioneInPresenza sessione : sessioniPresenza) {
                    List<Ricetta> ricette = controller.getRicettePerSessione(sessione);
                    if (ricette != null) {
                        int numRicette = ricette.size();
                        totaleRicette += numRicette;
                        sessioniConRicette++;
                        
                        if (numRicette > 0) {
                            minRicette = Math.min(minRicette, numRicette);
                            maxRicette = Math.max(maxRicette, numRicette);
                        }
                    }
                }

                double mediaRicette = sessioniConRicette > 0 ? (double) totaleRicette / sessioniConRicette : 0;
                
                if (minRicette == Integer.MAX_VALUE) minRicette = 0;

                dataset.addValue(mediaRicette, "Media Ricette", nomeCorso);
                dataset.addValue(minRicette, "Min Ricette", nomeCorso);
                dataset.addValue(maxRicette, "Max Ricette", nomeCorso);
            } else {
                dataset.addValue(0, "Media Ricette", nomeCorso);
                dataset.addValue(0, "Min Ricette", nomeCorso);
                dataset.addValue(0, "Max Ricette", nomeCorso);
            }
        }

        return dataset;
    }

    private JFreeChart createSessioniChart(DefaultCategoryDataset dataset, String mese, int anno) {
        JFreeChart chart = ChartFactory.createBarChart(
            "Sessioni per Corso - " + mese + " " + anno,
            "Corsi",
            "Numero Sessioni",
            dataset,
            PlotOrientation.VERTICAL,
            true, true, false
        );

        CategoryPlot plot = chart.getCategoryPlot();
        plot.setBackgroundPaint(Color.WHITE);
        plot.setRangeGridlinePaint(Color.LIGHT_GRAY);

        return chart;
    }

    private JFreeChart createRicetteChart(DefaultCategoryDataset dataset, String mese, int anno) {
        JFreeChart chart = ChartFactory.createBarChart(
            "Statistiche Ricette per Corso - " + mese + " " + anno,
            "Corsi",
            "Numero Ricette",
            dataset,
            PlotOrientation.VERTICAL,
            true, true, false
        );

        CategoryPlot plot = chart.getCategoryPlot();
        plot.setBackgroundPaint(Color.WHITE);
        plot.setRangeGridlinePaint(Color.LIGHT_GRAY);

        return chart;
    }

    private JPanel createBottomPanel() {
        JPanel bottomPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
        
        JButton btnTornaIndietro = new JButton("Torna alla Homepage");
        btnTornaIndietro.setOpaque(true);
        btnTornaIndietro.setForeground(Color.WHITE);
        btnTornaIndietro.setBackground(new Color(98, 160, 234));
        btnTornaIndietro.setFont(new Font("Arial", Font.BOLD, 14));
        
        btnTornaIndietro.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                controller.TornaHomepageFromRiepilogo(RiepilogoMensileFrame.this);
            }
        });
        
        bottomPanel.add(btnTornaIndietro);
        return bottomPanel;
    }

    public void showErrorMessage(String message) {
        javax.swing.JOptionPane.showMessageDialog(this, message, "Errore", javax.swing.JOptionPane.ERROR_MESSAGE);
    }
}
