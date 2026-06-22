from pathlib import Path
import pandas as pd

root_dir = Path.cwd()

raw_data_dir = root_dir / "raw_data"
seeds_dir = root_dir / "banking_project" / "seeds"

seeds_dir.mkdir(exist_ok=True)

for xlsx_file in raw_data_dir.glob("*.xlsx"):
    df = pd.read_excel(xlsx_file)

    output_file = seeds_dir / f"{xlsx_file.stem}.csv"

    df.to_csv(output_file, index=False)

    print(f"✓ {xlsx_file.name} -> {output_file.name}")

print("Done!")