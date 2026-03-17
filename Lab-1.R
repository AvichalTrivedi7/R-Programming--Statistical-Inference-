# ============================================================
# Practical 1: Sampling Distribution using mtcars Dataset
# ============================================================

# ------------------------------------------------------------
# Step 1: Load the dataset
# ------------------------------------------------------------
data(mtcars)

# =========================
# GROUP 1 VARIABLES
# cyl, disp, hp
# =========================

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'cyl'
# ------------------------------------------------------------
x <- mtcars$cyl
sample_means_cyl <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_cyl,
     main = "Sampling Distribution of Mean (cyl)",
     xlab = "Sample Mean",
     col = "lightblue")

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'disp'
# ------------------------------------------------------------
x <- mtcars$disp
sample_means_disp <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_disp,
     main = "Sampling Distribution of Mean (disp)",
     xlab = "Sample Mean",
     col = "lightgreen")

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'hp'
# ------------------------------------------------------------
x <- mtcars$hp
sample_means_hp <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_hp,
     main = "Sampling Distribution of Mean (hp)",
     xlab = "Sample Mean",
     col = "lightpink")

# =========================
# GROUP 2 VARIABLES
# drat, wt, qsec
# =========================

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'drat'
# ------------------------------------------------------------
x <- mtcars$drat
sample_means_drat <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_drat,
     main = "Sampling Distribution of Mean (drat)",
     xlab = "Sample Mean",
     col = "lightyellow")

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'wt'
# ------------------------------------------------------------
x <- mtcars$wt
sample_means_wt <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_wt,
     main = "Sampling Distribution of Mean (wt)",
     xlab = "Sample Mean",
     col = "lightcoral")

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'qsec'
# ------------------------------------------------------------
x <- mtcars$qsec
sample_means_qsec <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_qsec,
     main = "Sampling Distribution of Mean (qsec)",
     xlab = "Sample Mean",
     col = "lightskyblue")

# =========================
# GROUP 3 VARIABLES
# vs, am, gear
# =========================

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'vs'
# ------------------------------------------------------------
x <- mtcars$vs
sample_means_vs <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_vs,
     main = "Sampling Distribution of Mean (vs)",
     xlab = "Sample Mean",
     col = "lavender")

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'am'
# ------------------------------------------------------------
x <- mtcars$am
sample_means_am <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_am,
     main = "Sampling Distribution of Mean (am)",
     xlab = "Sample Mean",
     col = "lightsteelblue")

# ------------------------------------------------------------
# Sampling Distribution of Mean for 'gear'
# ------------------------------------------------------------
x <- mtcars$gear
sample_means_gear <- replicate(1000, mean(sample(x, size = 4, replace = TRUE)))

hist(sample_means_gear,
     main = "Sampling Distribution of Mean (gear)",
     xlab = "Sample Mean",
     col = "peachpuff")

