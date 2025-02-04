Config.Theme = {
    currentTheme = "customTheme",
    themes = {
        {
            id = "customTheme",
            borderRadius = "4px",
            fontColor = "255, 255, 255", -- White font for better contrast
            fontColorHover = "255, 255, 255", -- White font when hovered
            fontColorSelected = "0, 0, 0", -- Black font when selected
            fontFamily = "Apercu Pro",
            primaryBackground = "11, 226, 202", -- Main background color
            primaryBackgroundSelected = "11, 226, 202", -- Slightly darker shade for selection
            secondaryBackground = "11, 226, 202", -- Darker shade for secondary background
            scaleOnHover = true,
            sectionFontWeight = "bold",
            smoothBackgroundTransition = true, -- Enable smooth transitions
            glowEffect = "11, 226, 202", -- Add glow using RGBA for transparency
            glowBlur = "15px", -- Specify the intensity of the glow
        },        
        {
            id = "default",
            borderRadius = "4px",
            fontColor = "255, 255, 255",
            fontColorHover = "255, 255, 255",
            fontColorSelected = "0, 0, 0",
            fontFamily = "Apercu Pro",
            primaryBackground = "2, 122, 242",
            primaryBackgroundSelected = "242, 2, 122",
            secondaryBackground = "242, 2, 122",
            scaleOnHover = true,
            sectionFontWeight = "bold",
            smoothBackgroundTransition = false
        },
        {
            id = "qb-core",
            borderRadius = "3vh",
            fontColor = "255, 255, 255",
            fontColorHover = "255, 255, 255",
            fontColorSelected = "255, 255, 255",
            fontFamily = "Poppins",
            primaryBackground = "220, 20, 60",
            primaryBackgroundSelected = "220, 20, 60",
            secondaryBackground = "23, 23, 23",
            scaleOnHover = true,
            sectionFontWeight = "bold",
            smoothBackgroundTransition = true
        },
        {
            id = "project-sloth",
            borderRadius = "6vh",
            fontColor = "255, 255, 255",
            fontColorHover = "255, 255, 255",
            fontColorSelected = "255, 255, 255",
            fontFamily = "Inter",
            primaryBackground = "2, 241, 181",
            primaryBackgroundSelected = "2, 241, 181",
            secondaryBackground = "27, 24, 69",
            scaleOnHover = true,
            sectionFontWeight = "bold",
            smoothBackgroundTransition = false
        },
        {
            id = "not-heavily-inspired",
            borderRadius = "0vh",
            fontColor = "255, 255, 255",
            fontColorHover = "255, 255, 255",
            fontColorSelected = "255, 255, 255",
            fontFamily = "Inter",
            primaryBackground = "18, 19, 27",
            primaryBackgroundSelected = "18, 19, 27",
            secondaryBackground = "18, 19, 27",
            scaleOnHover = true,
            sectionFontWeight = "bold",
            smoothBackgroundTransition = false
        }
    }
}
