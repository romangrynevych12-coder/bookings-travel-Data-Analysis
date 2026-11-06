# bookings-travel-Data-Analysis
End-to-end data analytics project using Python and PostgreSQL. Generated a synthetic dataset of 1,200 travel bookings, performed SQL analysis, and developed data-driven business recommendations.


## 1. Booking Cancellation Analysis

**Business Question:** Which property type has the highest booking cancellation rate?

**Objective:** Identify property categories with higher cancellation rates to help the platform prioritize potential improvements.

### Key Findings

The analysis examined booking cancellation patterns across four property categories: Apartments, Hotels, Villas, and Hostels, aiming to identify differences in cancellation rates and potential areas for improvement.

The results reveal variations in cancellation rates across property types. Villas recorded the highest cancellation rate at 23.62%, while hostels demonstrated the lowest rate at 19.78%, representing a difference of 3.84 percentage points.

These findings highlight the importance of monitoring cancellation patterns across different accommodation categories and suggest potential opportunities to improve booking completion rates through targeted strategies. Further investigation would be necessary to understand the factors contributing to these differences.

**SQL Query:** [View SQL Analysis](sql/01_cancellation_analysis.sql)

**Results:** [View Analysis Output](results/01_cancellation_results.csv)

### Business Recommendation

The platform should prioritize investigating cancellation patterns among villa bookings, as villas have the highest cancellation rate (23.62%) compared to other property types. Potential strategies include improving property descriptions, introducing clearer cancellation policies, and implementing automated booking reminders to encourage customers to complete their reservations. The platform could also test targeted interventions for higher-risk bookings and monitor cancellation rates across property categories to evaluate their effectiveness.

### Limitations

The analysis identifies differences in cancellation rates across property types but does not establish that property type directly influences cancellation behavior. Other factors, such as booking lead time, price per night, and customer preferences, may contribute to these differences. Additionally, the dataset is synthetically generated, with cancellation statuses assigned randomly, so the findings should be interpreted as illustrative rather than representative of actual customer behavior. Further analysis using real booking data would be necessary to identify the underlying causes of cancellations and validate the proposed recommendations.


## 2. Promotional Offers and Booking Cancellation Analysis

**Business Question:** Do promotional offers affect booking cancellation rates?

**Objective:** Compare cancellation rates between bookings with and without promotional offers to identify potential differences in booking behavior.

### Key Findings

The analysis examined 1,200 bookings to evaluate the relationship between promotional offers and booking cancellation rates. Of these, 358 bookings included promotional offers, while 842 were made without them.

The results reveal a noticeable difference in cancellation patterns between the two groups. Bookings without promotional offers recorded a cancellation rate of 24.47%, compared to 18.99% for bookings with promotions, representing a 5.48 percentage point difference.

These findings highlight a potential opportunity to explore promotional strategies as a way to improve booking completion rates, although further investigation is required to determine whether promotions directly influence customer behavior.

**SQL Query:** [View SQL Analysis](sql/02_promotion_analysis.sql)

**Results:** [View Analysis Output](results/02_promotion_results.csv)

### Business Recommendation

The platform should consider expanding targeted promotional campaigns, as bookings with promotional offers show a lower cancellation rate (18.99%) compared to bookings without promotions (24.47%). Marketing teams could prioritize personalized discounts for customers with a higher risk of cancellation and test different promotional strategies to improve booking completion rates. The platform should also monitor promotional costs and booking profitability to ensure that these campaigns deliver sustainable business value.

### Limitations

The analysis identifies differences in cancellation rates but does not establish a causal relationship between promotional offers and booking completion. Other factors, such as customer preferences, booking lead time, and property type, may influence cancellation behavior. Additionally, the dataset is synthetically generated, so the findings should be treated as illustrative rather than representative of actual customer behavior. Further analysis using real booking data and controlled experiments would be necessary to validate the proposed recommendations.


## 3. Gross Booking Value Analysis by Property Type

**Business Question:** Which property type generates the highest gross booking value?

**Objective:** Evaluate the financial performance of different accommodation categories by comparing total booking value, completed booking volume, and average booking value to identify key contributors to overall booking activity.

### Key Findings

The analysis examined 926 completed bookings across four property categories: Apartments, Hotels, Hostels, and Villas. It evaluated the total gross booking value and average booking value for each category to identify differences in their financial contribution.

The results reveal that Apartments generated the highest total booking value of 355,989, followed by Hotels with 293,313. Hostels contributed 151,092, while Villas recorded the lowest total booking value at 99,389. Despite their lower overall contribution, Hostels achieved the highest average booking value of 1,034.88, compared to 1,008.47 for Apartments, 1,024.63 for Villas, and 888.83 for Hotels.

These findings highlight the importance of considering both booking volume and average booking value when evaluating accommodation performance. Apartments lead in total booking value primarily due to their higher number of completed bookings, while Hostels demonstrate that categories with fewer bookings can still generate relatively high average transaction values.

**SQL Query:** [View SQL Analysis](sql/03_booking_value_analysis.sql)

**Results:** [View Analysis Output](results/03_booking_value_results.csv)

### Business Recommendation

The platform should prioritize maintaining strong visibility and availability for Apartments, as they represent the largest contributor to total gross booking value. Marketing teams could explore targeted campaigns and personalized recommendations to strengthen demand within this category while monitoring booking conversion and cancellation rates.

At the same time, the platform should investigate opportunities to increase booking volume in categories with relatively high average booking values, particularly Hostels and Villas. Strategies such as improving search visibility, optimizing property listings, and testing personalized offers could help increase completed bookings. Performance should be evaluated using both gross booking value and profitability to ensure sustainable growth.

### Limitations

The analysis measures gross booking value rather than actual platform revenue, as commission rates, operating costs, and promotional expenses are not included. Differences between property categories may also reflect variations in booking volume, length of stay, and nightly prices. Additionally, the dataset is synthetically generated, with accommodation prices assigned independently of property type, meaning the observed patterns should not be considered representative of real market conditions. Further analysis using actual transaction data would be necessary to validate these findings and assess profitability.
