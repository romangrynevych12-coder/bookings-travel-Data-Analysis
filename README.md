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


## 2. Promotional Offers and Booking Cancellation Analysis

**Business Question:** Do promotional offers affect booking cancellation rates?

**Objective:** Compare cancellation rates between bookings with and without promotional offers to identify potential differences in booking behavior.

### Key Findings

The analysis compares cancellation rates across 1,200 bookings, including 358 bookings with promotional offers and 842 bookings without them.

Bookings without promotional offers have a cancellation rate of 24.47%, while bookings with promotional offers have a lower cancellation rate of 18.99%, representing a difference of 5.48 percentage points.

**SQL Query:** [View SQL Analysis](sql/02_promotion_analysis.sql)

**Results:** [View Analysis Output](results/02_promotion_results.csv)

### Business Recommendation

The platform should consider expanding targeted promotional campaigns, as bookings with promotional offers show a lower cancellation rate (18.99%) compared to bookings without promotions (24.47%). Marketing teams could prioritize personalized discounts for customers with a higher risk of cancellation and test different promotional strategies to improve booking completion rates. The platform should also monitor promotional costs and booking profitability to ensure that these campaigns deliver sustainable business value.

### Limitations

The analysis identifies differences in cancellation rates but does not establish a causal relationship between promotional offers and booking completion. Other factors, such as customer preferences, booking lead time, and property type, may influence cancellation behavior. Additionally, the dataset is synthetically generated, so the findings should be treated as illustrative rather than representative of actual customer behavior. Further analysis using real booking data and controlled experiments would be necessary to validate the proposed recommendations.
