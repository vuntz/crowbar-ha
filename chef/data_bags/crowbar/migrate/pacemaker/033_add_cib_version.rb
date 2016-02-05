def upgrade(ta, td, a, d)
  a["pacemaker"]["cib_syntax_version"] = ta["pacemaker"]["cib_syntax_version"]
  return a, d
end

def downgrade(ta, td, a, d)
  a["pacemaker"].delete("cib_syntax_version")
  return a, d
end
