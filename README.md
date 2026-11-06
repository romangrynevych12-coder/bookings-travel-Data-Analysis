# bookings-travel-Data-Analysis
End-to-end data analytics project using Python and PostgreSQL. Generated a synthetic dataset of 1,200 travel bookings, performed SQL analysis, and developed data-driven business recommendations.


## 1. Booking Cancellation Analysis

**Business Question:** Which property type has the highest booking cancellation rate?

**Objective:** Identify property categories with higher cancellation rates to help the platform prioritize potential improvements.

### Key Findings

The analysis compares booking cancellation rates across four property categories: Apartments, Hotels, Villas, and Hostels.

Villas have the highest cancellation rate at 23.62%, while hostels have the lowest at 19.78%, representing a difference of 3.84 percentage points.

**SQL Query:** [View SQL Analysis](sql/01_cancellation_analysis.sql)

**Results:** [View Analysis Output](results/01_cancellation_results.csv)

### Business Recommendation

The platform should investigate the reasons behind higher cancellation rates in certain property categories. Potential improvements include clearer cancellation policies, more accurate property descriptions, and automated booking reminders.

### Limitations
The dataset is synthetically generated, and cancellation statuses are randomly assigned. Therefore, observed differences between property types should not be interpreted as evidence of causal relationships.
