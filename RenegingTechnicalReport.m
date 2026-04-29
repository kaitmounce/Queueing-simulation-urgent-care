%[text] # Technical Report - Reneging 
%[text] 
%[text] ## Objective 
%[text] The purpose of this simulation was to extend the baseline queue by allowing impatient patients to leave the waiting room before being served. 
%[text] Reneging times are exponentially distributed with a mean of 15 minutes (0.25 hours) with rate: $\\theta$= 4 per hour.
%[text] 
%[text] The goal was to measure the impact of reneging on queue length, wait times, and customers who left. 
%[text] 
%[text] ## Input Parameters 
%[text:table]{"ignoreHeader":true}
%[text] | **Parameter** | **Value** |
%[text] | --- | --- |
%[text] | Arrival Rate ($\\lambda$) | 2/hr |
%[text] | Service Rate ($\\mu$) | 3/hr |
%[text] | Renege Rate ($\\theta$) | 4/hr |
%[text] | Servers | 1 |
%[text] | Shift Length | 8 hrs |
%[text] | Samples | 200 |
%[text:table]
%[text] 
%[text] ## Theoretical Results 
%[text] $L$ $\\approx$ 0.6182
%[text] $L\_q$ $\\approx$ 0.1454
%[text] $W$ $\\approx$ 0.4358
%[text] $W\_q$ $\\approx$ 0.1025
%[text] 
%[text] $P\_0$ =  $\\approx$ 0.5272
%[text] $P\_1$ = $P\_0$ \* ( $\\frac{\\lambda}{\\mu}$ ) $\\approx$ 0.5272 \* ( $\\frac{2}{3}$ ) $\\approx$ 0.3514
%[text] $P\_2$ = $P\_1$\* ( $\\frac{\\lambda}{\\mu+\\theta}$ ) $\\approx$ 0.3514 \* ( $\\frac{2}{3+4}$ ) $\\approx$ 0.1004
%[text] $P\_3$ = $P\_2$ \* ( $\\frac{\\lambda}{\\mu+2\\theta}$ ) $\\approx$ 0.1004 \* ( $\\frac{2}{3+8}$ ) $\\approx$ 0.0183
%[text] $P\_4$ = $P\_3$ \* ( $\\frac{\\lambda}{\\mu+3\\theta}$ ) $\\approx$ 0.0183 \* ( $\\frac{2}{3+12}$ ) $\\approx$0.0024
%[text] $P\_5$ = $P\_4$ \* ( $\\frac{\\lambda}{\\mu+4\\theta}$ ) $\\approx$ 0.0024 \* ( $\\frac{2}{3+16}$ ) $\\approx$ 0.0003
%[text] 
%[text] ## Simulation Results
%[text] Observed outputs from simulation: 
%[text] The simulation results show that adding reneging changes the behavior of the queues. In the baseline model, all of the arrivals were served, the reneging model is based on the possibility that patients could leave the queue before being served. Thus, the mean number of patients in the system could be lowered as was the average number of patients waiting in line. 
%[text] The reason that the wait time to be served is less in this technique is due to the queuing system not growing as large during peak hours. When the doctor is busy and there is a large number of patients waiting, certain patients might lose their patience and leave. This lowers the queque, which means both $L\_q$ and $W\_q$  decrease. Since served patients typically wait less before starting service, that reduces the total time in the system, $W$, as well. 
%[text] Consequently, it results in the urgent care missing out on visits that could have been completed. This means that in the reneging scenario, fewer customers are served per shift than in the baseline model as some patients who arrice renege rather than enter service. 
%[text] The histograms support this result. This number-in-system histogram has a tighter shape arounf smaller values, which indicates that, on average, the system spends time with lower numbers in service.  The histogram of waiting time shifts closer to shorter wait times. The served-count histogram indicates how many patients  were actually treated during an 8-hour shift, and the reneged-count histogram shows the overall number of lost patients. While the number of reneged patients is low duting many shifts, in other congested shifts, the number of reneged patients increase as wait times increase. 
%[text] 
%[text] ## Comparison
%[text] The following comparison evaluates the agreement between theoretical predictions and simulation outputs, highlighting discrepancies.
%[text] 
%[text:table]{"ignoreHeader":true}
%[text] | **Metric** | **Theoretical** | **Simulated** | **% Error** |
%[text] | --- | --- | --- | --- |
%[text] | $L$ | 0\.6182 | 0\.5809 | 6\.03 % |
%[text] | $L\_q$ | 0\.1454 | 0\.1332 | 8\.39 % |
%[text] | $W$ | 0\.4358 | 0\.3528 | 19\.03 % |
%[text] | $W\_q$ | 0\.1025 | 0\.0386 | 62\.37 % |
%[text:table]
%[text] 
%[text] ## Discussion
%[text] Allowing reneging improves systems congestion because patients self-remove from the line. However, this is not operationally beneficial because this leaves patients left untreated. 
%[text] Advantage: 
%[text] - Shorter lines
%[text] - Lower waiting times
%[text] - Less queue \
%[text] Disadvantage: 
%[text] - Lost revenue
%[text] - Poor customer satisfaction
%[text] - Potential health-related risks (untreated patients)  \
%[text] 
%[text] ## Conclusion
%[text] While reneging at the bottleneck location lessened congestion, it reduced total system performance through lost visits. Management should consider the disadvantages to reneging as they outweigh the advantages. Hiring more staff or implementing a more efficient service process would produce a more beneficial outcome than to accept or allow patients to leave without receiving treatment. 
%[text] 
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
