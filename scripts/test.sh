#!/bin/bash

export TPON=$(ps -ef | grep -v grep |grep "tick.q"|wc -l)

if [[ "$TPON">"0"  ]]
then
  echo "Tickerplant is running"
else
  echo "The tickerplant is NOT running"
fi

export RTQON=$(ps -ef | grep -v grep |grep "rTQ.q"|wc -l)

if [[ "$RTQON">"0"  ]]
then
  echo "The Trade-Quote RDB is running"
else
  echo "The Trade-Quote RDB is NOT running"
fi

export CEPON=$(ps -ef | grep -v grep |grep "cep.q"|wc -l)

if [[ "$CEPON">"0"  ]]
then
  echo "The CEP is running"
else
  echo "The CEP is NOT running"
fi

export FEEDON=$(ps -ef | grep -v grep |grep "feed.q"|wc -l)

if [[ "$FEEDON">"0"  ]]
then
  echo "The feedhandler is running"
else
  echo "The feedhandler is NOT running"
fi

export RAGGON=$(ps -ef | grep -v grep |grep "rAGG.q"|wc -l)

if [[ "$RAGGON">"0"  ]]
then
  echo "The Aggregation RDB is running"
else
  echo "The Aggregation RDB is NOT running"
fi
