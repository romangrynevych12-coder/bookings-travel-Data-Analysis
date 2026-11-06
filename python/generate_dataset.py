import numpy as np
import pandas as pd
np.random.seed(42)

n_records = 1200  

user_ids = [f"USR_{np.random.randint(100, 500)}" for _ in range(n_records)]
countries = ["Germany", "USA", "UK", "Slovenia", "Poland"]

user_countries = {
    user_id: np.random.choice(countries)
    for user_id in sorted(set(user_ids))
}
property_types = ["Apartment", "Hotel", "Villa", "Hostel"]
statuses = ["Completed", "Completed", "Completed", "Cancelled"]

data = {
    "booking_id": [f"BK_{10000 + i}" for i in range(n_records)],
    "user_id": user_ids,
    "user_country": [user_countries[user_id] for user_id in user_ids],
    "property_type": [
        np.random.choice(property_types, p=[0.4, 0.35, 0.1, 0.15])
        for _ in range(n_records)
    ],
    "price_per_night": np.random.randint(30, 250, size=n_records),
    "nights": np.random.randint(1, 14, size=n_records),
    "lead_time_days": np.random.randint(0, 60, size=n_records),
    "status": [np.random.choice(statuses) for _ in range(n_records)],
    "has_promo": np.random.choice([True, False], p=[0.3, 0.7], size=n_records),
}

df = pd.DataFrame(data)
df["total_amount"] = df["price_per_night"] * df["nights"]
assert df["booking_id"].is_unique
assert df["user_country"].notna().all()
assert df.groupby("user_id")["user_country"].nunique().max() == 1
assert (df["total_amount"] == df["price_per_night"] * df["nights"]).all()
assert df.groupby("user_id")["user_country"].nunique().max() == 1
assert (df["total_amount"] == df["price_per_night"] * df["nights"]).all()

df.to_csv("travel_dataset.csv", index=False)
print("Dataset saved to travel_dataset.csv")
