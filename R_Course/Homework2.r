library(gapminder)
library(dplyr)
library(ggplot2)
library(ggthemes)
library(Hmisc)
library(wesanderson)
library(ggridges)
library(griffen)

#names(cps)
sel_feature <- c("state", "education_category")
new_df <- cps[sel_feature]
unique_state <- unique(new_df["state"])[[1]]
#print(unique_state)

# looping 

desired_length <- 1
graduation_rate <- rep(NA, desired_length)
for (i in unique_state) {
    #print(i)
    cur_df <- new_df %>% filter(state == i)
    total_num <- nrow(cur_df)
    college_df <- cur_df %>% filter(education_category == "college")
    college_num <- nrow(college_df)
    state_graduation_rate <- college_num / total_num
    #print(state_graduation_rate)
    graduation_rate <- c(graduation_rate, state_graduation_rate)
}
graduation_rate <- graduation_rate[-1]

graduation_rate_df <- data.frame(unique_state, graduation_rate)
graduation_rate_df <- graduation_rate_df[order(graduation_rate,
 decreasing = FALSE),]
rownames(graduation_rate_df) <- 1 : length(rownames(graduation_rate_df))
graduation_rate_df$unique_state <- factor(graduation_rate_df$unique_state,
 levels = graduation_rate_df$unique_state)
print(graduation_rate_df)

p <- ggplot(data=graduation_rate_df,
 mapping = aes(x=unique_state, y=graduation_rate)) +
  geom_point() + coord_flip() + labs(y = "College Graduation Rate", x = "")
print(p)