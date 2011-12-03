Using MATLAB to Develop Portfolio Optimization Models
-----------------------------------------------------

The following MATLAB .mat and .m files can be used to generate 3D efficient frontiers and do backtests.  They are the materials used in the MathWorks Webinar "Using MATLAB to Develop Portfolio Optimization Models."

1.  Raw asset total returns, asset symbols, asset universes, and dates are contained in the file BlueChipStocks.mat.  The data contain 44 assets plus three additional series. The file has four quantities:
	Asset is a cell array that contains asset symbols.  The last three elements are ad hoc symbols for the Dow Jones Industiral Average (DJIA), the S&P 500 Composite (SP500), and 3-month treasury bills (CASH).
	Data is a matrix of monthly asset, index, and cash total returns. Each column corresponds with an asset and each row corresponds with a date.  Missing values are represented as NaN.
	Date is a column vector of MATLAB serial date numbers that are month-end dates.
	Map is a matrix that is the same size as Data that has 0 for an asset on a given date if the asset was not in the DJIA and 1 if it was in the index.

ADDED January 27, 2006: If you are using an older version of MATLAB (R13, R14SP1), use the file BlueChipStocksR13.mat. Change the file name to BlueChipStocks.mat (you might need to delete the existing file) and run the scripts as usual.

2.  Run BCSestimate to estimate efficient portfolios and so forth for use in all subsequent scripts. IT IS NECESSARY TO RUN THIS SCRIPT TO CREATE THE TWO .MAT FILES NEEDED FOR SUBSEQUENT ANALYSIS. Results without adjustment for market returns (absolute) are contained in the file BlueChipBacktest0.mat and results with adjustment for market returns (relative) are contained in the file BlueChipBacktest.mat.  The estimation period is a five-year rolling estimate.

3.  To generate 3D efficient frontiers that evolve over time, run BCSfrontier.  The first plot is the 3D efficient frontier without market adjustments and the second plot (hit enter to continue) is the 3D efficient frontier with market adjustments. Each frontier is displayed from month-to-month.

4.  To generate a plot of turnover for each portfolio sequence on the 3D efficient frontiers, run BCSturnover.  It plots average annual turnover for both adjusted and unadjusted portfolio sequences.

5.  To plot ex-post mean and standard deviations of portfolio returns, run BCSbacktest.  It plots the annualized mean and standard deviation of realized total returns of the Dow Jone Industrial Average as a red star and plots the annualized mean and standard deviation of realized total returns for each portfolio sequence as blue circles.  The least risky sequence is the leftmost circle and the most risky sequence is the rightmost circle.

6.  To plot maximum drawdown for each portfolio sequence, run BCSdrawdown.  It plots the maximum drawdown of the Dow Jones Industrial Average as the green line and the maximum drawdown of each portfolio sequence as the blue line.

7.  To view cumulative total return values for each portfolio sequence, run BCSbacktest2.  This script generates four plots in sequence (hit enter to go to the next plot).  The first plot is the cumulative result of unadjusted portfolio sequences starting with a value of 1 at the start of the backtest period.  The second plot shows the difference between the value of the index and the portfolio sequences.  The translucent blue plane is the level of the index.  The third plot is the cumulative result of adjusted portfolio sequences starting with a value of 1 at the start of the backtest period.  The fourth plot shows the difference between the index and the portfolio sequences.