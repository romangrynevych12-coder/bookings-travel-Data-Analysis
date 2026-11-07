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

## 4. Customer Booking Frequency Segmentation

**Business Question:** How does booking frequency vary across customers?

**Objective:** Analyze customer booking frequency by segmenting users into three categories based on their total number of bookings. Evaluate the distribution of customers across these segments to identify booking activity patterns and explore opportunities for customer engagement and retention strategies.

### Key Findings

The analysis examined 372 unique customers and classified them into three segments based on their booking frequency: One-Time customers (1 booking), Occasional customers (2–3 bookings), and Frequent customers (4 or more bookings). It calculated the total number and percentage of customers in each segment to evaluate differences in booking activity.

The results reveal that Occasional customers represent the largest segment, accounting for 178 users (47.85% of the customer base). Frequent customers form the second-largest group, with 136 users (36.56%), while One-Time customers account for 58 users (15.59%). Overall, 84.41% of customers have made at least two bookings, indicating that multiple bookings per customer are common within the generated dataset.

These findings demonstrate how customer segmentation can provide a clearer understanding of booking frequency distribution. While Occasional customers represent the largest share of users, the substantial proportion of Frequent customers highlights the importance of examining differences in booking activity when developing customer engagement strategies.

**SQL Query:** [View SQL Analysis](sql/04_customer_segmentation.sql)

**Results:** [View Analysis Output](results/04_customer_segmentation_results.csv)

### Business Recommendation

The platform should consider developing targeted engagement strategies for different customer segments. Occasional customers could be encouraged to make additional bookings through personalized recommendations, relevant promotional offers, and improved booking experiences. Frequent customers could be considered for loyalty programs or exclusive benefits designed to encourage continued engagement.

At the same time, the platform should investigate potential barriers preventing One-Time customers from making additional bookings. Customer feedback, booking experience analysis, and targeted communication campaigns could help identify opportunities to encourage repeat bookings. The effectiveness of these initiatives should be evaluated through controlled experiments and customer engagement metrics rather than assuming that higher booking frequency automatically translates into greater profitability.

### Limitations

The analysis is based on synthetically generated data, with bookings assigned randomly to users. Therefore, the observed customer distribution does not necessarily reflect real customer behavior or loyalty patterns. Additionally, the segmentation thresholds are analytical assumptions rather than established business classifications.

The dataset does not include booking dates or customer registration dates, making it impossible to measure retention rates, booking frequency over specific periods, or changes in customer activity over time. Furthermore, the analysis counts all bookings regardless of completion status, meaning cancelled bookings are also included in customer frequency calculations. Further analysis using real customer transaction histories, booking timestamps, and completed booking values would be necessary to assess customer retention and long-term business value.
 


## 5. Booking Lead Time vs Cancellation Rate

**Business Question:**  How does booking lead time relate to cancellation rates?

**Objective:** Analyze cancellation patterns across different booking lead time categories by comparing booking volumes, cancelled bookings, and cancellation rates. Identify differences in cancellation frequency between last-minute and advance bookings to explore potential opportunities for improving booking management and customer engagement.

### Key Findings

The analysis examined 1,200 bookings and classified them into four categories based on the number of days between booking and the planned stay: Last-minute (0–7 days), Short-term (8–14 days), Medium-term (15–30 days), and Long-term (31 or more days). Cancellation rates were calculated for each category to compare booking outcomes across different lead time periods.

The results reveal that Medium-term bookings recorded the highest cancellation rate at 25.30%, with 83 cancellations out of 328 bookings. Short-term bookings followed with a cancellation rate of 23.53% (32 out of 136), while Long-term bookings accounted for the largest booking volume at 584 bookings and recorded a cancellation rate of 22.26% (130 cancellations). Last-minute bookings demonstrated the lowest cancellation rate at 19.08%, with 29 cancellations out of 152 bookings.

The difference between the highest and lowest cancellation rates was 6.22 percentage points. However, the results do not indicate a consistent relationship between booking lead time and cancellation probability, as cancellation rates do not increase or decrease steadily across the four categories. These findings highlight the importance of examining booking behavior across multiple lead time segments rather than assuming that earlier reservations are necessarily more likely to be cancelled.

**SQL Query:** [View SQL Analysis](sql/05_lead_time_analysis.sql)

**Results:** [View Analysis Output](results/05_lead_time_results.csv)

### Business Recommendation

The platform should consider monitoring cancellation rates across different booking lead time segments to identify potential patterns in customer behavior. Medium-term bookings could be investigated further to understand whether factors such as changes in travel plans, cancellation policies, or customer uncertainty contribute to cancellation decisions. Additional analysis using real booking data could help determine whether this segment requires targeted intervention.

The platform could also explore automated booking reminders, flexible modification options, and personalized communication strategies to improve customer engagement before scheduled stays. These initiatives should be tested across different lead time categories, with their effectiveness evaluated through controlled experiments and metrics such as cancellation rates, completed booking value, and customer satisfaction. Any changes should be assessed for their impact on both customer experience and business profitability.

### Limitations

The analysis is based on synthetically generated data, with booking lead times and cancellation statuses assigned independently. Therefore, the observed differences in cancellation rates reflect random variation rather than a demonstrated relationship between booking lead time and customer behavior. The findings should not be interpreted as evidence that booking lead time influences cancellation probability.

Additionally, the lead time categories are analytical assumptions rather than established business classifications. The dataset does not include booking dates, travel purposes, cancellation reasons, or cancellation policy details, limiting the ability to explain differences between segments. Further analysis using real transaction data and additional customer and booking characteristics would be necessary to validate these findings and identify meaningful predictors of cancellation behavior.
