{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Before you start :\n",
    "   - These exercises are related to the Subsetting and Descriptive Stats lessons.\n",
    "   - Keep in mind that you need to use some of the functions you learned in the previous lessons.\n",
    "   - All datasets are provided in the `your-code` folder of this lab.\n",
    "   - Elaborate your codes and outputs as much as you can.\n",
    "   - Try your best to answer the questions and complete the tasks and most importantly enjoy the process!!!"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Import all the libraries that are necessary."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [],
   "source": [
    "import pandas as pd;\n",
    "import matplotlib.pyplot as plt;"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Challenge 1"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### In this challenge we will use the `Temp_States.csv` file. \n",
    "\n",
    "#### First import it into a data frame called `temp`."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "metadata": {},
   "outputs": [],
   "source": [
    "temp = pd.read_csv('data/Temp_States.csv')"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Print `temp`."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>City</th>\n",
       "      <th>State</th>\n",
       "      <th>Temperature</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>NYC</td>\n",
       "      <td>New York</td>\n",
       "      <td>19.444444</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Albany</td>\n",
       "      <td>New York</td>\n",
       "      <td>9.444444</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>Buffalo</td>\n",
       "      <td>New York</td>\n",
       "      <td>3.333333</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>Hartford</td>\n",
       "      <td>Connecticut</td>\n",
       "      <td>17.222222</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>Bridgeport</td>\n",
       "      <td>Connecticut</td>\n",
       "      <td>14.444444</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "         City        State  Temperature\n",
       "0         NYC     New York    19.444444\n",
       "1      Albany     New York     9.444444\n",
       "2     Buffalo     New York     3.333333\n",
       "3    Hartford  Connecticut    17.222222\n",
       "4  Bridgeport  Connecticut    14.444444"
      ]
     },
     "execution_count": 3,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp.head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Explore the data types of the `temp` dataframe. What type of data do we have? Comment your result."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "City            object\n",
       "State           object\n",
       "Temperature    float64\n",
       "dtype: object"
      ]
     },
     "execution_count": 4,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp.dtypes"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "`Comments`: *City* and *State* contain *strings* while *Temperature* contains *floats*."
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select the rows where state is New York."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>City</th>\n",
       "      <th>State</th>\n",
       "      <th>Temperature</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>NYC</td>\n",
       "      <td>New York</td>\n",
       "      <td>19.444444</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Albany</td>\n",
       "      <td>New York</td>\n",
       "      <td>9.444444</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>Buffalo</td>\n",
       "      <td>New York</td>\n",
       "      <td>3.333333</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "      City     State  Temperature\n",
       "0      NYC  New York    19.444444\n",
       "1   Albany  New York     9.444444\n",
       "2  Buffalo  New York     3.333333"
      ]
     },
     "execution_count": 5,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp[temp['State'] == 'New York']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What is the average of the temperature of cities in New York?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Temperature    10.740741\n",
       "dtype: float64"
      ]
     },
     "execution_count": 6,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp[temp['State'] == 'New York'].mean()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### We want to know cities and states with Temperature above 15 degrees Celsius."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>City</th>\n",
       "      <th>State</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>NYC</td>\n",
       "      <td>New York</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>Hartford</td>\n",
       "      <td>Connecticut</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>5</th>\n",
       "      <td>Treton</td>\n",
       "      <td>New Jersey</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6</th>\n",
       "      <td>Newark</td>\n",
       "      <td>New Jersey</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "       City        State\n",
       "0       NYC     New York\n",
       "3  Hartford  Connecticut\n",
       "5    Treton   New Jersey\n",
       "6    Newark   New Jersey"
      ]
     },
     "execution_count": 7,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp[temp['Temperature'] > 15][['City', 'State']]"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Now, return only the cities that have a temperature above 15 degrees Celsius."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0         NYC\n",
       "3    Hartford\n",
       "5      Treton\n",
       "6      Newark\n",
       "Name: City, dtype: object"
      ]
     },
     "execution_count": 8,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp[temp['Temperature'] > 15]['City']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### We want to know which cities have a temperature above 15 degrees Celsius and below 20 degrees Celsius.\n",
    "\n",
    "*Hint: First write the condition then select the rows.*"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0         NYC\n",
       "3    Hartford\n",
       "Name: City, dtype: object"
      ]
     },
     "execution_count": 9,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp[(temp['Temperature'] > 15) & (temp['Temperature'] < 20)]['City']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Find the mean and the standard deviation of the temperature of each state.\n",
    "\n",
    "*Hint: Use functions from Data Manipulation lesson*"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Temperature</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>State</th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>Connecticut</th>\n",
       "      <td>15.833333</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>New Jersey</th>\n",
       "      <td>21.111111</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>New York</th>\n",
       "      <td>10.740741</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "             Temperature\n",
       "State                   \n",
       "Connecticut    15.833333\n",
       "New Jersey     21.111111\n",
       "New York       10.740741"
      ]
     },
     "execution_count": 10,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp.groupby('State').mean()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Temperature</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>State</th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>Connecticut</th>\n",
       "      <td>1.964186</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>New Jersey</th>\n",
       "      <td>1.571348</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>New York</th>\n",
       "      <td>8.133404</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "             Temperature\n",
       "State                   \n",
       "Connecticut     1.964186\n",
       "New Jersey      1.571348\n",
       "New York        8.133404"
      ]
     },
     "execution_count": 11,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "temp.groupby('State').std()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": true
   },
   "source": [
    "# Challenge 2"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Load the `employee.csv` file into a DataFrame. Call the dataframe `employee`."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>Jose</td>\n",
       "      <td>IT</td>\n",
       "      <td>Bachelor</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>1</td>\n",
       "      <td>35</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Maria</td>\n",
       "      <td>IT</td>\n",
       "      <td>Master</td>\n",
       "      <td>F</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>David</td>\n",
       "      <td>HR</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>Sonia</td>\n",
       "      <td>HR</td>\n",
       "      <td>Bachelor</td>\n",
       "      <td>F</td>\n",
       "      <td>analyst</td>\n",
       "      <td>4</td>\n",
       "      <td>35</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>Samuel</td>\n",
       "      <td>Sales</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>associate</td>\n",
       "      <td>3</td>\n",
       "      <td>55</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "     Name Department Education Gender      Title  Years  Salary\n",
       "0    Jose         IT  Bachelor      M    analyst      1      35\n",
       "1   Maria         IT    Master      F    analyst      2      30\n",
       "2   David         HR    Master      M    analyst      2      30\n",
       "3   Sonia         HR  Bachelor      F    analyst      4      35\n",
       "4  Samuel      Sales    Master      M  associate      3      55"
      ]
     },
     "execution_count": 12,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee = pd.read_csv('data/employee.csv')\n",
    "employee.head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Explore the data types of the `employee` dataframe. Comment your results."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Name          object\n",
       "Department    object\n",
       "Education     object\n",
       "Gender        object\n",
       "Title         object\n",
       "Years          int64\n",
       "Salary         int64\n",
       "dtype: object"
      ]
     },
     "execution_count": 13,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.dtypes"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "`Comments`: Two of the columns contain *integers* and the rest contain *strings* values."
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Show visually the frequency distribution (histogram) of the employee dataset. In few words describe these histograms?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "image/png": "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\n",
      "text/plain": [
       "<Figure size 720x288 with 2 Axes>"
      ]
     },
     "metadata": {
      "needs_background": "light"
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "employee.hist(figsize=(10,4))\n",
    "plt.show()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "`Comments`: There are three clearly different ranges in which the salary values lay, as well as three clearly different ranges for the years that employees have been working in the company. Probably, the ranges of the *years* histogram are related to the ranges in the *salary* histogram. For example, it is logical that employees with an experience from 1 to 3 years have a salary from 30k to 40k approximately. Then, as years pass, salary increases and we can assume that employees with 4 years of experience have a 55k to 62k salary and employees with more than 6 years have a salary of more than 65k."
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What's the average salary in this company?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "48.888888888888886"
      ]
     },
     "execution_count": 15,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee['Salary'].mean()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What's the highest salary?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "70"
      ]
     },
     "execution_count": 16,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee['Salary'].max()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What's the lowest salary?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "30"
      ]
     },
     "execution_count": 17,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee['Salary'].min()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Who are the employees with the lowest salary?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Maria</td>\n",
       "      <td>IT</td>\n",
       "      <td>Master</td>\n",
       "      <td>F</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>David</td>\n",
       "      <td>HR</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    Name Department Education Gender    Title  Years  Salary\n",
       "1  Maria         IT    Master      F  analyst      2      30\n",
       "2  David         HR    Master      M  analyst      2      30"
      ]
     },
     "execution_count": 18,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee[employee['Salary'] == employee['Salary'].min()]"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Could you give all the information about an employee called David?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>David</td>\n",
       "      <td>HR</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    Name Department Education Gender    Title  Years  Salary\n",
       "2  David         HR    Master      M  analyst      2      30"
      ]
     },
     "execution_count": 19,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee[employee['Name'] == 'David']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Could you give only David's salary?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "2    30\n",
       "Name: Salary, dtype: int64"
      ]
     },
     "execution_count": 20,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee[employee['Name'] == 'David']['Salary']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Print all the rows where job title is associate."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>Samuel</td>\n",
       "      <td>Sales</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>associate</td>\n",
       "      <td>3</td>\n",
       "      <td>55</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>5</th>\n",
       "      <td>Eva</td>\n",
       "      <td>Sales</td>\n",
       "      <td>Bachelor</td>\n",
       "      <td>F</td>\n",
       "      <td>associate</td>\n",
       "      <td>2</td>\n",
       "      <td>55</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>Pedro</td>\n",
       "      <td>IT</td>\n",
       "      <td>Phd</td>\n",
       "      <td>M</td>\n",
       "      <td>associate</td>\n",
       "      <td>7</td>\n",
       "      <td>60</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "     Name Department Education Gender      Title  Years  Salary\n",
       "4  Samuel      Sales    Master      M  associate      3      55\n",
       "5     Eva      Sales  Bachelor      F  associate      2      55\n",
       "7   Pedro         IT       Phd      M  associate      7      60"
      ]
     },
     "execution_count": 21,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee[employee['Title'] == 'associate']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Print the first 3 rows of your dataframe.\n",
    "\n",
    "Hint : There are 3 ways to do it. Do it all ways."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>Jose</td>\n",
       "      <td>IT</td>\n",
       "      <td>Bachelor</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>1</td>\n",
       "      <td>35</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Maria</td>\n",
       "      <td>IT</td>\n",
       "      <td>Master</td>\n",
       "      <td>F</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>David</td>\n",
       "      <td>HR</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    Name Department Education Gender    Title  Years  Salary\n",
       "0   Jose         IT  Bachelor      M  analyst      1      35\n",
       "1  Maria         IT    Master      F  analyst      2      30\n",
       "2  David         HR    Master      M  analyst      2      30"
      ]
     },
     "execution_count": 22,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Method 1\n",
    "employee.head(3)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>Jose</td>\n",
       "      <td>IT</td>\n",
       "      <td>Bachelor</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>1</td>\n",
       "      <td>35</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Maria</td>\n",
       "      <td>IT</td>\n",
       "      <td>Master</td>\n",
       "      <td>F</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    Name Department Education Gender    Title  Years  Salary\n",
       "0   Jose         IT  Bachelor      M  analyst      1      35\n",
       "1  Maria         IT    Master      F  analyst      2      30"
      ]
     },
     "execution_count": 23,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Method 2\n",
    "employee.iloc[:2]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>Jose</td>\n",
       "      <td>IT</td>\n",
       "      <td>Bachelor</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>1</td>\n",
       "      <td>35</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>Maria</td>\n",
       "      <td>IT</td>\n",
       "      <td>Master</td>\n",
       "      <td>F</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>David</td>\n",
       "      <td>HR</td>\n",
       "      <td>Master</td>\n",
       "      <td>M</td>\n",
       "      <td>analyst</td>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    Name Department Education Gender    Title  Years  Salary\n",
       "0   Jose         IT  Bachelor      M  analyst      1      35\n",
       "1  Maria         IT    Master      F  analyst      2      30\n",
       "2  David         HR    Master      M  analyst      2      30"
      ]
     },
     "execution_count": 24,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Method 3\n",
    "employee[:3]"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Find the employees who's title is associate and the salary above 55?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Name</th>\n",
       "      <th>Department</th>\n",
       "      <th>Education</th>\n",
       "      <th>Gender</th>\n",
       "      <th>Title</th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>Pedro</td>\n",
       "      <td>IT</td>\n",
       "      <td>Phd</td>\n",
       "      <td>M</td>\n",
       "      <td>associate</td>\n",
       "      <td>7</td>\n",
       "      <td>60</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    Name Department Education Gender      Title  Years  Salary\n",
       "7  Pedro         IT       Phd      M  associate      7      60"
      ]
     },
     "execution_count": 25,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee[(employee['Salary'] > 55) & (employee['Title'] == 'associate')]"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Group the employees based on their number of years of employment. What are the average salaries in each group?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Years</th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>35.000000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>38.333333</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>55.000000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>35.000000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>60.000000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>8</th>\n",
       "      <td>70.000000</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "          Salary\n",
       "Years           \n",
       "1      35.000000\n",
       "2      38.333333\n",
       "3      55.000000\n",
       "4      35.000000\n",
       "7      60.000000\n",
       "8      70.000000"
      ]
     },
     "execution_count": 26,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.groupby('Years').mean()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "####  What is the average Salary per title?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Title\n",
       "VP           70.000000\n",
       "analyst      32.500000\n",
       "associate    56.666667\n",
       "Name: Salary, dtype: float64"
      ]
     },
     "execution_count": 27,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.groupby('Title').mean()['Salary']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Show a visual summary of the data using boxplot. What Are the First and Third Quartiles? Comment your results.\n",
    "*Hint : Quantiles vs Quartiles*\n",
    "\n",
    "`In Probability and Statistics, quantiles are cut points dividing the range of a probability distribution into continuous intervals with equal probabilities. When division is into four parts the values of the variate corresponding to 25%, 50% and 75% of the total distribution are called quartiles.`"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAAXQAAAD8CAYAAABn919SAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAADl0RVh0U29mdHdhcmUAbWF0cGxvdGxpYiB2ZXJzaW9uIDMuMC4zLCBodHRwOi8vbWF0cGxvdGxpYi5vcmcvnQurowAAEHlJREFUeJzt3X+MZWV9x/H3RxYCIggITDZgXdtsKP4oq45US1JnQSyK6WKiBmvM1pBMTdRo21S3tWpJbLP0j1pj9Y+pqGP9BaIE6pqtuO5to2mQH6L8WO0iXXXDlhULyqxGwX77xxxk2J3de+/M3J3h2fcrmdxzzn3OnO+cPPu5zz73nntSVUiSnvietNwFSJKWhoEuSY0w0CWpEQa6JDXCQJekRhjoktQIA12SGmGgS1IjDHRJasSqw3mwU089tdasWXM4D9m0ffv2cfzxxy93GdIB7JtL65Zbbrm/qk7r1+6wBvqaNWu4+eabD+chm9br9ZiYmFjuMqQD2DeXVpLvD9LOKRdJaoSBLkmNMNAlqREGuiQ1wkCXpEb0DfQkZyW5bc7PT5O8PckpSW5IsrN7PPlwFCxJml/fQK+q71bVuqpaB7wA+BlwLbAJ2FZVa4Ft3bokaZkMO+VyAfC9qvo+sAGY7rZPA5csZWGSpOEMe2HRpcBnuuWxqtoDUFV7kpw+3w5JJoFJgLGxMXq93gJL1f5mZmY8n1pW69evH3qf7du3j6ASAWTQm0QnOQa4F3h2Vd2X5MGqOmnO8w9U1SHn0cfHx8srRZeOV+NppVqzaQu7Nl+83GU0I8ktVTXer90wUy4vB26tqvu69fuSrO4OthrYO3yZkqSlMkygv47HplsArgc2dssbgeuWqihJ0vAGCvQkTwYuBL4wZ/Nm4MIkO7vnNi99eZKkQQ30pmhV/Qx42n7bfszsp14kSSuAV4pKUiMMdElqhIEuSY0w0CWpEQa6JDXCQJekRhjoktQIA12SGmGgS1IjDHRJaoSBLkmNMNAlqREGuiQ1wkCXpEYY6JLUCANdkhphoEtSIwx0SWqEgS5JjRj0JtEnJbkmyXeS7Ejy4iSnJLkhyc7u8eRRFytJOrhBR+gfALZW1W8D5wA7gE3AtqpaC2zr1iVJy6RvoCc5Efh94EqAqvplVT0IbACmu2bTwCWjKlKS1N8gI/TfBH4EfCzJN5N8JMnxwFhV7QHoHk8fYZ2SpD5WDdjm+cBbq+rGJB9giOmVJJPAJMDY2Bi9Xm8hdWoeMzMznk+N3Ju37WPfw8Pvt2bTloHbHn80fOiC44c/iB5nkEDfDeyuqhu79WuYDfT7kqyuqj1JVgN759u5qqaAKYDx8fGamJhYfNUCoNfr4fnUqO3buoVdmy8eap9h++aaTVvsy0ug75RLVf0P8MMkZ3WbLgDuAq4HNnbbNgLXjaRCSdJABhmhA7wV+FSSY4B7gDcy+2JwdZLLgB8ArxlNiZKkQQwU6FV1GzA+z1MXLG05kqSF8kpRSWqEgS5JjTDQJakRBrokNcJAl6RGGOiS1AgDXZIaYaBLUiMMdElqxKCX/ks6Qp1w9iaeO72A+9dM92/y2DEAhvsCMB3IQJd0SA/t2HxYvm1Ri+eUiyQ1wkCXpEYY6JLUCANdkhphoEtSIwx0SWqEgS5JjTDQJakRBrokNWKgK0WT7AIeAn4FPFJV40lOAa4C1gC7gNdW1QOjKVOS1M8wI/T1VbWuqsa79U3AtqpaC2zr1iVJy2QxUy4beOzrd6aBSxZfjiRpoQYN9AK+nOSWJJPdtrGq2gPQPZ4+igIlSYMZ9NsWz6uqe5OcDtyQ5DuDHqB7AZgEGBsbo9frDV+l5jUzM+P51GExbD9bSN+0Ly/eQIFeVfd2j3uTXAucC9yXZHVV7UmyGth7kH2ngCmA8fHxGuYrNXVow35FqbQgW7cM3c+G7psLOIYO1HfKJcnxSU54dBl4GXAHcD2wsWu2EbhuVEVKkvobZIQ+Blyb5NH2n66qrUluAq5OchnwA+A1oytTktRP30CvqnuAc+bZ/mPgglEUJUkanleKSlIjDHRJaoSBLkmNMNAlqREGuiQ1wkCXpEYY6JLUCANdkhphoEtSIwx0SWqEgS5JjTDQJakRBrokNcJAl6RGGOiS1AgDXZIaYaBLUiMMdElqhIEuSY0w0CWpEQMHepKjknwzyRe79WcmuTHJziRXJTlmdGVKkvoZZoT+NmDHnPUrgPdX1VrgAeCypSxMkjScgQI9yZnAxcBHuvUA5wPXdE2mgUtGUaAkaTCrBmz3j8A7gBO69acBD1bVI936buCM+XZMMglMAoyNjdHr9RZcrB5vZmbG86nDYth+tpC+aV9evL6BnuSVwN6quiXJxKOb52la8+1fVVPAFMD4+HhNTEzM10wL0Ov18Hxq5LZuGbqfDd03F3AMHWiQEfp5wB8meQVwLHAisyP2k5Ks6kbpZwL3jq5MSVI/fefQq+ovq+rMqloDXAp8tapeD2wHXt012whcN7IqJUl9LeZz6O8E/izJ3czOqV+5NCVJkhZi0DdFAaiqHtDrlu8Bzl36kiRJC+GVopLUCANdkhphoEtSIwx0SWqEgS5JjTDQJakRBrokNcJAl6RGGOiS1IihrhSVdGRas2nL8DttHXyfpx539PC/Xwcw0CUd0q7NFw+9z5pNWxa0nxbHKRdJaoSBLkmNMNAlqREGuiQ1wkCXpEYY6JLUCANdkhphoEtSI/oGepJjk3wjybeS3Jnk8m77M5PcmGRnkquSHDP6ciVJBzPICP0XwPlVdQ6wDrgoyYuAK4D3V9Va4AHgstGVKUnqp2+g16yZbvXo7qeA84Fruu3TwCUjqVCSNJCB5tCTHJXkNmAvcAPwPeDBqnqka7IbOGM0JUqSBjHQl3NV1a+AdUlOAq4Fzp6v2Xz7JpkEJgHGxsbo9XoLq1QHmJmZ8XxqWa1fv/6gz+WK+bdv3759RNVoqG9brKoHk/SAFwEnJVnVjdLPBO49yD5TwBTA+Ph4TUxMLKpgPabX6+H51HKqmnccZ99cJoN8yuW0bmROkuOAlwI7gO3Aq7tmG4HrRlWkJKm/QUboq4HpJEcx+wJwdVV9McldwGeTvA/4JnDlCOuUJPXRN9Cr6tvA8+bZfg9w7iiKkiQNzytFJakRBrokNcJAl6RGGOiS1AgDXZIaYaBLUiMMdElqhIEuSY0w0CWpEQa6JDXCQJekRhjoktQIA12SGmGgS1IjDHRJaoSBLkmNMNAlqREGuiQ1wkCXpEYY6JLUiL6BnuTpSbYn2ZHkziRv67afkuSGJDu7x5NHX64k6WAGGaE/Avx5VZ0NvAh4c5JnAZuAbVW1FtjWrUuSlknfQK+qPVV1a7f8ELADOAPYAEx3zaaBS0ZVpCSpv1XDNE6yBngecCMwVlV7YDb0k5x+kH0mgUmAsbExer3eIsrVXDMzM55PrUj2zeUxcKAneQrweeDtVfXTJAPtV1VTwBTA+Ph4TUxMLKBMzafX6+H51Epk31weA33KJcnRzIb5p6rqC93m+5Ks7p5fDewdTYmSpEEM8imXAFcCO6rqH+Y8dT2wsVveCFy39OVJkgY1yJTLecAbgNuT3NZt+ytgM3B1ksuAHwCvGU2JkqRB9A30qvoacLAJ8wuWthxJ0kJ5pagkNcJAl6RGGOiS1AgDXZIaYaBLUiMMdElqhIEuSY0w0CWpEQa6JDXCQJekRhjoktQIA12SGmGgS1IjDHRJaoSBLkmNMNAlqREGuiQ1wkCXpEYY6JLUiL6BnuSjSfYmuWPOtlOS3JBkZ/d48mjLlCT1M8gI/ePARftt2wRsq6q1wLZuXZK0jPoGelX9B/C/+23eAEx3y9PAJUtclyRpSAudQx+rqj0A3ePpS1eSJGkhVo36AEkmgUmAsbExer3eqA95xJiZmfF8akWyby6PhQb6fUlWV9WeJKuBvQdrWFVTwBTA+Ph4TUxMLPCQ2l+v18PzqZXIvrk8Fjrlcj2wsVveCFy3NOVIkhZqkI8tfgb4T+CsJLuTXAZsBi5MshO4sFuXJC2jvlMuVfW6gzx1wRLXIklaBK8UlaRGjPxTLlqcJAvar6qWuBJJK50j9BWuqg7684x3fvGgz0k68hjoktQIp1xWiHMu/zI/+fnDQ++3ZtOWgds+9bij+dZ7Xzb0MSQ9MRjoK8RPfv4wuzZfPNQ+w168MUz4S3riccpFkhphoEtSIwx0SWqEgS5JjTDQJakRBrokNcJAl6RGGOiS1AgDXZIa4ZWiK8QJZ2/iudObht9xephjAAx3NaqkJw4DfYV4aMdmL/2XtChOuUhSIxyhryALGkFvHe7bFiW1y0BfIYadboHZF4CF7CepTYuacklyUZLvJrk7yQLe0ZMkLZUFj9CTHAV8CLgQ2A3clOT6qrprqYpT/3uK5or5t3sbOunIs5gR+rnA3VV1T1X9EvgssGFpytKjDnVP0e3bt3tPUUm/tphAPwP44Zz13d02SdIyWMybovPNBRwwNEwyCUwCjI2N0ev1FnFIzTUzM+P51Ipk31weiwn03cDT56yfCdy7f6OqmgKmAMbHx2uYC2F0aMNeWCQdLvbN5bGYKZebgLVJnpnkGOBS4PqlKUuSNKwFj9Cr6pEkbwH+DTgK+GhV3blklUmShrKoC4uq6kvAl5aoFknSIvhdLpLUCANdkhqRw3kRSpIfAd8/bAds36nA/ctdhDQP++bSekZVndav0WENdC2tJDdX1fhy1yHtz765PJxykaRGGOiS1AgD/YltarkLkA7CvrkMnEOXpEY4QpekRhjoK0BmfS3Jy+dse22SrctZl5TkXUnuTPLtJLcl+d1DtP14klcfzvr0eN5TdAWoqkryJuBzSbYz+904fwtctJjfm2RVVT2yFDXqyJPkxcArgedX1S+SnAocs4S/3/65xByhrxBVdQfwr8A7gfcCn6iq7yXZmOQb3ejow0meBJBkKsnN3ejpPY/+niS7k7w7ydeBVyX50yR3JflWkk8uyx+nJ6rVwP1V9QuAqrq/qu5N8p4kNyW5o+uHB9wb4WBtkvSS/F2SfwfeleS/kxzdPXdikl2Prmt4BvrKcjnwR8DLgb9P8hzgVcDvVdU6Zv9HdWnXdlN34cY5wIVJnjXn9+yrqvOq6nPAO4B1VXUO8JbD9YeoCV8Gnp7kv7rBxEu67f9UVS+squcAxzE7it/fodqcVFUvqarLgR5wcbf9UuDzVfXwSP6aI4CBvoJU1T7gKuBfulHRS4EXAjcnuQ14CfBbXfPXJbkVuBU4G5gb6FfNWb4T+GSS1wP+Q9HAqmoGeAGzdxz7EXBVkj8G1ie5McntwPnAs+fZ/VBt5vbPjwBv7JbfCHxsaf+KI4tz6CvP/3U/MHubv49W1bvnNkiyFngbcG5VPdhNpRw7p8m+Oct/wOwLwQbgr5M8p6p+NbLq1ZSur/SAXhfOfwL8DjBeVT9M8jc8vu+R5Fjgw4do8+v+WVVfT7KmG/0f1U09aoEcoa9sXwFe270ZRZKnJfkN4ETgIeCnSVYzG9oHSHIUcGZVfRX4C+A04MmHpXI94SU5qxs8PGod8N1u+f4kTwHm+1TLsQO0mesTwGdwdL5ojtBXsKq6PcnlwFe6N0MfBt4E3AzcBdwB3AN8/SC/YhXw6SQnMPvifUVVPTT6ytWIpwAfTHIS8AhwN7PTLw8CtwO7mL0V5eN0/2v850O12c+ngPcxG+paBK8UlbSsus+ub6iqNyx3LU90jtAlLZskH2T2U12vWO5aWuAIXZIa4ZuiktQIA12SGmGgS1IjDHRJaoSBLkmNMNAlqRH/D8Ijrik/WW5DAAAAAElFTkSuQmCC\n",
      "text/plain": [
       "<Figure size 432x288 with 1 Axes>"
      ]
     },
     "metadata": {
      "needs_background": "light"
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "employee.boxplot()\n",
    "plt.show()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Years      2.0\n",
       "Salary    35.0\n",
       "Name: 0.25, dtype: float64"
      ]
     },
     "execution_count": 29,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.quantile(0.25)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Years      7.0\n",
       "Salary    60.0\n",
       "Name: 0.75, dtype: float64"
      ]
     },
     "execution_count": 30,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.quantile(0.75)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "`Comments`: \n",
    "\n",
    "For column *years*, the first quartile is 2, which means that 25% of the samples have a value lower than 2 years. The third quartile is 7, which means that 75% of the samples have a value lower than 7. \n",
    "\n",
    "For column *salary*, the first quartile is 35, which means that 25% of the samples have a value lower than 35 and the third quartile is 60, which means that 75% of the samples have a value lower than 60."
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Is the mean salary per gender different?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Gender\n",
       "F    47.5\n",
       "M    50.0\n",
       "Name: Salary, dtype: float64"
      ]
     },
     "execution_count": 31,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.groupby('Gender').mean()['Salary']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Find the minimum, mean and the maximum of all numeric columns for each Department.\n",
    "\n",
    "Hint: Use functions from Data Manipulation lesson"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Department</th>\n",
       "      <th></th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>HR</th>\n",
       "      <td>2</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>IT</th>\n",
       "      <td>1</td>\n",
       "      <td>30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Sales</th>\n",
       "      <td>2</td>\n",
       "      <td>55</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "            Years  Salary\n",
       "Department               \n",
       "HR              2      30\n",
       "IT              1      30\n",
       "Sales           2      55"
      ]
     },
     "execution_count": 32,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.groupby('Department').min().select_dtypes(include=['number'])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Department</th>\n",
       "      <th></th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>HR</th>\n",
       "      <td>4.666667</td>\n",
       "      <td>45.00</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>IT</th>\n",
       "      <td>4.500000</td>\n",
       "      <td>48.75</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Sales</th>\n",
       "      <td>2.500000</td>\n",
       "      <td>55.00</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "               Years  Salary\n",
       "Department                  \n",
       "HR          4.666667   45.00\n",
       "IT          4.500000   48.75\n",
       "Sales       2.500000   55.00"
      ]
     },
     "execution_count": 33,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.groupby('Department').mean().select_dtypes(include=['number'])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Years</th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Department</th>\n",
       "      <th></th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>HR</th>\n",
       "      <td>8</td>\n",
       "      <td>70</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>IT</th>\n",
       "      <td>8</td>\n",
       "      <td>70</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Sales</th>\n",
       "      <td>3</td>\n",
       "      <td>55</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "            Years  Salary\n",
       "Department               \n",
       "HR              8      70\n",
       "IT              8      70\n",
       "Sales           3      55"
      ]
     },
     "execution_count": 34,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "employee.groupby('Department').max().select_dtypes(include=['number'])"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Bonus Question\n",
    "\n",
    "#### For each department, compute the difference between the maximal salary and the minimal salary.\n",
    "\n",
    "Hint: try using `agg` or `apply` and `lambda`."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Department\n",
       "HR       40\n",
       "IT       40\n",
       "Sales     0\n",
       "dtype: int64"
      ]
     },
     "execution_count": 35,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Method 1\n",
    "employee.groupby('Department').apply(lambda row: row['Salary'].max() - row['Salary'].min())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>Salary</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Department</th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>HR</th>\n",
       "      <td>40</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>IT</th>\n",
       "      <td>40</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>Sales</th>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "            Salary\n",
       "Department        \n",
       "HR              40\n",
       "IT              40\n",
       "Sales            0"
      ]
     },
     "execution_count": 36,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Method 2\n",
    "employee.groupby('Department').agg({'Salary' : lambda department: department.max() - department.min()})"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": true
   },
   "source": [
    "# Challenge 3"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Open the Orders.csv dataset. Name your dataset orders."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>536365</td>\n",
       "      <td>85123A</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>8</td>\n",
       "      <td>white hanging heart t-light holder</td>\n",
       "      <td>6</td>\n",
       "      <td>2010-12-01 08:26:00</td>\n",
       "      <td>2.55</td>\n",
       "      <td>17850</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>15.30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>536365</td>\n",
       "      <td>71053</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>8</td>\n",
       "      <td>white metal lantern</td>\n",
       "      <td>6</td>\n",
       "      <td>2010-12-01 08:26:00</td>\n",
       "      <td>3.39</td>\n",
       "      <td>17850</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>20.34</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>536365</td>\n",
       "      <td>84406B</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>8</td>\n",
       "      <td>cream cupid hearts coat hanger</td>\n",
       "      <td>8</td>\n",
       "      <td>2010-12-01 08:26:00</td>\n",
       "      <td>2.75</td>\n",
       "      <td>17850</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>22.00</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>536365</td>\n",
       "      <td>84029G</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>8</td>\n",
       "      <td>knitted union flag hot water bottle</td>\n",
       "      <td>6</td>\n",
       "      <td>2010-12-01 08:26:00</td>\n",
       "      <td>3.39</td>\n",
       "      <td>17850</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>20.34</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>536365</td>\n",
       "      <td>84029E</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>8</td>\n",
       "      <td>red woolly hottie white heart.</td>\n",
       "      <td>6</td>\n",
       "      <td>2010-12-01 08:26:00</td>\n",
       "      <td>3.39</td>\n",
       "      <td>17850</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>20.34</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "   InvoiceNo StockCode  year  month  day  hour  \\\n",
       "0     536365    85123A  2010     12    3     8   \n",
       "1     536365     71053  2010     12    3     8   \n",
       "2     536365    84406B  2010     12    3     8   \n",
       "3     536365    84029G  2010     12    3     8   \n",
       "4     536365    84029E  2010     12    3     8   \n",
       "\n",
       "                           Description  Quantity          InvoiceDate  \\\n",
       "0   white hanging heart t-light holder         6  2010-12-01 08:26:00   \n",
       "1                  white metal lantern         6  2010-12-01 08:26:00   \n",
       "2       cream cupid hearts coat hanger         8  2010-12-01 08:26:00   \n",
       "3  knitted union flag hot water bottle         6  2010-12-01 08:26:00   \n",
       "4       red woolly hottie white heart.         6  2010-12-01 08:26:00   \n",
       "\n",
       "   UnitPrice  CustomerID         Country  amount_spent  \n",
       "0       2.55       17850  United Kingdom         15.30  \n",
       "1       3.39       17850  United Kingdom         20.34  \n",
       "2       2.75       17850  United Kingdom         22.00  \n",
       "3       3.39       17850  United Kingdom         20.34  \n",
       "4       3.39       17850  United Kingdom         20.34  "
      ]
     },
     "execution_count": 37,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders = pd.read_csv('data/Orders.csv', index_col=0);\n",
    "orders.head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Explore your dataset by looking at the data types and the summary statistics. Comment your results."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "InvoiceNo         int64\n",
       "StockCode        object\n",
       "year              int64\n",
       "month             int64\n",
       "day               int64\n",
       "hour              int64\n",
       "Description      object\n",
       "Quantity          int64\n",
       "InvoiceDate      object\n",
       "UnitPrice       float64\n",
       "CustomerID        int64\n",
       "Country          object\n",
       "amount_spent    float64\n",
       "dtype: object"
      ]
     },
     "execution_count": 38,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders.dtypes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>count</th>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "      <td>397924.000000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>mean</th>\n",
       "      <td>560617.126645</td>\n",
       "      <td>2010.934259</td>\n",
       "      <td>7.612537</td>\n",
       "      <td>3.614555</td>\n",
       "      <td>12.728247</td>\n",
       "      <td>13.021823</td>\n",
       "      <td>3.116174</td>\n",
       "      <td>15294.315171</td>\n",
       "      <td>22.394749</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>std</th>\n",
       "      <td>13106.167695</td>\n",
       "      <td>0.247829</td>\n",
       "      <td>3.416527</td>\n",
       "      <td>1.928274</td>\n",
       "      <td>2.273535</td>\n",
       "      <td>180.420210</td>\n",
       "      <td>22.096788</td>\n",
       "      <td>1713.169877</td>\n",
       "      <td>309.055588</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>min</th>\n",
       "      <td>536365.000000</td>\n",
       "      <td>2010.000000</td>\n",
       "      <td>1.000000</td>\n",
       "      <td>1.000000</td>\n",
       "      <td>6.000000</td>\n",
       "      <td>1.000000</td>\n",
       "      <td>0.000000</td>\n",
       "      <td>12346.000000</td>\n",
       "      <td>0.000000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>25%</th>\n",
       "      <td>549234.000000</td>\n",
       "      <td>2011.000000</td>\n",
       "      <td>5.000000</td>\n",
       "      <td>2.000000</td>\n",
       "      <td>11.000000</td>\n",
       "      <td>2.000000</td>\n",
       "      <td>1.250000</td>\n",
       "      <td>13969.000000</td>\n",
       "      <td>4.680000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>50%</th>\n",
       "      <td>561893.000000</td>\n",
       "      <td>2011.000000</td>\n",
       "      <td>8.000000</td>\n",
       "      <td>3.000000</td>\n",
       "      <td>13.000000</td>\n",
       "      <td>6.000000</td>\n",
       "      <td>1.950000</td>\n",
       "      <td>15159.000000</td>\n",
       "      <td>11.800000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>75%</th>\n",
       "      <td>572090.000000</td>\n",
       "      <td>2011.000000</td>\n",
       "      <td>11.000000</td>\n",
       "      <td>5.000000</td>\n",
       "      <td>14.000000</td>\n",
       "      <td>12.000000</td>\n",
       "      <td>3.750000</td>\n",
       "      <td>16795.000000</td>\n",
       "      <td>19.800000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>max</th>\n",
       "      <td>581587.000000</td>\n",
       "      <td>2011.000000</td>\n",
       "      <td>12.000000</td>\n",
       "      <td>7.000000</td>\n",
       "      <td>20.000000</td>\n",
       "      <td>80995.000000</td>\n",
       "      <td>8142.750000</td>\n",
       "      <td>18287.000000</td>\n",
       "      <td>168469.600000</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "           InvoiceNo           year          month            day  \\\n",
       "count  397924.000000  397924.000000  397924.000000  397924.000000   \n",
       "mean   560617.126645    2010.934259       7.612537       3.614555   \n",
       "std     13106.167695       0.247829       3.416527       1.928274   \n",
       "min    536365.000000    2010.000000       1.000000       1.000000   \n",
       "25%    549234.000000    2011.000000       5.000000       2.000000   \n",
       "50%    561893.000000    2011.000000       8.000000       3.000000   \n",
       "75%    572090.000000    2011.000000      11.000000       5.000000   \n",
       "max    581587.000000    2011.000000      12.000000       7.000000   \n",
       "\n",
       "                hour       Quantity      UnitPrice     CustomerID  \\\n",
       "count  397924.000000  397924.000000  397924.000000  397924.000000   \n",
       "mean       12.728247      13.021823       3.116174   15294.315171   \n",
       "std         2.273535     180.420210      22.096788    1713.169877   \n",
       "min         6.000000       1.000000       0.000000   12346.000000   \n",
       "25%        11.000000       2.000000       1.250000   13969.000000   \n",
       "50%        13.000000       6.000000       1.950000   15159.000000   \n",
       "75%        14.000000      12.000000       3.750000   16795.000000   \n",
       "max        20.000000   80995.000000    8142.750000   18287.000000   \n",
       "\n",
       "        amount_spent  \n",
       "count  397924.000000  \n",
       "mean       22.394749  \n",
       "std       309.055588  \n",
       "min         0.000000  \n",
       "25%         4.680000  \n",
       "50%        11.800000  \n",
       "75%        19.800000  \n",
       "max    168469.600000  "
      ]
     },
     "execution_count": 39,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders.describe()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "`Comments`: \n",
    "\n",
    "There are three different types of data values in the dataset: *strings*, *integers* and *floats*. Some of the data types could be transformed to more appropriate data types, such as *InvoiceDate*, *day*, *month*, *year* and *hour*, which could be transformed into a single *datetime* column. Other columns such as *InvoiceNo* and *CustomerID* could be transformed to *object* types, as we won't perform any analysis on *id*s. So, there's plenty of work in data cleaning. \n",
    "\n",
    "We can also see that a summary of the main numeric columns: *quantity*, *unitPrice* and *amount_spent*. For example, the mean amount spent in orders is 22,39, the minimum is 0, the maximum is 168.469,6 and 50% of the quantities ordered are lower or equal than 6 units.  "
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "####  What is the average purchase price?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "22.39474850474768"
      ]
     },
     "execution_count": 40,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders['amount_spent'].mean()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What were the highest and lowest purchase prices? "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "168469.6"
      ]
     },
     "execution_count": 41,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders['amount_spent'].max()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0.0"
      ]
     },
     "execution_count": 42,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders['amount_spent'].min()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select all the customers we have in Spain."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0    12557\n",
       "1    17097\n",
       "2    12540\n",
       "3    12551\n",
       "4    12484\n",
       "dtype: int64"
      ]
     },
     "execution_count": 43,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "spanish_customers = pd.Series(orders[orders['Country'] == 'Spain']['CustomerID'].unique());\n",
    "spanish_customers.head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### How many customers do we have in Spain?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "30"
      ]
     },
     "execution_count": 44,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "len(spanish_customers)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select all the customers who have bought more than 50 items ?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "metadata": {},
   "outputs": [],
   "source": [
    "customers_total_quantity = orders.groupby('CustomerID').sum();"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0    12346\n",
       "1    12347\n",
       "2    12348\n",
       "3    12349\n",
       "4    12350\n",
       "Name: CustomerID, dtype: int64"
      ]
     },
     "execution_count": 46,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "customers_more_50 = pd.Series(customers_total_quantity[customers_total_quantity['Quantity'] > 50].index);\n",
    "customers_more_50.head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select orders from Spain that are above 50 items."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>6421</th>\n",
       "      <td>536944</td>\n",
       "      <td>22383</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>5</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag suki  design</td>\n",
       "      <td>70</td>\n",
       "      <td>2010-12-03 12:20:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>12557</td>\n",
       "      <td>Spain</td>\n",
       "      <td>115.5</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6422</th>\n",
       "      <td>536944</td>\n",
       "      <td>22384</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>5</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag pink polkadot</td>\n",
       "      <td>100</td>\n",
       "      <td>2010-12-03 12:20:00</td>\n",
       "      <td>1.45</td>\n",
       "      <td>12557</td>\n",
       "      <td>Spain</td>\n",
       "      <td>145.0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6423</th>\n",
       "      <td>536944</td>\n",
       "      <td>20727</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>5</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag  black skull.</td>\n",
       "      <td>60</td>\n",
       "      <td>2010-12-03 12:20:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>12557</td>\n",
       "      <td>Spain</td>\n",
       "      <td>99.0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6424</th>\n",
       "      <td>536944</td>\n",
       "      <td>20725</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>5</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag red retrospot</td>\n",
       "      <td>70</td>\n",
       "      <td>2010-12-03 12:20:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>12557</td>\n",
       "      <td>Spain</td>\n",
       "      <td>115.5</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6425</th>\n",
       "      <td>536944</td>\n",
       "      <td>20728</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>5</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag cars blue</td>\n",
       "      <td>100</td>\n",
       "      <td>2010-12-03 12:20:00</td>\n",
       "      <td>1.45</td>\n",
       "      <td>12557</td>\n",
       "      <td>Spain</td>\n",
       "      <td>145.0</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "      InvoiceNo StockCode  year  month  day  hour              Description  \\\n",
       "6421     536944     22383  2010     12    5    12  lunch bag suki  design    \n",
       "6422     536944     22384  2010     12    5    12  lunch bag pink polkadot   \n",
       "6423     536944     20727  2010     12    5    12  lunch bag  black skull.   \n",
       "6424     536944     20725  2010     12    5    12  lunch bag red retrospot   \n",
       "6425     536944     20728  2010     12    5    12      lunch bag cars blue   \n",
       "\n",
       "      Quantity          InvoiceDate  UnitPrice  CustomerID Country  \\\n",
       "6421        70  2010-12-03 12:20:00       1.65       12557   Spain   \n",
       "6422       100  2010-12-03 12:20:00       1.45       12557   Spain   \n",
       "6423        60  2010-12-03 12:20:00       1.65       12557   Spain   \n",
       "6424        70  2010-12-03 12:20:00       1.65       12557   Spain   \n",
       "6425       100  2010-12-03 12:20:00       1.45       12557   Spain   \n",
       "\n",
       "      amount_spent  \n",
       "6421         115.5  \n",
       "6422         145.0  \n",
       "6423          99.0  \n",
       "6424         115.5  \n",
       "6425         145.0  "
      ]
     },
     "execution_count": 47,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[(orders['Country'] == 'Spain') & (orders['Quantity'] > 50)].head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select all free orders."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>9302</th>\n",
       "      <td>537197</td>\n",
       "      <td>22841</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>7</td>\n",
       "      <td>14</td>\n",
       "      <td>round cake tin vintage green</td>\n",
       "      <td>1</td>\n",
       "      <td>2010-12-05 14:02:00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>12647</td>\n",
       "      <td>Germany</td>\n",
       "      <td>0.0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>33576</th>\n",
       "      <td>539263</td>\n",
       "      <td>22580</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>4</td>\n",
       "      <td>14</td>\n",
       "      <td>advent calendar gingham sack</td>\n",
       "      <td>4</td>\n",
       "      <td>2010-12-16 14:36:00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>16560</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>0.0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>40089</th>\n",
       "      <td>539722</td>\n",
       "      <td>22423</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>2</td>\n",
       "      <td>13</td>\n",
       "      <td>regency cakestand 3 tier</td>\n",
       "      <td>10</td>\n",
       "      <td>2010-12-21 13:45:00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>14911</td>\n",
       "      <td>EIRE</td>\n",
       "      <td>0.0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>47068</th>\n",
       "      <td>540372</td>\n",
       "      <td>22090</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>4</td>\n",
       "      <td>16</td>\n",
       "      <td>paper bunting retrospot</td>\n",
       "      <td>24</td>\n",
       "      <td>2011-01-06 16:41:00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>13081</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>0.0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>47070</th>\n",
       "      <td>540372</td>\n",
       "      <td>22553</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>4</td>\n",
       "      <td>16</td>\n",
       "      <td>plasters in tin skulls</td>\n",
       "      <td>24</td>\n",
       "      <td>2011-01-06 16:41:00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>13081</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>0.0</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "       InvoiceNo StockCode  year  month  day  hour  \\\n",
       "9302      537197     22841  2010     12    7    14   \n",
       "33576     539263     22580  2010     12    4    14   \n",
       "40089     539722     22423  2010     12    2    13   \n",
       "47068     540372     22090  2011      1    4    16   \n",
       "47070     540372     22553  2011      1    4    16   \n",
       "\n",
       "                        Description  Quantity          InvoiceDate  UnitPrice  \\\n",
       "9302   round cake tin vintage green         1  2010-12-05 14:02:00        0.0   \n",
       "33576  advent calendar gingham sack         4  2010-12-16 14:36:00        0.0   \n",
       "40089      regency cakestand 3 tier        10  2010-12-21 13:45:00        0.0   \n",
       "47068       paper bunting retrospot        24  2011-01-06 16:41:00        0.0   \n",
       "47070        plasters in tin skulls        24  2011-01-06 16:41:00        0.0   \n",
       "\n",
       "       CustomerID         Country  amount_spent  \n",
       "9302        12647         Germany           0.0  \n",
       "33576       16560  United Kingdom           0.0  \n",
       "40089       14911            EIRE           0.0  \n",
       "47068       13081  United Kingdom           0.0  \n",
       "47070       13081  United Kingdom           0.0  "
      ]
     },
     "execution_count": 48,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[orders['amount_spent'] == 0].head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select all orders that are 'lunch bag'.\n",
    "Hint: Use string functions."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>93</th>\n",
       "      <td>536378</td>\n",
       "      <td>20725</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>9</td>\n",
       "      <td>lunch bag red retrospot</td>\n",
       "      <td>10</td>\n",
       "      <td>2010-12-01 09:37:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>14688</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>16.50</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>174</th>\n",
       "      <td>536385</td>\n",
       "      <td>22662</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>9</td>\n",
       "      <td>lunch bag dolly girl design</td>\n",
       "      <td>10</td>\n",
       "      <td>2010-12-01 09:56:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>17420</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>16.50</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>363</th>\n",
       "      <td>536401</td>\n",
       "      <td>22662</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>11</td>\n",
       "      <td>lunch bag dolly girl design</td>\n",
       "      <td>1</td>\n",
       "      <td>2010-12-01 11:21:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>15862</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>1.65</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>368</th>\n",
       "      <td>536401</td>\n",
       "      <td>20725</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>11</td>\n",
       "      <td>lunch bag red retrospot</td>\n",
       "      <td>1</td>\n",
       "      <td>2010-12-01 11:21:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>15862</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>1.65</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>369</th>\n",
       "      <td>536401</td>\n",
       "      <td>22382</td>\n",
       "      <td>2010</td>\n",
       "      <td>12</td>\n",
       "      <td>3</td>\n",
       "      <td>11</td>\n",
       "      <td>lunch bag spaceboy design</td>\n",
       "      <td>2</td>\n",
       "      <td>2010-12-01 11:21:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>15862</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>3.30</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "     InvoiceNo StockCode  year  month  day  hour                  Description  \\\n",
       "93      536378     20725  2010     12    3     9      lunch bag red retrospot   \n",
       "174     536385     22662  2010     12    3     9  lunch bag dolly girl design   \n",
       "363     536401     22662  2010     12    3    11  lunch bag dolly girl design   \n",
       "368     536401     20725  2010     12    3    11      lunch bag red retrospot   \n",
       "369     536401     22382  2010     12    3    11   lunch bag spaceboy design    \n",
       "\n",
       "     Quantity          InvoiceDate  UnitPrice  CustomerID         Country  \\\n",
       "93         10  2010-12-01 09:37:00       1.65       14688  United Kingdom   \n",
       "174        10  2010-12-01 09:56:00       1.65       17420  United Kingdom   \n",
       "363         1  2010-12-01 11:21:00       1.65       15862  United Kingdom   \n",
       "368         1  2010-12-01 11:21:00       1.65       15862  United Kingdom   \n",
       "369         2  2010-12-01 11:21:00       1.65       15862  United Kingdom   \n",
       "\n",
       "     amount_spent  \n",
       "93          16.50  \n",
       "174         16.50  \n",
       "363          1.65  \n",
       "368          1.65  \n",
       "369          3.30  "
      ]
     },
     "execution_count": 49,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[orders['Description'].str.startswith('lunch bag')].head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select all orders that are made in 2011 and are 'lunch bag'."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>42678</th>\n",
       "      <td>540015</td>\n",
       "      <td>20725</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>2</td>\n",
       "      <td>11</td>\n",
       "      <td>lunch bag red retrospot</td>\n",
       "      <td>10</td>\n",
       "      <td>2011-01-04 11:40:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>13319</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>16.50</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>42679</th>\n",
       "      <td>540015</td>\n",
       "      <td>20726</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>2</td>\n",
       "      <td>11</td>\n",
       "      <td>lunch bag woodland</td>\n",
       "      <td>10</td>\n",
       "      <td>2011-01-04 11:40:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>13319</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>16.50</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>42851</th>\n",
       "      <td>540023</td>\n",
       "      <td>22382</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>2</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag spaceboy design</td>\n",
       "      <td>2</td>\n",
       "      <td>2011-01-04 12:58:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>15039</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>3.30</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>42852</th>\n",
       "      <td>540023</td>\n",
       "      <td>20726</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>2</td>\n",
       "      <td>12</td>\n",
       "      <td>lunch bag woodland</td>\n",
       "      <td>1</td>\n",
       "      <td>2011-01-04 12:58:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>15039</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>1.65</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>43616</th>\n",
       "      <td>540098</td>\n",
       "      <td>22384</td>\n",
       "      <td>2011</td>\n",
       "      <td>1</td>\n",
       "      <td>2</td>\n",
       "      <td>15</td>\n",
       "      <td>lunch bag pink polkadot</td>\n",
       "      <td>1</td>\n",
       "      <td>2011-01-04 15:50:00</td>\n",
       "      <td>1.65</td>\n",
       "      <td>16241</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>1.65</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "       InvoiceNo StockCode  year  month  day  hour  \\\n",
       "42678     540015     20725  2011      1    2    11   \n",
       "42679     540015     20726  2011      1    2    11   \n",
       "42851     540023     22382  2011      1    2    12   \n",
       "42852     540023     20726  2011      1    2    12   \n",
       "43616     540098     22384  2011      1    2    15   \n",
       "\n",
       "                      Description  Quantity          InvoiceDate  UnitPrice  \\\n",
       "42678     lunch bag red retrospot        10  2011-01-04 11:40:00       1.65   \n",
       "42679          lunch bag woodland        10  2011-01-04 11:40:00       1.65   \n",
       "42851  lunch bag spaceboy design          2  2011-01-04 12:58:00       1.65   \n",
       "42852          lunch bag woodland         1  2011-01-04 12:58:00       1.65   \n",
       "43616     lunch bag pink polkadot         1  2011-01-04 15:50:00       1.65   \n",
       "\n",
       "       CustomerID         Country  amount_spent  \n",
       "42678       13319  United Kingdom         16.50  \n",
       "42679       13319  United Kingdom         16.50  \n",
       "42851       15039  United Kingdom          3.30  \n",
       "42852       15039  United Kingdom          1.65  \n",
       "43616       16241  United Kingdom          1.65  "
      ]
     },
     "execution_count": 50,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[(orders['Description'].str.startswith('lunch bag')) & (orders['year'] == 2011)].head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Show the frequency distribution of the amount spent in Spain."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "image/png": "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\n",
      "text/plain": [
       "<Figure size 432x288 with 1 Axes>"
      ]
     },
     "metadata": {
      "needs_background": "light"
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "orders[orders['Country'] == 'Spain']['amount_spent'].hist(bins=50)\n",
    "plt.show()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select all orders made in the month of August."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>285421</th>\n",
       "      <td>561904</td>\n",
       "      <td>22075</td>\n",
       "      <td>2011</td>\n",
       "      <td>8</td>\n",
       "      <td>1</td>\n",
       "      <td>8</td>\n",
       "      <td>6 ribbons elegant christmas</td>\n",
       "      <td>96</td>\n",
       "      <td>2011-08-01 08:30:00</td>\n",
       "      <td>1.45</td>\n",
       "      <td>17941</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>139.20</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>285422</th>\n",
       "      <td>561904</td>\n",
       "      <td>85049E</td>\n",
       "      <td>2011</td>\n",
       "      <td>8</td>\n",
       "      <td>1</td>\n",
       "      <td>8</td>\n",
       "      <td>scandinavian reds ribbons</td>\n",
       "      <td>156</td>\n",
       "      <td>2011-08-01 08:30:00</td>\n",
       "      <td>1.06</td>\n",
       "      <td>17941</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>165.36</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>285423</th>\n",
       "      <td>561905</td>\n",
       "      <td>21385</td>\n",
       "      <td>2011</td>\n",
       "      <td>8</td>\n",
       "      <td>1</td>\n",
       "      <td>9</td>\n",
       "      <td>ivory hanging decoration  heart</td>\n",
       "      <td>24</td>\n",
       "      <td>2011-08-01 09:31:00</td>\n",
       "      <td>0.85</td>\n",
       "      <td>14947</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>20.40</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>285424</th>\n",
       "      <td>561905</td>\n",
       "      <td>84970L</td>\n",
       "      <td>2011</td>\n",
       "      <td>8</td>\n",
       "      <td>1</td>\n",
       "      <td>9</td>\n",
       "      <td>single heart zinc t-light holder</td>\n",
       "      <td>12</td>\n",
       "      <td>2011-08-01 09:31:00</td>\n",
       "      <td>0.95</td>\n",
       "      <td>14947</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>11.40</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>285425</th>\n",
       "      <td>561905</td>\n",
       "      <td>84970S</td>\n",
       "      <td>2011</td>\n",
       "      <td>8</td>\n",
       "      <td>1</td>\n",
       "      <td>9</td>\n",
       "      <td>hanging heart zinc t-light holder</td>\n",
       "      <td>12</td>\n",
       "      <td>2011-08-01 09:31:00</td>\n",
       "      <td>0.85</td>\n",
       "      <td>14947</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>10.20</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "        InvoiceNo StockCode  year  month  day  hour  \\\n",
       "285421     561904     22075  2011      8    1     8   \n",
       "285422     561904    85049E  2011      8    1     8   \n",
       "285423     561905     21385  2011      8    1     9   \n",
       "285424     561905    84970L  2011      8    1     9   \n",
       "285425     561905    84970S  2011      8    1     9   \n",
       "\n",
       "                              Description  Quantity          InvoiceDate  \\\n",
       "285421       6 ribbons elegant christmas         96  2011-08-01 08:30:00   \n",
       "285422          scandinavian reds ribbons       156  2011-08-01 08:30:00   \n",
       "285423    ivory hanging decoration  heart        24  2011-08-01 09:31:00   \n",
       "285424   single heart zinc t-light holder        12  2011-08-01 09:31:00   \n",
       "285425  hanging heart zinc t-light holder        12  2011-08-01 09:31:00   \n",
       "\n",
       "        UnitPrice  CustomerID         Country  amount_spent  \n",
       "285421       1.45       17941  United Kingdom        139.20  \n",
       "285422       1.06       17941  United Kingdom        165.36  \n",
       "285423       0.85       14947  United Kingdom         20.40  \n",
       "285424       0.95       14947  United Kingdom         11.40  \n",
       "285425       0.85       14947  United Kingdom         10.20  "
      ]
     },
     "execution_count": 52,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[orders['month'] == 8].head()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### Select how many orders are made by countries in the month of August.\n",
    "Hint: Use value_counts()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "United Kingdom     23105\n",
       "Germany              795\n",
       "EIRE                 593\n",
       "France               569\n",
       "Netherlands          280\n",
       "Switzerland          267\n",
       "Spain                252\n",
       "Belgium              194\n",
       "Israel               171\n",
       "Channel Islands      140\n",
       "Australia            107\n",
       "Italy                 95\n",
       "Austria               88\n",
       "Norway                77\n",
       "Finland               61\n",
       "Malta                 55\n",
       "Portugal              41\n",
       "Sweden                40\n",
       "Unspecified           23\n",
       "Iceland               22\n",
       "Poland                17\n",
       "Denmark               16\n",
       "Canada                 5\n",
       "Name: Country, dtype: int64"
      ]
     },
     "execution_count": 53,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[orders['month'] == 8]['Country'].value_counts()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What's the  average amount of money spent by country."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 54,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "Country\n",
       "Australia               116.895620\n",
       "Austria                  25.624824\n",
       "Bahrain                  32.258824\n",
       "Belgium                  20.283772\n",
       "Brazil                   35.737500\n",
       "Canada                   24.280662\n",
       "Channel Islands          27.340160\n",
       "Cyprus                   22.134169\n",
       "Czech Republic           33.069600\n",
       "Denmark                  49.882474\n",
       "EIRE                     36.687745\n",
       "European Community       21.670833\n",
       "Finland                  32.913985\n",
       "France                   25.056827\n",
       "Germany                  25.311562\n",
       "Greece                   32.831172\n",
       "Iceland                  23.681319\n",
       "Israel                   29.119718\n",
       "Italy                    23.064960\n",
       "Japan                   116.561900\n",
       "Lebanon                  37.641778\n",
       "Lithuania                47.458857\n",
       "Malta                    24.335625\n",
       "Netherlands             120.798282\n",
       "Norway                   33.736418\n",
       "Poland                   22.226212\n",
       "Portugal                 22.872702\n",
       "RSA                      17.281207\n",
       "Saudi Arabia             16.213333\n",
       "Singapore                95.852658\n",
       "Spain                    24.779521\n",
       "Sweden                   85.096075\n",
       "Switzerland              30.642752\n",
       "USA                      20.002179\n",
       "United Arab Emirates     27.974706\n",
       "United Kingdom           20.625073\n",
       "Unspecified              10.930615\n",
       "Name: amount_spent, dtype: float64"
      ]
     },
     "execution_count": 54,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders.groupby('Country').mean()['amount_spent']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What's the most expensive item?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>InvoiceNo</th>\n",
       "      <th>StockCode</th>\n",
       "      <th>year</th>\n",
       "      <th>month</th>\n",
       "      <th>day</th>\n",
       "      <th>hour</th>\n",
       "      <th>Description</th>\n",
       "      <th>Quantity</th>\n",
       "      <th>InvoiceDate</th>\n",
       "      <th>UnitPrice</th>\n",
       "      <th>CustomerID</th>\n",
       "      <th>Country</th>\n",
       "      <th>amount_spent</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>173382</th>\n",
       "      <td>551697</td>\n",
       "      <td>POST</td>\n",
       "      <td>2011</td>\n",
       "      <td>5</td>\n",
       "      <td>2</td>\n",
       "      <td>13</td>\n",
       "      <td>postage</td>\n",
       "      <td>1</td>\n",
       "      <td>2011-05-03 13:46:00</td>\n",
       "      <td>8142.75</td>\n",
       "      <td>16029</td>\n",
       "      <td>United Kingdom</td>\n",
       "      <td>8142.75</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "        InvoiceNo StockCode  year  month  day  hour Description  Quantity  \\\n",
       "173382     551697      POST  2011      5    2    13     postage         1   \n",
       "\n",
       "                InvoiceDate  UnitPrice  CustomerID         Country  \\\n",
       "173382  2011-05-03 13:46:00    8142.75       16029  United Kingdom   \n",
       "\n",
       "        amount_spent  \n",
       "173382       8142.75  "
      ]
     },
     "execution_count": 55,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders[orders['UnitPrice'] == orders['UnitPrice'].max()]"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "#### What was the average amount spent per year ?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "year\n",
       "2010    21.892733\n",
       "2011    22.430074\n",
       "Name: amount_spent, dtype: float64"
      ]
     },
     "execution_count": 56,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "orders.groupby('year').mean()['amount_spent']"
   ]
  }
 ],
 "metadata": {
  "anaconda-cloud": {},
  "kernelspec": {
   "display_name": "ironhack-3.7",
   "language": "python",
   "name": "ironhack-3.7"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 1
}