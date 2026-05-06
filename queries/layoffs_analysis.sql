#layoffer per tahun
layoffs_year = df.groupby('year')['laid_off'].sum().sort_index()
layoffs_year

import matplotlib.pyplot as plt

layoffs_year.plot(kind='line')
plt.title('Layoffs Trend per Year')
plt.xlabel('Year')
plt.ylabel('Total Laid Off')
plt.show()
#Layoffs increased significantly in 2023, indicating a post-pandemic correction phase after aggressive hiring in previous years.

#top company
top_company = df.groupby('company')['laid_off'].sum().sort_values(ascending=False).head(10)
top_company
#A small number of companies contribute disproportionately to total layoffs, indicating that workforce reductions are concentrated among a few major organizations.

#country analyst
country = df.groupby('country')['laid_off'].sum().sort_values(ascending=False).head(10)
country
#Layoffs are concentrated in a few key countries, particularly those with large and mature business ecosystems.

#industry analyst
industry = df.groupby('industry')['laid_off'].sum().sort_values(ascending=False).head(10)
industry
#Consumer-facing industries such as retail and consumer goods experienced the highest layoffs, suggesting that declining consumer demand and supply chain disruptions significantly impacted these sectors.

#layoff Vs Company Stage
stage = df.groupby('stage')['laid_off'].sum().sort_values(ascending=False)
stage
#Layoffs are heavily concentrated in post-IPO companies, indicating that large, publicly traded firms are undergoing significant restructuring, likely driven by cost optimization and market pressure.

#funding vs layoff
df[['money_raised_in__mil','laid_off']].corr()
#The correlation between funding and layoffs is very weak, suggesting that even well-funded companies are not immune to layoffs, likely due to factors such as cost optimization or market conditions.

