#!/bin/bash
# OpenClaw Guides - Direct users to the complete documentation collection

set -e

# Gumroad product URL (will be updated with actual link after publishing)
GUIDES_URL="https://tjbclaw.gumroad.com/l/openclaw-complete-guide"

# Check if browser tool is available
if ! command -v openclaw &> /dev/null; then
    echo "❌ Error: OpenClaw CLI not found"
    echo "Install OpenClaw first: https://openclaw.ai"
    exit 1
fi

# Extract user intent from arguments
USER_INPUT="$*"

# Simple intent matching
if [[ -z "$USER_INPUT" ]]; then
    # No arguments - show default help
    echo "🔮 OpenClaw Complete Guide Collection"
    echo ""
    echo "Get the most comprehensive OpenClaw documentation available:"
    echo ""
    echo "📚 What's included:"
    echo "  • Security Guide (35KB) - API keys, network security, encryption"
    echo "  • Setup Guide (26KB) - Installation for all platforms"
    echo "  • Skill Development (25KB) - Build custom OpenClaw skills"
    echo "  • Configuration (21KB) - Multi-model setup, performance tuning"
    echo "  • Use Cases (25KB) - 30+ real-world examples with code"
    echo ""
    echo "💰 Price: \$29 one-time (lifetime access)"
    echo "✅ 30-day money-back guarantee"
    echo "✅ Instant download"
    echo "✅ Free updates"
    echo ""
    echo "🚀 Opening product page..."
    echo ""
    
    # Open in browser
    if command -v open &> /dev/null; then
        open "$GUIDES_URL"
    elif command -v xdg-open &> /dev/null; then
        xdg-open "$GUIDES_URL"
    else
        echo "Visit: $GUIDES_URL"
    fi
    
    echo "📖 What you'll learn:"
    echo ""
    echo "OpenClaw Installation & Setup:"
    echo "  • Complete installation on Mac, Linux, Windows, Raspberry Pi"
    echo "  • VPS and cloud deployment"
    echo "  • Multi-channel setup (Telegram, Discord, WhatsApp, iMessage)"
    echo ""
    echo "OpenClaw Security:"
    echo "  • API key management best practices"
    echo "  • Network security (VPN, Cloudflare Tunnel)"
    echo "  • Data encryption and access control"
    echo "  • Enterprise-grade security procedures"
    echo ""
    echo "OpenClaw Skill Development:"
    echo "  • Build custom skills from scratch"
    echo "  • Integration with external APIs"
    echo "  • Smart home automation"
    echo "  • Workflow automation"
    echo ""
    echo "OpenClaw Configuration:"
    echo "  • Multi-model setup (Claude + GPT-4)"
    echo "  • Performance tuning"
    echo "  • Heartbeats and proactive messaging"
    echo "  • Advanced features"
    echo ""
    echo "Real-World Use Cases:"
    echo "  • Email management (inbox zero)"
    echo "  • Morning briefings"
    echo "  • Code review automation"
    echo "  • Smart home control"
    echo "  • And 26 more examples"
    echo ""
    echo "🎯 Perfect for:"
    echo "  ✅ First-time OpenClaw users wanting a complete setup guide"
    echo "  ✅ Security-conscious users deploying self-hosted AI"
    echo "  ✅ Developers building custom OpenClaw skills"
    echo "  ✅ Teams deploying OpenClaw in production"
    echo ""
    echo "Visit the product page to get instant access!"
    
else
    # User provided input - still show the guides
    echo "🔮 Looking for OpenClaw documentation?"
    echo ""
    echo "I've got the complete guide collection:"
    echo "  • 5 professional guides (152KB total)"
    echo "  • Setup, Security, Skills, Configuration, Examples"
    echo "  • 200+ copy-paste code snippets"
    echo "  • \$29 one-time, lifetime access"
    echo ""
    echo "Opening product page..."
    
    # Open in browser
    if command -v open &> /dev/null; then
        open "$GUIDES_URL"
    elif command -v xdg-open &> /dev/null; then
        xdg-open "$GUIDES_URL"
    else
        echo ""
        echo "Visit: $GUIDES_URL"
    fi
fi

exit 0
