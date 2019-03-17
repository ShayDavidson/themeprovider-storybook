import * as React from "react";
import { BackgroundHelper } from "./Background";
import { ThemesProvider } from "./ThemesProvider";
import { Theme } from "./types/Theme";

export const withThemesProvider = (themes: Theme[]) => (
  story: any,
): JSX.Element => {
  return (
    <ThemesProvider themes={themes}>
      <BackgroundHelper themes={themes}>{story()}</BackgroundHelper>
    </ThemesProvider>
  );
};
