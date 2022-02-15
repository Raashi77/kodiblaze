// routes
import Router from './routes';
// theme
import ThemeProvider from './theme';
import GlobalStyles from './theme/globalStyles';
// components
import Settings from './components/settings';
import RtlLayout from './components/RtlLayout';
import { ChartStyle } from './components/chart';
import ScrollToTop from './components/ScrollToTop';
import GoogleAnalytics from './components/GoogleAnalytics';
import { ProgressBarStyle } from './components/ProgressBar';
import NotistackProvider from './components/NotistackProvider';
import ThemeColorPresets from './components/ThemeColorPresets';
import ThemeLocalization from './components/ThemeLocalization';
import MotionLazyContainer from './components/animate/MotionLazyContainer';
// import 'bootstrap/dist/css/bootstrap.min.css';
// ----------------------------------------------------------------------

export default function App() {
  return (
    <ThemeProvider>
      <ThemeColorPresets>
        <ThemeLocalization>
          <RtlLayout>
            <NotistackProvider>
              <MotionLazyContainer>
                <GlobalStyles />
                <ProgressBarStyle />
                <ChartStyle />
                {/* <Settings /> */}
                <ScrollToTop />
                <GoogleAnalytics />
                <Router />
              </MotionLazyContainer>
            </NotistackProvider>
          </RtlLayout>
        </ThemeLocalization>
      </ThemeColorPresets>
    </ThemeProvider>
  );
}
