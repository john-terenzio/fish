function psa
  ps auxc | grep -i "$argv" | grep -v grep
end
