#!/bin/bash

# Simulate fetching Roblox animation IDs (mock API call)
fetch_animation_ids() {
    echo "Fetching animation IDs from mock Roblox API..."
    sleep 1  # Simulate delay
    
    # Mock data (in a real case, you'd use curl/wget to query an API)
    cat <<EOF
{
    "animations": [
        {
            "name": "Azure Run",
            "id": "123456789",
            "url": "https://www.roblox.com/library/123456789"
        },
        {
            "name": "Aiku Jump",
            "id": "987654321",
            "url": "https://www.roblox.com/library/987654321"
        },
        {
            "name": "Lact Walk",
            "id": "555555555",
            "url": "https://www.roblox.com/library/555555555"
        }
    ]
}
EOF
}

# Parse and display animation IDs
echo "Available Animation IDs:"
fetch_animation_ids | jq -r '.animations[] | "\(.name): \(.id)"'
