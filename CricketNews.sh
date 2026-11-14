
#!/bin/sh

# Greeting
echo "Hello Rakesh"

# List of people
GreetPeople="Rakesh,Rohit,Mahesh,Bhanushali,Gautam,Om"

echo "People: $GreetPeople"

# Convert comma-separated names into individual names
echo "$GreetPeople" | tr ',' '\n' | while IFS= read -r name
do
    [ -z "$name" ] || echo "Hello $name"
done

# Cricket news placeholder
echo ""
echo "Fetching latest cricket news..."

# Wait
echo ""
echo "Sleeping for 120 seconds"
sleep 120

echo "Woke up now"
