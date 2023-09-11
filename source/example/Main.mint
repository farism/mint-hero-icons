component Main {
  state icons = "HeroIcons"

  const ICONS =
    Map.fromArray(
      [
        {
          "HeroIcons", <div::size24>
            <HeroIconsDemo/>
          </div>
        },
        {
          "HeroIconsMini", <div::size20>
            <HeroIconsMiniDemo/>
          </div>
        },
        {
          "HeroIconsOutline", <div::size24>
            <HeroIconsOutlineDemo/>
          </div>
        }
      ])

  style example {
    svg {
      margin: 4px;
    }
  }

  style size24 {
    svg {
      width: 24px;
      height: 24px;
    }
  }

  style size20 {
    svg {
      width: 20px;
      height: 20px;
    }
  }

  fun render {
    <div::example>
      <button onClick={() { next { icons: "HeroIcons" } }}>
        "HeroIcons"
      </button>

      <button onClick={() { next { icons: "HeroIconsMini" } }}>
        "HeroIconsMini"
      </button>

      <button onClick={() { next { icons: "HeroIconsOutline" } }}>
        "HeroIconsOutline"
      </button>

      <div>
        <{ Map.getWithDefault(ICONS, icons, <></>) }>
      </div>
    </div>
  }
}
