local function slugify(s)
    return s:gsub("[%s+/]+", "-"):gsub("[^%w-]+", ""):lower()
end

return {
    Meta = function(m)
        m.slug = m.subtitle and slugify(pandoc.utils.stringify(m.subtitle))
        return m
    end,
}
