// routes
import { PATH_DASHBOARD } from '../../../routes/paths';
// components
import SvgIconStyle from '../../../components/SvgIconStyle';
import DisplaySettingsIcon from '@mui/icons-material/DisplaySettings';
import SubjectIcon from '@mui/icons-material/Subject';
import DashboardIcon from '@mui/icons-material/Dashboard';
import GroupIcon from '@mui/icons-material/Group';
import TopicIcon from '@mui/icons-material/Topic';
import AccountTreeIcon from '@mui/icons-material/AccountTree';
import AttachMoneyIcon from '@mui/icons-material/AttachMoney';
import FilePresentIcon from '@mui/icons-material/FilePresent';
import ClassIcon from '@mui/icons-material/Class';
// ----------------------------------------------------------------------

const getIcon = (name) => <SvgIconStyle src={`/icons/${name}.svg`} sx={{ width: 1, height: 1 }} />;

const ICONS = {
  blog: getIcon('ic_blog'),
  cart: getIcon('ic_cart'),
  chat: getIcon('ic_chat'),
  mail: getIcon('ic_mail'),
  user: getIcon('ic_user'),
  kanban: getIcon('ic_kanban'),
  banking: getIcon('ic_banking'),
  calendar: getIcon('ic_calendar'),
  classes: <ClassIcon />,
  subjects: <SubjectIcon />,
  boards: <DashboardIcon />,
  users: <GroupIcon />,
  topics: <TopicIcon />,
  courses: <AccountTreeIcon />,
  cms: <DisplaySettingsIcon />,
  resources: <FilePresentIcon />,
  earnings: <AttachMoneyIcon />,
  analytics: getIcon('ic_analytics'),
  dashboard: getIcon('ic_dashboard'),
  booking: getIcon('ic_booking'),
};

const navConfig = [
  {
    subheader: 'general',
    items: [
      { title: 'app', path: PATH_DASHBOARD.general.app, icon: ICONS.dashboard },
      { title: 'blogs', path: PATH_DASHBOARD.blog.root, icon: ICONS.subjects },
      { title: 'product', path: PATH_DASHBOARD.product.listing, icon: ICONS.subjects },
    ],
  },
];

export default navConfig;
